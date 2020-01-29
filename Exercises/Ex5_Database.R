#Exercise 5: Database connections using DBI and and dplyr

#Load relevant packages, install them if you don't have them yet.
install.packages("RSQLite")
library(DBI)
library(dplyr)
library(dbplyr)


#############################################################################
# Set up exercise database.  This will be held in memory, using RSQLite
# You would likely be connecting to SQL Server, Oracle or similar in reality
#############################################################################

# Load CancelledOps.csv
CancelledOps<-read.csv("Data/CancelledOps.csv")

# Set up the database connection
con <- dbConnect(RSQLite::SQLite(), ":memory:")

# Write CancelledOps to the database
dbWriteTable(con, "CancelledOps", CancelledOps)

#Remove the imported data frame so we have to work on the database
rm(CancelledOps)

############################################################################


# List the tables in our database. Use the 'Packages' window to view the functiond in DBI
# Look through the list and see if you can find somthing that looks relevant


# List the fields in the CancelledOps table, again, using the relevant DBI function, check the help


# Now lets declare CancelledOps as a tibble for use with dplyr. Call it C_ops to avoid confusion
# This will now be treated as an R data.frame/tibble, but it is still in the database
C_ops<-

# Use glimpse to see the structions and data tpe


# Use dplyr to return the data just those trusts in the southwest using Parent.Org.Code = "Q85"



# How can you get a distinct list?




# Lets try the same thing with an SQL query instead





# Back to dplyr!
# Again, lets filter for southwest organisations, return all rows,
# but just the fields: Org.Name and Cancelled.Operations


# RUn the same query again, but pull the result into memory in R.
# Call the iported data frame: my_tibble

my_tibble<-




# Turn this into an aggreagate query using 'summarise'. How many organisations are there,
# and what is the average number of cancelled ops?



# Disconnect from the database


