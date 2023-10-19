#!/usr/bin/env python

# public modules -----------------------------------------------------------------------------------------------------------------------
import random
import subprocess

# private modules ----------------------------------------------------------------------------------------------------------------------
import memory

# files and directories ----------------------------------------------------------------------------------------------------------------
simulation_project = "SSRAM_to_hRAM"
log_file = "SSRAM_to_hRAM_log.txt"
vsim_log_file = "SSRAM_to_hRAM_vsim_log.txt"
input_file = "SSRAM_to_hRAM_stimuli.txt"
driver_status_file = "SSRAM_to_hRAM_driver_exitstatus.txt"
output_file = "SSRAM_to_hRAM_readvalues.txt"
expected_file = "SSRAM_to_hRAM_expected_values.txt"
simulation_file = "SSRAM_to_hRAM_simulation.do"
vsim_path = '~/intelFPGA/20.1/modelsim_ase/bin/vsim'

# constants ----------------------------------------------------------------------------------------------------------------------------
data_size = 16
address_size = 32
burst_size = 11
burstlen_decimal = 10
burstlen = format( burstlen_decimal, str( burst_size ) + 'b' ).replace( " ", "0" )
read_opcode = '0'
write_opcode = '1'
single_op = '0'
burst_op = '1'
memory_space = '0'
register_space = '1'
clock = "10 ns"
config0_addr = "00000000000000000000100000000000";
config_value_ON_variable_latency = "1000111111110111";
config0_value_DPD = "0000111111110111";
config0_value_ON_fixed_latency = "1000111111111111";

# environment preparation --------------------------------------------------------------------------------------------------------------
subprocess.run( "rm " + log_file, shell=True )
subprocess.run( "rm " + output_file, shell=True )
subprocess.run( "rm " + input_file, shell=True )
subprocess.run( "rm " + expected_file, shell=True )
subprocess.run( "rm " + driver_status_file, shell=True )

# log file opening ---------------------------------------------------------------------------------------------------------------------
try:
    log = open( log_file, "w" )
except OSError:
    print( "An error has been encontered while creating the log file, the simulation has been shut down" )
    raise

# information printing -----------------------------------------------------------------------------------------------------------------
print( "--------------------------------------------------------------" )
print( "INFO" )
print( "VSIM path:", vsim_path )
print( "Project:",  simulation_project)
print( "Clock period:", clock )
print( "--------------------------------------------------------------" )

# information writing (log file) -------------------------------------------------------------------------------------------------------
log.write( "--------------------------------------------------------------------------------------------------------------" )
log.write( "\n" )
log.write( "INFO" )
log.write( "\n" )
log.write( "VSIM path: " )
log.write( vsim_path )
log.write( "\n" )
log.write( "Project: ")
log.write( simulation_project )
log.write( "\n" )
log.write( "Clock period: ")
log.write( clock )
log.write( "\n" )
log.write( "--------------------------------------------------------------------------------------------------------------" )
log.write( "\n" )

# virtual memory creation -------------------------------------------------------------------------------------------------------------
mem = memory.memory( address_size = address_size, word_size = data_size )
mem.reset()

