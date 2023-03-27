# tams_execute

The whole purpose of this package is to run or launch executables/launch files from other packages.
In itself, this is ridiculous overhead, but the script and launch file enable the caller to [switch workspaces or machines](https://github.com/TAMS-Group/tams_execute/blob/main/launch/execute.launch) before executing the run/launch command.
This significantly simplifies startup of multi-machine robots with different python/workspace requirements for deep learning modules.
