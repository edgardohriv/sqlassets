1.- Open PowerShell Command Prompt and navigate through the project's root folder,which is as follows in our example:
	C:\ThisBook\Chapter_04\WorldCities\ Once there, type the following command to globally install the dotnet-ef command-line tool:

		dotnet tool install --global dotnet-ef

2.- Wait until the installation is complete. When we receive the green message output, type in the following command to add the first migration:

		dotnet ef migrations add "Initial" -o "Data\Migrations"

3.- Updating the database
		
		dotnet ef database update

4.- Install Angular Material

		ng add @angular/material

	Aqui la documentacion :
	https://material.angular.io/components/categories

5.- Fixing issue with clien side paging 
	source : https://www.concretepage.com/angular-material/angular-material-table-sorting-pagination