# STIMULI GENERATION ------------------------------------------------------------------------------------------------------------------
# the stimuli file must follow the format described below (empty lines or lines starting with '#' are ignored)
#
# 1. <opcode><address_space><op_type>
# 2. <burstlen>
# 3. <address>
# 4. <data0>
# 5. <data1>
# 6. <data2>
#
# SINGLE READ, MEMORY SPACE:
# opcode = 0, address_space = 0, op_type = 0
# the burstlen row is not present
# the address row represents the target address
# no data row is present
#
# READ BURST, MEMORY SPACE:
# opcode = 0, address_space = 0, op_type = 1
# the burstlen row represents the lenght of the burst
# the address row represents the address of the first data of the burst
# no data row is present
#
# SINGLE WRITE, MEMORY SPACE:
# opcode = 1, address_space = 0, op_type = 0
# the burstlen row is not present
# the address row represents the target address
# a single data row is present
#
# WRITE BURST, MEMORY SPACE:
# opcode = 1, address_space = 0, op_type = 1
# the burstlen row represents the lenght of the burst (up to 2^11 - 1)
# the address row represents the address of the first data of the burst
# the number of data rows is equal to the value of burstlen
#
# SINGLE READ, REGISTER SPACE:
# opcode = 0, address_space = 1, op_type = 0
# the burstlen row is not present
# the address row represents the target address
# no data row is present
#
# SINGLE WRITE, REGISTER SPACE:
# opcode = 1, address_space = 0, op_type = 0
# the burstlen row is not present
# the address row represents the target address
# a single data row is present
#
# LIST OF APPLIED STIMULI:
# 0) write configuration register (initialization)
# 1) read configuration register (read the previously written value)
# 2) single write, memory space
# 3) single read, memory space (read the previously written value)
# 4) write burst, memory space
# 5) read burst, memory space (read the previously written burst)
# 6) write configuration register (enter DPD mode)
# 7) single read, memory space (it must be ignored by the DUT, since it is in DPD mode)
# 8) write configuration register (exit DPD mode)
# 9) read configuration register (read the previously written value)
#
try:
    stimuli = open( input_file, "w" )
    expected = open( expected_file, "w" )
    # write configuration register (initialization) -------------------------------------------------------------------------------------
    stimuli.write( '# configuration register initialization --------------------------- \n' )
    stimuli.write( write_opcode + register_space + single_op + '\n' )
    stimuli.write( config0_addr + '\n' )
    stimuli.write( config_value_ON_variable_latency + '\n' )
    # high-level model update
    mem.add_register( address = config0_addr, value = config_value_ON_variable_latency )
    # read configuration register (read the previously written value) -------------------------------------------------------------------
    stimuli.write( '# read configuration register ------------------------------------- \n' )
    stimuli.write( read_opcode + register_space + single_op + '\n' )
    stimuli.write( config0_addr + '\n' )
    # expected file update
    expected.write( mem.read_register( config0_addr ) + '\n' )
    # single write, memory space --------------------------------------------------------------------------------------------------------
    data = format( random.randint( 0,  2 ** data_size ), str( data_size ) + 'b' ).replace(" ", "0")
    address = format( random.randint( 0,  2 ** address_size ), str( address_size ) + 'b' ).replace(" ", "0")
    stimuli.write( '# single write, memory space -------------------------------------- \n' )
    stimuli.write( write_opcode + memory_space + single_op + '\n' )
    stimuli.write( address + '\n' )
    stimuli.write( data + '\n' )
    # high-level model update
    mem.write( address =  address, writedata = data )
    # single read, memory space (read the previously written value) ---------------------------------------------------------------------
    stimuli.write( '# single read, memory space --------------------------------------- \n' )
    stimuli.write( read_opcode + memory_space + single_op + '\n' )
    stimuli.write( address + '\n' )
    # expected file update
    expected.write( mem.read( address = address ) + "\n" )
    # write burst, memory space ---------------------------------------------------------------------------------------------------------
    first_address_decimal = random.randint( 0,  2 ** address_size )
    first_address = format( first_address_decimal, str( address_size ) + 'b' ).replace(" ", "0")
    stimuli.write( '# write burst, memory space --------------------------------------- \n' )
    stimuli.write( write_opcode + memory_space + burst_op + '\n' )
    stimuli.write( burstlen + '\n' )
    stimuli.write( first_address + '\n' )
    for address_decimal in range( first_address_decimal, first_address_decimal + burstlen_decimal ):
        address = format( address_decimal, str( address_size ) + 'b' ).replace(" ", "0")
        data = format( random.randint( 0,  2 ** data_size ), str( data_size ) + 'b' ).replace(" ", "0")
        stimuli.write( data + '\n' )
        # high-level model update
        mem.write( address =  address, writedata = data )
    # read burst, memory space (read the previously written burst) ---------------------------------------------------------------------
    stimuli.write( '# read burst, memory space ---------------------------------------- \n' )
    stimuli.write( read_opcode + memory_space + burst_op + '\n' )
    stimuli.write( burstlen + '\n' )
    stimuli.write( first_address + '\n' )
    # expected file update
    for address_decimal in range( first_address_decimal, first_address_decimal + burstlen_decimal ):
        address = format( address_decimal, str( address_size ) + 'b' ).replace(" ", "0")
        expected.write( mem.read( address =  address ) + "\n" )
    # write configuration register (enter DPD mode) ------------------------------------------------------------------------------------
    stimuli.write( '# write configuration register - enter DPD mode ------------------- \n' )
    stimuli.write( write_opcode + register_space + single_op + '\n' )
    stimuli.write( config0_addr + '\n' )
    stimuli.write( config0_value_DPD + '\n' )
    # high-level model update
    mem.write_register( address = config0_addr, value = config0_value_DPD )
    # single read, memory space (it must be ignored by the DUT, the expected file must not be updated) ---------------------------------
    address = format( random.randint( 0,  2 ** address_size ), str( address_size ) + 'b' ).replace(" ", "0")
    stimuli.write( '# single read, memory space --------------------------------------- \n' )
    stimuli.write( read_opcode + memory_space + single_op + '\n' )
    stimuli.write( address + '\n' )
    # write configuration register (exit DPD mode) -------------------------------------------------------------------------------------
    stimuli.write( '# write configuration register - exit DPD mode -------------------- \n' )
    stimuli.write( write_opcode + register_space + single_op + '\n' )
    stimuli.write( config0_addr + '\n' )
    stimuli.write( config0_value_ON_fixed_latency + '\n' )
    # high-level model update
    mem.write_register( address = config0_addr, value = config0_value_ON_fixed_latency )
    # read configuration register (read the previously written value) ------------------------------------------------------------------
    stimuli.write( '# read configuration register ------------------------------------- \n' )
    stimuli.write( read_opcode + register_space + single_op + '\n' )
    stimuli.write( config0_addr + '\n' )
    # expected file update
    expected.write( mem.read_register( config0_addr ) + '\n' )
