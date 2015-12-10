#!/bin/bash

( 
  # grab sudo priviledges so we do not need to interrupt the following process if they are needed
  sudo true
  # execute the steps
  ./00_remove_old_images.sh
  ./01_build.sh && ./02_install.sh && ./03_initialize.sh && ./04_testdata.sh && ./05_run.sh
) | tee run_all.log

echo 
echo "The output has beed written to run_all.log"
