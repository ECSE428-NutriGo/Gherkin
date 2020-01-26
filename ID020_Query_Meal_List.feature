Feature: Query Meal List

As a user
I would like to receive a list of all the meals in the system
So that I can decide what I should eat.

Scenario: User Request List of Meals (Normal Flow)

Given user "Mary Sue" is logged into the Nutrigo application
And the following Meals exist in the database:
| meal_name           | meal_id |
| Lamb Stroganoff     | 1       |
| Chicken Salad       | 2       |
| Spaghetti Bolognese | 30      |
| Lamb Stew           | 402     |
When user "Mary Sue" requests a list of meals
then the following list of meals is generated:
| meal_name           | meal_id |
| Lamb Stroganoff     | 1       |
| Chicken Salad       | 2       |
| Spaghetti Bolognese | 30      |
| Lamb Stew           | 402     |


Scenario: User Request List of Meals with Keyword (Alternate Flow)

Given user "Mary Sue" is logged into the Nutrigo application
And the following Meals exist in the database:
| meal_name           | meal_id |
| Lamb Stroganoff     | 1       |
| Chicken Salad       | 2       |
| Spaghetti Bolognese | 30      |
| Lamb Stew           | 402     |
When user "Mary Sue" requests a list of meals that contain "Lamb" in their title
then the following list of meals is generated:
| meal_name           | meal_id |
| Lamb Stroganoff     | 1       |
| Lamb Stew           | 402     |


Scenario: No Meals Available (Error Flow)

Given user "Mary Sue" is logged into the Nutrigo application
And the following Meals exist in the database:
| meal_name           | meal_id |
When user "Mary Sue" requests a list of meals
then a message indicating "No meals found. Consider making your own." is generated


Scenario: No Meals Matching Keyword Available (Error Flow)

Given user "Mary Sue" is logged into the Nutrigo application
And the following Meals exist in the database:
| meal_name           | meal_id |
| Lamb Stroganoff     | 1       |
| Chicken Salad       | 2       |
| Spaghetti Bolognese | 30      |
| Lamb Stew           | 402     |
When user "Mary Sue" requests a list of meals that contain "Fish" in their title
then a message indicating "No meals found. Consider making your own." is generated


Scenario: No Meals Available and Given Keywords (Error Flow)

Given user "Mary Sue" is logged into the Nutrigo application
And the following Meals exist in the database:
| meal_name           | meal_id |
When user "Mary Sue" requests a list of meals that contain "Fish" in their title
then a message indicating "No meals found. Consider making your own." is generated
