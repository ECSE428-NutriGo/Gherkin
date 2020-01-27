Feature: Add new user

As a NutriGo user
I would like to create an account in the system
So I can track my meals and get meal assumptions from the system

Scenario: Create a new account from signup page (Normal Flow)

Given new NutriGo user is on the signup page
When the user enters their email, password, and confirm password
And the user submits the form
Then a new account is created in the database for the user
And a "Succesfully created an account" message is issued
Then the user is redirected to the home page

Scenario: Create a new account and passwords do not match (Alternate flow)

Given new NutriGo user is on the signup page
When the user enters their email, password, and confirm password
And the password and confirm password do not match
And the user submits the form
Then a "Password and confirm password" message is issured
When the user re-enters the password such that password and confirm password match
And the user re-submits the form
Then a new account is created in the database for the user
And a "Succesfully created an account" message is issued
Then the user is redirected to the home page

Scenario: User attempts to create an account with an email that is already associated with an account (Error flow)

Given NutriGo user is on the signup page
When the user enters their email, password, and confirm password
And the email is already in use by another account in the system
And the user submits the form
Then an "Email is already in use" message is issued
And no account is created in the database

Scenario: User attempts to create an account and leaves fields blank (Error flow)

Given user is on the signup page
When the user submits the form
And one or many of the email, password, or confirm password is left blank
Then an "Field is left blank" message is issued
And no account is created in the database
