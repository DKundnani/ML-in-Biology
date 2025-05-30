# Machine-Learning-in-BioSci
## Early Term Project
### Data Preprocessing
Raw data: Flow cytometry data provided in Class containing 7 scatter columns x 8 tubes(csv files) for every patient

Standardized data: Mean standarized data using the formula ((Data-mean)/std)x0.01 for every column(eg. FS - Forward Scatter) of every sample

Normalized data: Bringing the data between 0 and 1 using (Data - min)/(max-min) for every column(eg. FS - Forward Scatter) of every sample

### Training files 

Contains a matrix of mxn, 

where m is the number of patients with known status x number of features(5 features by <B>default</B>, 4 for <B>_1</B> and 1 for <B>_2</B>)

and n is number of features(in this case 56 which is 7 features x 8 tubes)

### Prediction files

Same as Training files for patients whose status is unknown to be used for prediction


## Final Project

