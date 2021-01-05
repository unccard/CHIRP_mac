#!/bin/sh
# script for execution of deployed applications
#
# Sets up the MCR environment for the current $ARCH and executes 
# the specified command.
#
MCRROOT=/Applications/MATLAB/MATLAB_Compiler_Runtime/v84
DYLD_LIBRARY_PATH=.:${MCRROOT}/runtime/maci64 ;
DYLD_LIBRARY_PATH=${DYLD_LIBRARY_PATH}:${MCRROOT}/bin/maci64 ;
DYLD_LIBRARY_PATH=${DYLD_LIBRARY_PATH}:${MCRROOT}/sys/os/maci64;
export DYLD_LIBRARY_PATH;
echo DYLD_LIBRARY_PATH is ${DYLD_LIBRARY_PATH};
#
# To set CHIRP Path, change the following line:
CHIRP_PATH=~/CHIRP_mac;
#
cd $CHIRP_PATH/CHMITE
./Bin/CHMITE_Record.app/Contents/MacOS/CHMITE_Record
exit

