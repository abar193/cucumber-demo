Feature: Withdraw money
    In order to avoid going to the bank
    As a customer
    I want to withdraw money from an ATM

    @run_me
    Scenario: Withdraw less money than the account has
        Given I have 200 SEK on my account
        When I withdraw 100 SEK
        Then I get 100 SEK from the ATM
        And My account has 100 SEK left

    @run_me
    Scenario: Withdraw more money than the account has
        Given I have 50 SEK on my account
        When I withdraw 100 SEK
        Then I get 0 SEK from the ATM
        And My account has 50 SEK left
        And error message about the lack of money is displayed

    Scenario: Withdraw negative amount from the account
        Given I have 50 SEK on my account
        When I withdraw -1 SEK
        Then I get 0 SEK from the ATM
        And My account has 50 SEK left
        And error message about incorrect amount is displayed

    @manual
    @issue:ABC-1
    Scenario: Manual test 1
        Given I have 50 SEK on my account
        When I withdraw -1 SEK
        Then I get 0 SEK from the ATM
        And error message about incorrect amount is displayed
        And evaluate manually

    @manual
    Scenario: Manual test 2
        Given I have 150 SEK on my account
        When I withdraw 150 SEK
        Then I get 150 SEK from the ATM
        And My account has 0 SEK left
        And evaluate manually