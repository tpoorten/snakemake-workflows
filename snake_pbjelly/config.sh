# load blasr version 1.3.1.140182
module load smrtanalysis

# set up environment vars for PBSuite
#This is the path where you've install the suite.
export SWEETPATH=/home/tpoorten/opt/src/PBSuite_15.8.24
#for python modules 
export PYTHONPATH=$PYTHONPATH:$SWEETPATH
#for executables 
export PATH=$PATH:$SWEETPATH/bin/
