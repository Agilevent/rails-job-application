# Rails Job Application

### In order to be considered for a rails position, you must follow these steps.
*Note: This task should take no longer than 1 hour at the most.*

1. Fork this repository (if you don't know how to do that, google is your friend)
2. In the *rails-job-application* directory, scaffold a simple Rails 3 web app that models a [Charge object](https://stripe.com/docs/api#charge_object) (basically ... scaffold the charge object)
3. Also scafoold a customer object which has a first and last name. 

*The charge object has a customer property, this property is the customer id from the customer model.*

##### Seed 5 Customers into the system
    Customer 1: 
      First Name: Johny 
      Last Name: Flow

    Customer 2: 
      First Name: Rajagopalan
      Last Name: Bhavani Shankar

    Customer 3: 
      First Name: Andrew
      Last Name: Chung

    Customer 4: 
      First Name: Mike
      Last Name: Smith

  
##### Seed 20 transactions into the system

    10 Should be successful transactions:
      - 5 Should be valid and linked to Customer 1
      - 3 Should be linked to Customer 2
      - 1 Should be linked to Customer 3
      - 1 Should be linked to Customer 4
    
    5 Should be transactions that failed:
      - 3 Should be linked to Customer 3
      - 2 Should be linked to Customer 4
    
    5 should be disputed:
      - 3 should be linked to Customer 1
      - 2 should be linked to customer 2


##### Create a Visual Representation of Different Charges
On the view that shows all charges (most likely the *GET /charges* route), create three lists with headers. 

    List 1 - 
      Header: Failed Charges
      In this list set the background color of the rows to #FF0000 and list the Customers name, the charge amount and the date that the charge failed for each failed charge. 

    List 2 - 
      Header: Disputed Charges
      In this list set the background color of the rows to ##FF5400 and list hte Customers name, the charge amount and the date that the charge was disputed for each disputed charge. 

    List 3 - 
      Header: Successful Charges
      In this list simply display all the charges that were succesful. 

### Tests

Create the following RSpec tests:

  1.  Verify that there are three lists on the screen. One for Successful charges, one for failed charges and one for the disputed charges. 
  2.  Verify that in the Successful charges list there are 10 line items. Verify that in the failed charges list there are 5 failed charges. Verify that in the disputed charges list there are failed charges. 

## Once Complete
1. Commit and Push your code to your new repository
2. Send us a pull request, we will review your code and get back to you



