# cucumber-demo
This is a demo project for [cucumber framework](https://cucumber.io/) used in a simple java application.

## run project
run `mvn clean install` from the root folder

## Import project in Eclipse

1. Choose Import... -> Existing Maven project
2. Select root folder and press ok -> Finish

## Run Cucumber tests

Run RunCukesTest as a simple JUnit test

Run tests for all non-manual features:

`mvn clean test`

Override default configuration and run only some specific tags 

`mvn clean test -Dcucumber.options="--tags 'not @manual and @issue:ABC-1'"`

Supported keywords in [Cucumber Tags Expressions](https://github.com/cucumber/cucumber/tree/master/tag-expressions) 
are: `and`, `or`, `not`.

## Manual Tests

To run features which can not be automated and require manual approval of a tester use

`mvn test-compile exec:java` 

This will produce second report `target/cucumber/manual.json`.