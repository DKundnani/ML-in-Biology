# AML_machinelearning
### Processing the data
Used python to preprocess the data. Took 5 quartiles of the data along with the minimum and maximum of the data. I mean normalized each column.
### Fiting the model
Then tried out different models of machine learning using scikit learn.
Got the best result with logistic regression and using MATLAB fit a model with 5 fold validation, and 0.01 lambda value to regularize the model.
### Results
I got an accuracy of 95.6 and cost of 0.1120. F-measure of 0.97
Generates two files, Final_File.csv and Final_File1.csv, one which has all the values of 359 patients,and the other one has the values of 180 patients and the percent accurate I am of the predictions.
### Files
The files can be downloaded http://pengqiu.gatech.edu/MLB/CSV.zip (flow cytometry blood samples data for all 359 patients) and http://pengqiu.gatech.edu/MLB/AMLTraining.csv.zip (Normal/AML class labels of 179 samples).

## Preprocessing 
Download the data files and run the read_file.py in the same folder. Make a directory called files. The final_prod.csv will be generated along with testing_data.csv. 
## Machine Learning Model
Run the aml_patient.m mentioning the lambda value and the kfold value. Best values k-fold=5 and lambda=0.01. The files are present in the model folder. This will generate Pred.csv file. 
## Post Processing
Later run the file_processing.csv to generate the final files in the files folder. 

