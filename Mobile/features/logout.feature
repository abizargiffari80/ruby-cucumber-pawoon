Feature: Logout

    Scenario: User Success Logout
        Given user access homepage
        When user try to logout
        Then user successfuly logout