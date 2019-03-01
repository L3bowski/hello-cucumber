Feature: Is it Friday yet?
  Everybody wants to know when it's Friday

  Scenario: Wether Sunday is Friday
    Given today is "Sunday"
    When I ask whether today is Friday or not
    Then I should be told "Nope"

  Scenario Outline: Whether today is Friday or not
    Given today is "<day>"
    When I ask whether today is Friday or not
    Then I should be told "<answer>"

  Examples:
    | day | answer |
    | Monday | Nope |
    | Tuesday | Nope |
    | Wednesday | Nope |
    | Thursday | Nope |
    | Friday | TGIF |
    | Saturday | Nope |
    | Sunday | Nope |
    | random value | Nope |