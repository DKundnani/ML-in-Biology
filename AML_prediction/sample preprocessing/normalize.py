#! usr/bin/env python3

import pandas as pd
import numpy as np

import argparse
	
parser = argparse.ArgumentParser()
parser.add_argument("-i", "--file", help = "Matrix file path") # Input csv file
parser.add_argument("-o", "--outfile", help = "ScatterMatrix output file name with extension eg.png") #output normalized file
args = parser.parse_args()

#Reading the file using pandas dataframe
data = pd.read_csv(args.file)

#Normalization of data making mean as 0 and std as 0.1
data = data-data.mean()
data = data/data.std()*0.1

data.to_csv(args.outfile)

'''
for file in $(ls CSV/*); do python3 ./normalize.py -i $file -o normalized$file ; done
'''