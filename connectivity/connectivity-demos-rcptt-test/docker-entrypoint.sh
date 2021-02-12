#!/bin/bash

Xvfb :99 -screen 0 1360x1020x24 -dpi 24 -listen tcp -noreset -ac +extension RANDR & exec "$@"