except OSError:
    print( "Error: files creation failed" )
    log.write( "Error: files creation failed" )
    raise
else:
    stimuli.close()
    expected.close()

# simulation ---------------------------------------------------------------------------------------------------------------------------
subprocess.run( "cp ./" + input_file + " ../tb/", shell=True )          # the testbench files look for the input file in their own folder
print( "Start simulation..." )
log.write( "Start simulation... \n" )
cmd = vsim_path + " -c -do " + simulation_file + " > " + vsim_log_file
subprocess.run( cmd, shell=True )
print ("Simulation completed")
log.write( "Simulation completed \n" )
subprocess.run( "rm ../tb/" + input_file, shell=True )

# verification -------------------------------------------------------------------------------------------------------------------------
try:
    dstat = open( driver_status_file, "r" )
    if ( dstat.read(1) == '0' ):
        cmd = "diff " + expected_file + " " + output_file + " -y --suppress-common-lines -N | wc -l"
        verification_process = subprocess.run( cmd, shell = True, capture_output = True )
        diff = verification_process.stdout.decode( "utf-8" ).replace("\n", "")
        if ( diff == '0' ):
            print( "DUT is working correctly" )
            print( "Verification result: PASSED" )
            log.write( "DUT is working correctly \n" )
            log.write( "Verification result: PASSED \n" )
        else:
            print( "DUT is not working as expected" )
            print( diff, "errors detected" )
            print( "Verification result: FAILED" )
            log.write( "DUT is not working as expected \n" )
            log.write( diff )
            log.write( " errors detected \n" )
            log.write( "Verification result: FAILED \n" )
    else:
        print( "Simulation error (driver status)" )
        subprocess.run( "rm -r transcript gate_work/ __pycache__/ vsim.wlf", shell=True )
        raise Exception( "Error detected while driving the DUT" )
except OSError:
    print( "Error: driver status file opening failed" )
    raise

log.close()
subprocess.run( "rm -r transcript work/ __pycache__/ vsim.wlf", shell=True )
