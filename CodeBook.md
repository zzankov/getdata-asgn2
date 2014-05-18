### Getting and Cleaning Data Assignment - Coursera.org
# Codebook
**************



## Introduction
This document aims at presenting a full list and summary of the varialbes in the tidy data set derived from the [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). For more details on the original data set and how the tidy data set was derived please refer to the README file in this repository.

## Variables summary

```
## Variable: activity 
##  class: factor 
##  Distinct values/levels:
## LAYING SITTING STANDING WALKING WALKING_DOWNSTAIRS WALKING_UPSTAIRS 
## One for each activity 
##  
## Variable: subject 
##  class: factor 
##  Distinct values/levels:
## 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 
## One for each subject 
##  
## Variable: timeBodyAccmeanX 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##   0.222   0.271   0.277   0.274   0.280   0.301 
## 
## Variable: timeBodyAccmeanY 
##  class: numeric 
##  Summary: 
##     Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
## -0.04050 -0.02000 -0.01730 -0.01790 -0.01490 -0.00131 
## 
## Variable: timeBodyAccmeanZ 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -0.1530 -0.1120 -0.1080 -0.1090 -0.1040 -0.0754 
## 
## Variable: timeGravityAccmeanX 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.680   0.838   0.921   0.697   0.943   0.975 
## 
## Variable: timeGravityAccmeanY 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -0.4800 -0.2330 -0.1280 -0.0162  0.0877  0.9570 
## 
## Variable: timeGravityAccmeanZ 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -0.4950 -0.1170  0.0238  0.0741  0.1490  0.9580 
## 
## Variable: timeBodyAccJerkmeanX 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  0.0427  0.0740  0.0764  0.0795  0.0833  0.1300 
## 
## Variable: timeBodyAccJerkmeanY 
##  class: numeric 
##  Summary: 
##     Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
## -0.03870  0.00047  0.00947  0.00757  0.01340  0.05680 
## 
## Variable: timeBodyAccJerkmeanZ 
##  class: numeric 
##  Summary: 
##     Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
## -0.06750 -0.01060 -0.00386 -0.00495  0.00196  0.03810 
## 
## Variable: timeBodyGyromeanX 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -0.2060 -0.0471 -0.0287 -0.0324 -0.0168  0.1930 
## 
## Variable: timeBodyGyromeanY 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -0.2040 -0.0895 -0.0732 -0.0743 -0.0611  0.0275 
## 
## Variable: timeBodyGyromeanZ 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -0.0725  0.0747  0.0851  0.0874  0.1020  0.1790 
## 
## Variable: timeBodyGyroJerkmeanX 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -0.1570 -0.1030 -0.0987 -0.0961 -0.0911 -0.0221 
## 
## Variable: timeBodyGyroJerkmeanY 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -0.0768 -0.0455 -0.0411 -0.0427 -0.0384 -0.0132 
## 
## Variable: timeBodyGyroJerkmeanZ 
##  class: numeric 
##  Summary: 
##     Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
## -0.09250 -0.06170 -0.05340 -0.05480 -0.04900 -0.00694 
## 
## Variable: timeBodyAccMagmean 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -0.9860 -0.9570 -0.4830 -0.4970 -0.0919  0.6450 
## 
## Variable: timeGravityAccMagmean 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -0.9860 -0.9570 -0.4830 -0.4970 -0.0919  0.6450 
## 
## Variable: timeBodyAccJerkMagmean 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.993  -0.981  -0.817  -0.608  -0.246   0.434 
## 
## Variable: timeBodyGyroMagmean 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.981  -0.946  -0.655  -0.565  -0.216   0.418 
## 
## Variable: timeBodyGyroJerkMagmean 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -0.9970 -0.9850 -0.8650 -0.7360 -0.5120  0.0876 
## 
## Variable: frequencyBodyAccmeanX 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.995  -0.979  -0.769  -0.576  -0.217   0.537 
## 
## Variable: frequencyBodyAccmeanY 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -0.9890 -0.9540 -0.5950 -0.4890 -0.0634  0.5240 
## 
## Variable: frequencyBodyAccmeanZ 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.989  -0.962  -0.724  -0.630  -0.318   0.281 
## 
## Variable: frequencyBodyAccmeanFreqX 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.636  -0.392  -0.257  -0.232  -0.061   0.159 
## 
## Variable: frequencyBodyAccmeanFreqY 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -0.3800 -0.0813  0.0078  0.0115  0.0863  0.4670 
## 
## Variable: frequencyBodyAccmeanFreqZ 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -0.5200 -0.0363  0.0658  0.0437  0.1750  0.4030 
## 
## Variable: frequencyBodyAccJerkmeanX 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.995  -0.983  -0.813  -0.614  -0.282   0.474 
## 
## Variable: frequencyBodyAccJerkmeanY 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.989  -0.973  -0.782  -0.588  -0.196   0.277 
## 
## Variable: frequencyBodyAccJerkmeanZ 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.992  -0.980  -0.871  -0.714  -0.470   0.158 
## 
## Variable: frequencyBodyAccJerkmeanFreqX 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -0.5760 -0.2900 -0.0609 -0.0691  0.1770  0.3310 
## 
## Variable: frequencyBodyAccJerkmeanFreqY 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -0.6020 -0.3980 -0.2320 -0.2280 -0.0472  0.1960 
## 
## Variable: frequencyBodyAccJerkmeanFreqZ 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -0.6280 -0.3090 -0.0919 -0.1380  0.0386  0.2300 
## 
## Variable: frequencyBodyGyromeanX 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.993  -0.970  -0.730  -0.637  -0.339   0.475 
## 
## Variable: frequencyBodyGyromeanY 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.994  -0.970  -0.814  -0.677  -0.446   0.329 
## 
## Variable: frequencyBodyGyromeanZ 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.986  -0.962  -0.791  -0.604  -0.263   0.492 
## 
## Variable: frequencyBodyGyromeanFreqX 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -0.3960 -0.2130 -0.1160 -0.1050  0.0027  0.2490 
## 
## Variable: frequencyBodyGyromeanFreqY 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -0.6670 -0.2940 -0.1580 -0.1670 -0.0427  0.2730 
## 
## Variable: frequencyBodyGyromeanFreqZ 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -0.5070 -0.1550 -0.0508 -0.0572  0.0415  0.3770 
## 
## Variable: frequencyBodyAccMagmean 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.987  -0.956  -0.670  -0.537  -0.162   0.587 
## 
## Variable: frequencyBodyAccMagmeanFreq 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -0.3120 -0.0147  0.0813  0.0761  0.1740  0.4360 
## 
## Variable: frequencyBodyBodyAccJerkMagmean 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.994  -0.977  -0.794  -0.576  -0.187   0.538 
## 
## Variable: frequencyBodyBodyAccJerkMagmeanFreq 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -0.1250  0.0453  0.1720  0.1630  0.2760  0.4880 
## 
## Variable: frequencyBodyBodyGyroMagmean 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.987  -0.962  -0.766  -0.667  -0.409   0.204 
## 
## Variable: frequencyBodyBodyGyroMagmeanFreq 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -0.4570 -0.1700 -0.0535 -0.0360  0.0823  0.4100 
## 
## Variable: frequencyBodyBodyGyroJerkMagmean 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.998  -0.981  -0.878  -0.756  -0.583   0.147 
## 
## Variable: frequencyBodyBodyGyroJerkMagmeanFreq 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -0.1830  0.0542  0.1120  0.1260  0.2080  0.4260 
## 
## Variable: angletimeBodyAccMeangravity 
##  class: numeric 
##  Summary: 
##     Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
## -0.16300 -0.01100  0.00788  0.00656  0.02440  0.12900 
## 
## Variable: angletimeBodyAccJerkMeangravityMean 
##  class: numeric 
##  Summary: 
##     Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
## -0.12100 -0.02120  0.00314  0.00064  0.02210  0.20300 
## 
## Variable: angletimeBodyGyroMeangravityMean 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -0.3890 -0.0198  0.0209  0.0219  0.0646  0.4440 
## 
## Variable: angletimeBodyGyroJerkMeangravityMean 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -0.2240 -0.0561 -0.0160 -0.0114  0.0320  0.1820 
## 
## Variable: angleXgravityMean 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.947  -0.791  -0.738  -0.524  -0.582   0.738 
## 
## Variable: angleYgravityMean 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -0.8750  0.0219  0.1710  0.0787  0.2430  0.4250 
## 
## Variable: angleZgravityMean 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -0.8740 -0.0839  0.0051 -0.0404  0.1060  0.3900 
## 
## Variable: timeBodyAccstdX 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.996  -0.980  -0.753  -0.558  -0.198   0.627 
## 
## Variable: timeBodyAccstdY 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -0.9900 -0.9420 -0.5090 -0.4600 -0.0308  0.6170 
## 
## Variable: timeBodyAccstdZ 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.988  -0.950  -0.652  -0.576  -0.231   0.609 
## 
## Variable: timeGravityAccstdX 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.997  -0.982  -0.969  -0.964  -0.951  -0.830 
## 
## Variable: timeGravityAccstdY 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.994  -0.971  -0.959  -0.952  -0.937  -0.644 
## 
## Variable: timeGravityAccstdZ 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.991  -0.961  -0.945  -0.936  -0.918  -0.610 
## 
## Variable: timeBodyAccJerkstdX 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.995  -0.983  -0.810  -0.595  -0.223   0.544 
## 
## Variable: timeBodyAccJerkstdY 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.990  -0.972  -0.776  -0.565  -0.148   0.355 
## 
## Variable: timeBodyAccJerkstdZ 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.993  -0.983  -0.884  -0.736  -0.512   0.031 
## 
## Variable: timeBodyGyrostdX 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.994  -0.973  -0.789  -0.692  -0.441   0.268 
## 
## Variable: timeBodyGyrostdY 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.994  -0.963  -0.802  -0.653  -0.420   0.477 
## 
## Variable: timeBodyGyrostdZ 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.986  -0.961  -0.801  -0.616  -0.311   0.565 
## 
## Variable: timeBodyGyroJerkstdX 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.997  -0.980  -0.840  -0.704  -0.463   0.179 
## 
## Variable: timeBodyGyroJerkstdY 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.997  -0.983  -0.894  -0.764  -0.586   0.296 
## 
## Variable: timeBodyGyroJerkstdZ 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.995  -0.985  -0.861  -0.710  -0.474   0.193 
## 
## Variable: timeBodyAccMagstd 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.986  -0.943  -0.607  -0.544  -0.209   0.428 
## 
## Variable: timeGravityAccMagstd 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.986  -0.943  -0.607  -0.544  -0.209   0.428 
## 
## Variable: timeBodyAccJerkMagstd 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.995  -0.977  -0.801  -0.584  -0.217   0.451 
## 
## Variable: timeBodyGyroMagstd 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.981  -0.948  -0.742  -0.630  -0.360   0.300 
## 
## Variable: timeBodyGyroJerkMagstd 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.998  -0.980  -0.881  -0.755  -0.577   0.250 
## 
## Variable: frequencyBodyAccstdX 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.997  -0.982  -0.747  -0.552  -0.197   0.659 
## 
## Variable: frequencyBodyAccstdY 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -0.9910 -0.9400 -0.5130 -0.4810 -0.0791  0.5600 
## 
## Variable: frequencyBodyAccstdZ 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.987  -0.946  -0.644  -0.582  -0.265   0.687 
## 
## Variable: frequencyBodyAccJerkstdX 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.995  -0.985  -0.825  -0.612  -0.248   0.477 
## 
## Variable: frequencyBodyAccJerkstdY 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.990  -0.974  -0.785  -0.571  -0.169   0.350 
## 
## Variable: frequencyBodyAccJerkstdZ 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -0.9930 -0.9840 -0.8950 -0.7560 -0.5440 -0.0062 
## 
## Variable: frequencyBodyGyrostdX 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.995  -0.975  -0.809  -0.711  -0.481   0.197 
## 
## Variable: frequencyBodyGyrostdY 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.994  -0.960  -0.796  -0.645  -0.415   0.646 
## 
## Variable: frequencyBodyGyrostdZ 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.987  -0.964  -0.822  -0.658  -0.392   0.522 
## 
## Variable: frequencyBodyAccMagstd 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.988  -0.945  -0.651  -0.621  -0.365   0.179 
## 
## Variable: frequencyBodyBodyAccJerkMagstd 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.994  -0.975  -0.813  -0.599  -0.267   0.316 
## 
## Variable: frequencyBodyBodyGyroMagstd 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.981  -0.949  -0.773  -0.672  -0.428   0.237 
## 
## Variable: frequencyBodyBodyGyroJerkMagstd 
##  class: numeric 
##  Summary: 
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
##  -0.998  -0.980  -0.894  -0.772  -0.608   0.288
```


## Final remarks
This is by no means a complete description (statistical or literal) of the data. Most of the description is contained within the README file of the repository. Please refer to that file if you would like to find out more about how to interpret the variable names.
