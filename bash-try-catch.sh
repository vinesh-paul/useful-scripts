#!/bin/bash

#mimic try/catch using bash

function process_bootstrap
{
    # Try to bootstrap a process
    # If this fails, try to capture the failure to run a cleanup task
}

function on_exit_cleanup
{
    # Capture the process bootstrap
    # Run a cleanup task to clear bootstrap remnants or update the failure status
    # This could help take some preventive actions on the bootstrap failure
}

(
 set -euo pipefail
 process_bootstrap
)

 if [[ $? -ne 0 ]]
 then
         on_exit_cleanup
 fi
