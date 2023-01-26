Feature: Login

    Scenario: User Success Login
        Given user access splash screen
        When user try to login
        Then user verity successfuly login

    Scenario: User Success Logout
        Given user access homepage
        When user try to logout
        Then user successfuly logout