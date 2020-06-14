# Electric-Owl

The following document will help you understand how this sample application is developed to render Customer information when a customer id is submitted.

## Database: Creating tables

Creating the following two tables for handling the customer information:

### Table 1 contains the login information

The Login information of a customer is maintained in the **Customer** table below.

| **Column&nbsp;name** | **Description** | **Field&nbsp;type** | 
| -------------------- | --------------- | -------------- | 
| Customer_Id          | This is the customer identification number which is generated default in the database | Integer |
| First_name           | The first name of the customer | Varchar | 
| Middle_name          | The middle name of the customer | Varchar | 
| Last_name            | The last name of the customer | Varchar | 
| Email_id             | contains the email address of the customer | Varchar | 
| last_Login_date      | contains the date and time of the customer logged in last time |  DATETIME(fsp) |

### Table 2 contains the customer address information

The address information of a customer is maintained in the **Customer_Address** table below.

| **Column&nbsp;name** | **Description** | **Field&nbsp;type** | 
| --------------- | --------------- | -------------- | 
| Customer_Id | This is the customer identification number which is generated default in the database | Integer |
| Address_Line_1  | contains the address line 1 | Varchar | 
| Address_Line_2 | contains the address line 2 | Varchar | 
| City   | contains the city information | Varchar | 
| State    | contains the province inforamtion | Varchar | 
| Zip | contians the 6 digit postal code for the address | Varchar | 

## Database Mapping

![Mapping-tables](/Mapping-tables.PNG)

## Stored procedure that displays all customer information

The developed [stored procedure](./Stored-procedure.sql) will retain the complete customer information for the submitted customer's id.

## Creating a MVC layout 

The developed MVC layout will display the customer information using the API end point with the input as customer id and returns the customer's information.

## Angular application information
## Run these commands to get started:

npm install
npm start

## Notes
1. When the application is loaded, the intiitilpage would be app component which displays an input field so that user can enter customer ID into the input box.
2. Clicking on Submit button below would navigate him to URL "/customer/id" which is configured using angular routing (routerLink concept). Code availabe in "core module" file.
3. "customer.page.ts" file makes use of the activated route concept to fetch/map the "id" from URL and passes it to service to fetch data for that particular customer.
4. The service "customer.service.ts" will hit the "customer/:id" endpoint and returns the json value of customer data as an observable.(using rxjs observable conept in angular).
5. This navigates the user to a customer details page where all the details of customer such as first name, last name, address, etc. are displayed.

6. This is an MVC design pattern implemented in Angular framework where "customer.model.ts" file behaves as Model, "customer.page.html" is our View, and "customer.service.ts" is our Controller.



