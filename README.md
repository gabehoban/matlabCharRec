# matlabCharRec
Digit Character Recognition in MATLAB

# Introduction
  The aim of this project is to implement digit recognition of handwritten numbers in MATLAB. Initially given a data set of 5000 images containing handwritten values ranging from 0-9, MATLAB is able to classify each image based on its calculated Euclidean distance. In order to be able to train the program, the initial data set has to be split into a training set and a testing set. For this project, every 50th image is used for testing and the rest of the 4900 images are used for training. After the data set is split, a nested loop for determining the Euclidean distance is created. Once the Euclidean distance has been calculated, the minimum distance for each value is determined and is connected to the corresponding label.
  
# Theoretical Calculations
  While there are many ways to classify an image for digit recognition, the Euclidean distance is chosen due to its simplicity. The Euclidean distance can be defined as
<a href="https://www.codecogs.com/eqnedit.php?latex=d&space;=&space;\sqrt{(x_2-x_1)^2&plus;(y_2-y_1)^2}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?d&space;=&space;\sqrt{(x_2-x_1)^2&plus;(y_2-y_1)^2}" title="d = \sqrt{(x_2-x_1)^2+(y_2-y_1)^2}" /></a>
