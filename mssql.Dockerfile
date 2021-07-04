# using vNext image
FROM microsoft/mssql-server-windows-express
 
WORKDIR /SQLServer

#copy the database files from host to container
COPY ./MSSQL/HSDatabaseDevelopment.mdf ./HSDatabase.mdf
COPY ./MSSQL/HSDatabaseDevelopment_log.ldf ./HSDatabase_log.ldf
 
# set environment variables
ENV SA_PASSWORD=P@ssword123xxx
ENV ACCEPT_EULA=Y
ENV attach_dbs="[{'dbName':'HSDatabase','dbFiles':['C:\\\\SQLServer\\\\HSDatabase.mdf','C:\\\\SQLServer\\\\HSDatabase_log.ldf']}]"

# we set the root directory as current working directory
WORKDIR /
# we need run the next docker commands to create a container
# docker build -t ragde1978/mssql ./
# docker run -d -p 1433:1433 --name dbserver  ragde1978/mssql:latest

https://github.com/edgardohriv/ASP.NET-Core-3-and-Angular-9-Third-Edition.git/tree/master/Chapter_04/WorldCities

https://github.com/edgardohriv/ASP.NET-Core-3-and-Angular-9-Third-Edition/tree/master/Chapter_04/WorldCities

R@gdeHR@1978