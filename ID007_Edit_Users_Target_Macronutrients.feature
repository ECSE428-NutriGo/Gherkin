Feature: Edit User's Target Macronutrients

As a NutriGo user
I would like to set a target goal for different macronutrients
So that I may work towards certain diet goals 

Scenario: NutriGo User Sets Target Amount of Macronutrients (Normal Flow)

Given a NutriGo user is logged into the application
When the user sets values for existing macronutrients
And the user enters positive values
And the user selects existing metrics for the nutrients
Then each target macronutrient value is set to its selected new value
And a "Successfully edited macronutrient values" message is issued

Scenario: NutriGo User Attempts to edit a single macronutrient (Alternate flow)

Given a NutriGo user is logged into the application
And has navigated to the edit goals page
When the user enters a new value for a single macronutrient
And the user saves the updated settings
Then the system saves the new value in the database
And a "Successfully edited macronutrient value" message is issued

Scenario: NutriGo User Attempts to edit a macronutrient without providing a macronutrient name (Error Flow)

Given a NutriGo user is logged into the application
When the user provides an empty macronutrient name
Then a "Macronutrient name cannot be empty" message is issued

Scenario: NutriGo User Attempts to edit a macronutrient while providing a negative value (Error Flow)

Given a NutriGo user is logged into the application
When the user provides a negative macronutrient value
Then a "Macronutrient quantity cannot be negative" message is issued

Scenario: NutriGo User Attempts to edit a macronutrient without providing an existing macronutrient measurement (Error Flow)

Given a NutriGo user is logged into the application
When the user provides an empty value for the macronutrient measurement (ex. g, mg)
Then a "Macronutrient measurement cannot be empty" message is issued
