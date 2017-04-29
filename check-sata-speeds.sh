#!/bin/bash
 
dmesg | grep -i sata | grep 'link up'
echo

dmesg | grep -i --color ahci
echo

dmesg | grep -i  ahci | grep -i --color Gbps
echo

