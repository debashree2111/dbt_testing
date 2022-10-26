
{% docs __demo_dbt_postgres__ %}
## DVD Rental
The database DvdRental has 15 tables. Below are the different tables and a brief description of them.

  - actor — contains actors data including first name and last name.
  - film — contains films data such as title, release year, length, rating, etc.
  - film_actor — contains the relationships between films and actors.
  - category — contains film’s categories data.
  - film_category — containing the relationships between films and categories.
  - store — contains the store data including manager staff and address.
  - inventory — stores inventory data.
  - rental — stores rental data.
  - payment — stores customer’s payments.
  - staff — stores staff data.
  - customer — stores customer’s data.
  - address — stores address data for staff and customers
  - city — stores the city names.
  - country — stores the country names.

### Objective & Goals:
 - What are the top and least rented (in-demand) genres and what are their total sales?
   Can we know how many distinct users have rented each genre?
 - In which countries does Rent A Film have a presence and what is the customer base in each country? What are the total sales in each country? (from most to least)
 - Find customers that have rented movies priced $9.99
 - Find customers in store #1 that spent less than $2.99 on individual rentals, but have spent a total higher than $5.
{% enddocs %}