Feature: Send data to hipchat
  I want to be able to send data via command-line to my hipchat chatroom

  Scenario: Basic UI
    When I get help for "to_hipchat"
    Then the exit status should be 0
    And the banner should be present
    And there should be a one line summary of what the app does
    And the banner should include the version
    And the banner should document that this app takes options
    And the banner should document that this app's arguments are:
      |data|which is required|
