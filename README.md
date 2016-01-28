# Political Speech Generator

Link to original paper: http://arxiv.org/abs/1601.03313


## Install to run from container
```conspeech``` is available as a Docker container from dockerhub.
The conspeach script will fecth and run the container when invoked.

``` sh
$ sudo -L https://raw.githubusercontent.com/sthysel/conspeach/master/conspeech > /usr/local/bin/conspeech
$ sudo chmod +x /usr/local/bin/conspeech

## Run the demo script from source
% python demo.py
% python demo.py [class]               Example: python demo.py RY
% python demo.py [class] [lambda]      Example: python demo.py RY 0.25
