Pitching the use of the Vocabulary Test from The National Opinion Research Center Of The University Of Chicago.
========================================================
author: Ziyad Abushima
date: 31-Mar-2019
autosize: true

Introductions
========================================================

The dataset used is the data from the General Social Survey (GSS) from the National Opinion Research Center of the University of Chicago. This data set illustrates analyis of a multifactor observational study, with response given by subject's score on a vocabulary test, and factors for age group, education level, natality status, gender and year of the survey.

To call the data use:

```r
library(carData)
data("GSSvocab")
```

which will lead to a data frame with 28867 observations and 8 variables

Purpose of the App
========================================================
The intent of the app is to allow the user to gain insights into subjects' vocabulary tests, whilst filtering the data for gender, age, ageGroup (grouped age of the respondent), educGroup (grouped education level of the respondent), nativeBorn (Was the respondent born in the US?)

Vocabulary versus the Year Plot
========================================================
After removing records with missing values, the gained insight is plotted onto a boxplot with Year versus Vocabulary, based on the selections made by the end-user.

![plot of chunk unnamed-chunk-2](Pitch-figure/unnamed-chunk-2-1.png)

Vocabulary versus the Year Plot
========================================================
A summary is also provided to indicate the average Vocabulary per Year, based on the selections made by the end-user.


```
  Year Average Vocabulary
1 1978           5.964116
2 1982           5.745041
3 1984           6.023707
4 1987           5.743219
5 1988           5.820879
6 1989           5.942946
```

The app's benefit
========================================================
The insights gained through this app allow the user to measure his or her performance versus the average. By knowing where you are, you would be able to take the necessary measures to ensure that the cognitive stimulanses are always pursued.
