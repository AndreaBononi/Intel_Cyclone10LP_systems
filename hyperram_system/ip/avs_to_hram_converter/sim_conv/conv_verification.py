#!/usr/bin/env python

# public modules -----------------------------------------------------------------------------------------------------------------------
import random
import subprocess
import os

# private modules ----------------------------------------------------------------------------------------------------------------------
import memory

# files and directories ----------------------------------------------------------------------------------------------------------------
sim_project       = "Avalon-MM slave to hyperbus converter"
log_file          = "log.txt"
vsim_log_file     = "vsim_log.txt"
input_file        = "stimuli.txt"
output_file       = "readvalues.txt"
expected_file     = "expected_values.txt"
simulation_file   = "sim.do"
vsim_path         = '~/intelFPGA/20.1/modelsim_ase/bin/vsim'

# constants ----------------------------------------------------------------------------------------------------------------------------
clock_period      = "10 ns"
data_size         = 16
address_size      = 32
burst_size        = 11
burstlen_dec      = 10
burstlen          = format( burstlen_dec, str( burst_size ) + 'b' ).replace( " ", "0" )
opcode_read       = '0'
opcode_write      = '1'
optype_single     = '0'
optype_burst      = '1'
virtconfreg_addr  = "00000000010000000000000000000000"
virtconfreg_def   = "0000000000000000"
virtconfreg_dpd   = "0000000000000001"

# environment preparation --------------------------------------------------------------------------------------------------------------
if ( os.path.exists( log_file ) ):
  subprocess.run( "rm " + log_file, shell=True )
if ( os.path.exists( output_file ) ):
  subprocess.run( "rm " + output_file, shell=True )
if ( os.path.exists( input_file ) ):
  subprocess.run( "rm " + input_file, shell=True )
if ( os.path.exists( expected_file ) ):
  subprocess.run( "rm " + expected_file, shell=True )

# log file opening ---------------------------------------------------------------------------------------------------------------------
try:
    log = open( log_file, "w" )
except OSError:
    print( "An error has been encontered while creating the log file, the simulation has been shut down" )
    raise

# information printing -----------------------------------------------------------------------------------------------------------------
print( "-------------------------------------------------------" )
print( "INFO" )
print( "VSIM path:", vsim_path )
print( "Project:",  sim_project )
print( "Clock period:", clock_period )
print( "Burst lenght:", burstlen_dec )
print( "-------------------------------------------------------" )

# information writing (log file) -------------------------------------------------------------------------------------------------------
log.write( "---------------------------------------------------" )
log.write( "\n" )
log.write( "INFO" )
log.write( "\n" )
log.write( "VSIM path: " )
log.write( vsim_path )
log.write( "\n" )
log.write( "Project: " )
log.write( sim_project )
log.write( "\n" )
log.write( "Clock period: " )
log.write( clock_period )
log.write( "\n" )
log.write( "Burst lenght: " )
log.write( str( burstlen_dec ) )
log.write( "\n" )
log.write( "---------------------------------------------------" )
log.write( "\n" )

# memory model ------------------------------------------------------------------------------------------------------------------------
mem = memory.memory( address_size = address_size, word_size = data_size )
mem.reset()
mem.add_register( address = virtconfreg_addr, value = virtconfreg_def )

