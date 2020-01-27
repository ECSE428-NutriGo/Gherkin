Feature: Create a new meal entry

As a NutriGo user 
I would like to create a meal entry composed of food items and macronutrient information
So that I can track my progress with which meals I have eaten over time

Scenario: Create a meal entry (Normal Flow)

Given NutriGo user is logged into the application 
And on the Add Meal Entry Page
When the user selects a meal from the available meals in the database
And the user submits the meal entry to the system
Then a new meal entry is created for the user
And a “Successfully created a Meal Entry” message is issued

Scenario: User attempts to create a new meal entry with a meal not already in database (Alternate Flow)

Given NutriGo user is logged into the application
And on the Add Meal Entry Page
When the user selects to create a new meal not in the database
Then the User gets redirected to the Create Meal Page 

Scenario: User attempts to create a new meal entry without a date (Error Flow)

Given NutriGo user is logged into the application
And on the Add Meal Entry Page
When the user creates a new meal entry without an associating date of meal
Then a “Meal Entry Date cannot be empty” message is issued

Scenario: User attempts to create a new meal entry without associating meal (Error Flow)

Given NutriGo user is logged into the application
And on the Add Meal Entry Page
When the user creates a new meal entry without an associating meal
Then a “Meal Entry must have a corresponding Meal chosen” message is issued

