# Copyright 2020, Georgia Tech Research Corporation    
# Atlanta, Georgia 30332-0415     
# All Rights Reserved  

# ML4T_2020 Summer 
Course website: http://lucylabs.gatech.edu/ml4t/

Information on using the autograder on buffet0x servers: http://lucylabs.gatech.edu/ml4t/ml4t-software-setup/

# Docker Details
This docker image contains the default files for all projects, util.py, data and grading code. Each relevant project code should go into `./src` and the `./run.sh` script can be used to test the validity of our code.

# Running
To use this image just run ./run.sh with your python arguments as parameters. The run command will execute python in the directory of this repo in the docker container and the relevant proejct source code should go into src.

## Example
`./run.sh grade_analysis.py`