# STIMULI GENERATION ------------------------------------------------------------------------------------------------------------------
# the stimuli file must follow the format described below (empty lines or lines starting with '#' are ignored)
#
# 1. <opcode><optype>
# 2. <burstlen>
# 3. <address>
# 4. <data0>
# 5. <data1>
# 6. <data2>
#
# SINGLE READ:
# opcode = 0, optype = 0
# the burstlen row is not present
# the address row represents the target address
# no data row is present
#
# READ BURST:
# opcode = 0, optype = 1
# the burstlen row represents the lenght of the burst (up to 2^11 - 1)
# the address row represents the address of the first data of the burst
# no data row is present
#
# SINGLE WRITE:
# opcode = 1, optype = 0
# the burstlen row is not present
# the address row represents the target address
# a single data row is present
#
# WRITE BURST, MEMORY SPACE:
# opcode = 1, optype = 1
# the burstlen row represents the lenght of the burst (up to 2^11 - 1)
# the address row represents the address of the first data of the burst
# the number of data rows is equal to the value of burstlen
#
# LIST OF APPLIED STIMULI:
# 0. read virtual configuration register (it should be at its default value)
# 1. single write in memory space
# 2. single read in memory space (read the previously written value)
# 3. write burst in memory space
# 4. read burst in memory space (read the previously written burst)
# 5. write virtual configuration register to enter in DPD mode
# 6. single read in memory space (it should be ignored)
# 7. write virtual configuration register to exit the DPD mode
# 8. single write in memory space
# 9. single read in memory space (read the previously written value)
#
try:
    stimuli = open( input_file, "w" )
    expected = open( expected_file, "w" )
    # 0. read virtual configuration register ------------------------------------------------------------------------------------------
    stimuli.write( '# read virtual configuration register ----------------------------- \n' )
    stimuli.write( opcode_read + optype_single + '\n' + virtconfreg_addr + '\n' )
    expected.write( mem.read_register( virtconfreg_addr ) + '\n' )
    # 1. single write, memory space ---------------------------------------------------------------------------------------------------
    data = format( random.randint( 0,  2 ** data_size ), str( data_size ) + 'b' ).replace( " ", "0" )
    addr = format( random.randint( 0,  2 ** address_size ), str( address_size ) + 'b' ).replace( " ", "0" )
    stimuli.write( '# single write, memory space -------------------------------------- \n' )
    stimuli.write( opcode_write + optype_single + '\n' + addr + '\n' + data + '\n' )
    mem.write( address =  addr, writedata = data )
    # 2. single read, memory space (read the previously written value) ----------------------------------------------------------------
    stimuli.write( '# single read, memory space --------------------------------------- \n' )
    stimuli.write( opcode_read + optype_single + '\n' + addr + '\n' )
    expected.write( mem.read( address = addr ) + "\n" )
    # 3. write burst in memory space --------------------------------------------------------------------------------------------------
    start_addr_dec = random.randint( 0,  2 ** address_size )
    start_addr = format( start_addr_dec, str( address_size ) + 'b' ).replace( " ", "0" )
    stimuli.write( '# write burst, memory space --------------------------------------- \n' )
    stimuli.write( opcode_write + optype_burst + '\n' + burstlen + '\n' + start_addr + '\n' )
    for addr_dec in range( start_addr_dec, start_addr_dec + burstlen_dec ):
        addr = format( addr_dec, str( address_size ) + 'b' ).replace( " ", "0" )
        data = format( random.randint( 0,  2 ** data_size ), str( data_size ) + 'b' ).replace( " ", "0" )
        stimuli.write( data + '\n' )
        mem.write( address =  addr, writedata = data )
    # 4. read burst in memory space (read the previously written burst) --------------------------------------------------------------
    stimuli.write( '# read burst, memory space ---------------------------------------- \n' )
    stimuli.write( opcode_read + optype_burst + '\n' + burstlen + '\n' + start_addr + '\n' )
    for addr_dec in range( start_addr_dec, start_addr_dec + burstlen_dec ):
        addr = format( addr_dec, str( address_size ) + 'b' ).replace( " ", "0" )
        expected.write( mem.read( address =  addr ) + "\n" )
    # 5. write configuration register to enter the DPD mode --------------------------------------------------------------------------
    stimuli.write( '# write configuration register to enter the DPD mode -------------- \n' )
    stimuli.write( opcode_write + optype_single + '\n' + virtconfreg_addr + '\n' + virtconfreg_dpd + '\n' )
    mem.write_register( address = virtconfreg_addr, value = virtconfreg_dpd )
    # 6. single read in memory space (it should be ignored, the expected file must not be updated) -----------------------------------
    addr = format( random.randint( 0,  2 ** address_size ), str( address_size ) + 'b' ).replace( " ", "0" )
    stimuli.write( '# single read, memory space --------------------------------------- \n' )
    stimuli.write( opcode_read + optype_single + '\n' + addr + '\n' )
    # 7. write configuration register to exit the DPD mode ---------------------------------------------------------------------------
    stimuli.write( '# write configuration register to exit the DPD mode --------------- \n' )
    stimuli.write( opcode_write + optype_single + '\n' + virtconfreg_addr + '\n' + virtconfreg_def + '\n' )
    mem.write_register( address = virtconfreg_addr, value = virtconfreg_def )
    # 8. single write, memory space ---------------------------------------------------------------------------------------------------
    data = format( random.randint( 0,  2 ** data_size ), str( data_size ) + 'b' ).replace( " ", "0" )
    addr = format( random.randint( 0,  2 ** address_size ), str( address_size ) + 'b' ).replace( " ", "0" )
    stimuli.write( '# single write, memory space -------------------------------------- \n' )
    stimuli.write( opcode_write + optype_single + '\n' + addr + '\n' + data + '\n' )
    mem.write( address =  addr, writedata = data )
    # 9. single read, memory space (read the previously written value) ----------------------------------------------------------------
    stimuli.write( '# single read, memory space --------------------------------------- \n' )
    stimuli.write( opcode_read + optype_single + '\n' + addr + '\n' )
    expected.write( mem.read( address = addr ) + "\n" )
except OSError:
    print( "Error: files creation failed" )
    log.write( "Error: files creation failed" )
    raise
else:
    stimuli.close()
    expected.close()

# simulation --------------------------------------------------------------------------------------------------------------------------
subprocess.run( "cp ./" + input_file + " ./tb/", shell=True )   # the testbench files look for the input file in their own folder
print( "Start simulation..." )
log.write( "Start simulation... \n" )
subprocess.run( vsim_path + " -c -do " + simulation_file + " > " + vsim_log_file, shell=True )
print( "Simulation completed" )
log.write( "Simulation completed \n" )
subprocess.run( "rm ./tb/" + input_file, shell=True )

# verification ------------------------------------------------------------------------------------------------------------------------
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

log.close()
subprocess.run( "rm -r transcript work/ __pycache__/ vsim.wlf", shell=True )