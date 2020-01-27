{\rtf1\ansi\ansicpg1252\cocoartf2511
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 Feature: Create a new meal entry\
\
As a NutriGo user \
I would like to create a meal entry composed of food items and macronutrient information\
So that I can track my progress with which meals I have eaten over time\
\
Scenario: Create a meal entry (Normal Flow)\
\
Given NutriGo user is logged into the application \
And on the Add Meal Entry Page\
When the user selects a meal from the available meals in the database\
And the user submits the meal entry to the system\
Then a new meal entry is created for the user\
And a \'93Successfully created a Meal Entry\'94 message is issued\
\
Scenario: User attempts to create a new meal entry with a meal not already in database (Alternate Flow)\
\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 Given NutriGo user is logged into the application\
And on the Add Meal Entry Page\
When the user selects to create a new meal not in the database\
Then the User gets redirected to the Create Meal Page \
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 \
Scenario: User attempts to create a new meal entry without a date (Error Flow)\
\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 Given NutriGo user is logged into the application\
And on the Add Meal Entry Page\
When the user creates a new meal entry without an associating date of meal\
Then a \'93Meal Entry Date cannot be empty\'94 message is issued\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 \
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 Scenario: User attempts to create a new meal entry without associating meal (Error Flow)\
\
Given NutriGo user is logged into the application\
And on the Add Meal Entry Page\
When the user creates a new meal entry without an associating meal\
Then a \'93Meal Entry must have a corresponding Meal chosen\'94 message is issued\
\
}