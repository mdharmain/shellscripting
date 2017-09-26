#!/bin/bash
source colour.sh


username= cat database.csv | cut -d ';' -f 1 
echo $username
 
