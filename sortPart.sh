#!/bin/bash

# Marissa Huang - 10179169
# Deven Bernard - 10099810
# Kevin Zuern - 10134425
# Quentin Petraroia - 10145835

lsblk -nrb | sort -k4n | head -n2
