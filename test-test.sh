#!/bin/bash

# Install dependencies and extract directories, install profiles
unzip 814712_MTL_TuneD_Static_Profile_RN_Rev1p2.zip && unzip pkg.OPT.EPPprofile-1.05.240206.1-x86_64.zip && cd pkg.OPT.EPPprofile-1.05.240206.1-x86_64 && sudo dnf install tuned -y && sh deploy.sh && sleep 2 && sudo dnf install -y tuned-ppd
