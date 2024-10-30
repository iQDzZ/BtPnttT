#!/bin/sh
watch -t -n 1 "echo '.........................................................'; echo '+ temperatura procesora \ brzina hlađenja' | tr a-z A-Z ; echo ; sensors | grep 'Core 0:\|Core 1:\|fan1:\|temp1:'; echo '.........................................................' ; echo '.........................................................' ; echo '+ brzina procesora' | tr a-z A-Z ; echo ; cat /proc/cpuinfo | grep '^[c]pu MHz' ; echo '.........................................................' ; echo '.........................................................' ; echo '+ brzina grafičkog procesora' | tr a-z A-Z; echo ; glxinfo -B | grep 'Device:\|Video memory:\|OpenGL version string:\|OpenGL shading language version string:\|OpenGL ES profile version string:\|OpenGL ES profile shading language version string:'; cat /sys/kernel/debug/dri/0/i915_frequency_info | grep 'Video Turbo Mode:\|Max non-overclocked (RP0) frequency:\|HW control enabled:\|RPSTAT1:\|CAGF:' ; echo 'AKTIVNA iGPU frekvencija:' $(cat /sys/class/drm/card0/gt_act_freq_mhz) MHz ; echo '.........................................................' ;"