#!/bin/bash

echo Setting up LVDS2 to 1600x900 pxls resolution
xrandr --output LVDS2 --mode 1600x900

echo Setting up VGA2 to 1920x1080 pxls resolution
xrandr --output VGA2 --mode 1920x1080

echo Setting up VGA2 to be right of LVDS2
xrandr --output VGA2 --right-of LVDS2

echo DONE!
