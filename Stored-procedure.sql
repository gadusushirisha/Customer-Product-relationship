CREATE PROCEDURE [dbo].[GetCustomerDetails]
      (@Id int)
 AS
     select c.First_Name,
       c.Last_Name,
  c.Middle_name,
  c.Email_id,
  ca.Address_Line_1,
  ca.Address_line_2,
  ca.City,
  ca.State,
  ca.Zip,
  max(l.Login_DateTime) last_Login_date

from
 dbo.customer c left join
dbo.customer_address ca on c.customer_id = ca.customer_id left join
dbo.login_info l on c.customer_id = l.customer_id
Where c.customer_id = @Id
group by
c.First_Name,
       c.Last_Name,
  c.Middle_name,
  c.Email_id,
  ca.Address_Line_1,
  ca.Address_line_2,
  ca.City,
  ca.State,
  ca.Zip;
GO
