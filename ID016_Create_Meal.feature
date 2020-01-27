Feature: Create a new meal

As a NutriGo user
I would like to create a new meal composed of food items
So that food information can be given to the user

Scenario: Create a new meal (Normal Flow)

Given NutriGo user is logged into the application
When the user provides a correct name for the meal
And the user associates existing food items
Then a new meal is created
And a "Succesfully created a meal" message is issued

Scenario: Create a new meal without meal items (Alternate flow)

Given NutriGo user is logged into the application
And has naviated to the new meal page
When the user enters the meal title
And enters the macronutrient values for the meal
And the user submits the form
Then a new meal is created
And a "Successfully created a meal" message is issued

Scenario: User attempts to create an existing meal (Error flow)

Given NutriGo user is logged into the application
When the user provides an already existing name for the meal
And the user associates an already existing combination of food items
Then a "Already created" message is issued

Scenario: User attempts to create a meal without a name (Error flow)

Given NutriGo user is logged into the application
When the user provides an empty name for the new meal
Then a "Name cannot be empty" message is issued

Scenario: User attempts to create a meal with unexisting food item (Error flow)

Given NutriGo user is logged into the application
When the user associates a food item that is not created
Then a "Food item does not exist" message is issued

Scenario: User attempts to create a meal without associating food item (Error flow)

Given NutriGo user is logged into the application
When the user creates the new meal without associating food item
Then a "Meal has to be composed of at least one food item" message is issued
