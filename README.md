# Electric-Owl

The following document will help you understand how this sample application is developed to render Customer information when a customer id is submitted.

## Database: Creating tables

Creating the following two tables for handling the customer information:

### Table 1 contains the login information

The Login information of a customer is maintained in the **Customers** table below.

| **Column&nbsp;name** | **Description** | **Field&nbsp;type** | 
| --------------- | --------------- | -------------- | 
| Customer_ID | This is the customer identification number which is generated default in the database | Integer |
| First_name  | The first name of the customer | Varchar | 
| Middle_name | The middle name of the customer | Varchar | 
| Last_name   | The last name of the customer | Varchar | 
| Email_id    | contains the email address of the customer | Varchar | 
| Date_time   | contains the date and time of the customer logged in last time |  DATETIME(fsp) |

### Table 2 contains the customer address information

The address information of a customer is maintained in the **Customer_address** table below.

| **Column&nbsp;name** | **Description** | **Field&nbsp;type** | 
| --------------- | --------------- | -------------- | 
| Customer_ID | This is the customer identification number which is generated default in the database | Integer |
| Address_line1  | contains the address line 1 | Varchar | 
| Address_line2 | contains the address line 2 | Varchar | 
| City   | contains the city information | Varchar | 
| Province    | contains the province inforamtion | Varchar | 
| Country | contains the country | Varchar | 
| Zip | contians the 6 digit postal code for the address | Varchar | 

## Database Mapping

![Mapping-tables](/Mapping-tables.PNG)

## Stored procedure that displays all customer information

The developed stored procedure will retain the complete customer information for the submitted customer's id.

## Creating a MVC layout 

The developed MVC layout will display the customer information using the API end point with the input as customer id and returns the customer's information.
