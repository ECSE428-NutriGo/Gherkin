Feature: Create a new meal item

As a NutriGo user
I would like to create a new meal item
So I can specify the macronutrients and can include a new item in my meals

Scenario: Create a new meal item (Normal Flow)

Given NutriGo user is logged into the application
And has navigate to the add new food item page
When the user provides a name for a meal item
And the user enters the nutritional information for the meal item
And each value for nutritional information entered is positive
And the user selects the visibility (private or public) for the meal item
And the user submits the form
Then a new meal item is created in the database
And a "Succesfully created a meal item" message is issued

Scenario: User attempts to create an existing meal item (Alternate flow)

Given NutriGo user is logged into the application
When the user provides an already existing name for a meal item
Then a "This food item already exists, do you still want to create a new meal item" confirmation message is issued
Then the user selects to follow the normal flow or abort

Scenatio: Create a new meal item while creating a meal (Alternate flow)

Given NutriGo user is logged into the application
And is creating a new meal
When the user selects to add a new meal item while creating the meal
Then the user is redirected to the create new food item page
Then the user enters a meal item title
And the user enters the nutritional value
And the user selects the visibility of the item
When the user submits the form
Then a new meal item is created in the database
And a "Succesfully created a meal item" message is issued
Then the user is redirected back to the new meal page
And the user is able to add their new meal item to their meal

Scenario: User attempts to create a meal item without a name (Error flow)

Given NutriGo user is logged into the application
And is on the creating new meal item page
When the user provides an empty name for the new meal item
Then a "Name cannot be empty" message is issued

Scenario: User attempts to create a meal item with negative values for nutritional information (Error flow)

Given NutriGo user is logged into the application
And is on the creating new meal item page
And the user has provided a title for the new meal item
When a user enters negative values for nutritional information
Then a "Nutritional information must be positive" message is issued