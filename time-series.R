#From https://a-little-book-of-r-for-time-series.readthedocs.io/en/latest/src/timeseries.html#time-series-analysis
# By Avril Coghlan (alc@sanger.ac.uk)
#The content in this book is licensed under a Creative Commons Attribution 3.0 License.

#Decomposing Time Series

#"Decomposing a time series means separating it into its constituent components, which are usually a trend component and an irregular component, and if it is a seasonal time series, a seasonal component."

births <- scan("http://robjhyndman.com/tsdldata/data/nybirths.dat")
birthstimeseries <- ts(births, frequency=12, start=c(1946,1))
birthstimeseries
plot.ts(birthstimeseries)

#To handle the seasonality, often these are adjusted with different functions.

birthstimeseriescomponents <- decompose(birthstimeseries)
birthstimeseriesseasonallyadjusted <- birthstimeseries - birthstimeseriescomponents$seasonal
plot.ts(birthstimeseries)
plot.ts(birthstimeseriesseasonallyadjusted)


#Now let's Look at some more "real data"


# Datacamp has a class on time series and I've created the 
# Link on the slack channel for the class. 

