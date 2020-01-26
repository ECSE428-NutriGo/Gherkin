Feature: Edit User's Target Macronutrients

As a NutriGo user
I would like to set a target goal for different macronutrients
So that I may work towards certain diet goals 

Scenario: NutriGo User Sets Target Amount of Protein (Normal Flow)

Given a NutriGo user is logged into the application
When the user selects an existing macronutrient
And the user enters a positive value
And the user selects an existing metric for the nutrient
Then the target macronutrient value is set to this new value
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
