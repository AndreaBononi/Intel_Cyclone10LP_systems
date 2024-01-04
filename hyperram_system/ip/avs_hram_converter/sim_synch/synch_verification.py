#!/usr/bin/env python

# public modules -----------------------------------------------------------------------------------------------------------------------
import random
import subprocess
import os

# files and directories ----------------------------------------------------------------------------------------------------------------
sim_project     = "synchronizer"
log_file        = "synch_log.txt"
vsim_log_file   = "synch_vsim_log.txt"
input_file      = "synch_in.txt"
output_file     = "synch_out.txt"
sim_file        = "sim.do"
vsim_path       = '~/intelFPGA/20.1/modelsim_ase/bin/vsim'

# constants ----------------------------------------------------------------------------------------------------------------------------
burstcount      = 8
data_size       = 16
clock_period    = "10 ns"

# environment preparation --------------------------------------------------------------------------------------------------------------
if ( os.path.exists( log_file ) ):
  subprocess.run( "rm " + log_file, shell=True )
if ( os.path.exists( output_file ) ):
  subprocess.run( "rm " + output_file, shell=True )
if ( os.path.exists( input_file ) ):
  subprocess.run( "rm " + input_file, shell=True )

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
print( "Burst lenght:", burstcount )
print( "-------------------------------------------------------" )

# information writing (log file) -------------------------------------------------------------------------------------------------------
log.write( "--------------------------------------------------- \n" )
log.write( "INFO \n" )
log.write( "VSIM path: " + vsim_path + "\n" )
log.write( "Project: " + sim_project + "\n" )
log.write( "Clock period: " + clock_period + "\n" )
log.write( "Burst lenght: " + str( burstcount ) + "\n" )
log.write( "--------------------------------------------------- \n" )

# stimuli generation ------------------------------------------------------------------------------------------------------------------
# at first, all memory locations are written with a random writedata
# later, the value of each memory location is read
try:
    stimuli = open( input_file, "w" )
    for burst_idx in range( 0, burstcount ):
        data = format( random.randint( 0,  2 ** data_size ), str( data_size ) + 'b' ).replace(" ", "0")
        stimuli.write( data + "\n" )
except OSError:
    print( "Error: files creation failed" )
    log.write( "Error: files creation failed" )
    raise
else:
    stimuli.close()

# simulation -------------------------------------------------------------------------------------------------------------------------
subprocess.run( "cp ./" + input_file + " ./tb/", shell=True )   # the testbench files look for the input file in their own folder
print( "Start simulation..." )
log.write( "Start simulation... \n" )
subprocess.run( vsim_path + " -c -do " + sim_file + " > " + vsim_log_file, shell=True )
print( "Simulation completed" )
log.write( "Simulation completed \n" )
subprocess.run( "rm ./tb/" + input_file, shell=True )

# verification -----------------------------------------------------------------------------------------------------------------------
cmd = "diff " + input_file + " " + output_file + " -y --suppress-common-lines -N | wc -l"
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
subprocess.run( "rm -r transcript work/ vsim.wlf", shell=True )
