#!/bin/bash
fname=$1
opt -dot-cfg $fname.bc 
xdot cfg.main.dot

