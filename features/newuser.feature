Feature: Register a new user

  Scenario: Navigate to the testing page (A01)
    Given I am on the Testing Page
    Then I should see "Register New User"
    And I take a screenshot named "A01 - Base page"

  @RequiredFields @ErrorHandling
  Scenario: Leave first name empty (A02)
    Given I am on the Testing Page
    When I fill in "Last name" with "Collins"
    And I fill in "Title" with "MD"
    And I fill in "Email" with "iammikec@gmail.com"
    And I fill in "Phone number" with "703-203-6673"
    And I fill in "Business name" with "IT By Mike, LLC"
    And I fill in "Address line 1" with "7627 N Berkeley Ave"
    And I fill in "City" with "Portland"
    And I select "State" of "OR"
    And I fill in "Zip" with "97203"
    And I check the "All terms" checkbox
    And I check the "Privacy policy" checkbox
    And I click the "Save User" button
    Then I should see "First Name cannot be blank"
    And I take a screenshot named "A02 - First name required"

  @InputLimits
  Scenario: First name accepts a maximum 15 characters (A03)
    Given I am on the Testing Page
    When I fill in "First name" with "ABCDEFGHIJKLMNOP"
    And I fill in "Last name" with "Collins"
    And I fill in "Title" with "MD"
    And I fill in "Email" with "iammikec@gmail.com"
    And I fill in "Phone number" with "703-203-6673"
    And I fill in "Business name" with "IT By Mike, LLC"
    And I fill in "Address line 1" with "7627 N Berkeley Ave"
    And I fill in "City" with "Portland"
    And I select "State" of "OR"
    And I fill in "Zip" with "97203"
    And I check the "All terms" checkbox
    And I check the "Privacy policy" checkbox
    Then I should see "First name" contains "ABCDEFGHIJKLMNO"
    And I take a screenshot named "A03 - Maximum 15 characters for first name"

  @HappyPath @RequiredFields
  Scenario: Suffix is not a required field (A04 & A05)
    Given I am on the Testing Page
    When I fill in "First name" with "Michael"
    And I fill in "Last name" with "Collins"
    And I fill in "Title" with "MD"
    And I fill in "Email" with "iammikec@gmail.com"
    And I fill in "Phone number" with "703-203-6673"
    And I fill in "Business name" with "IT By Mike, LLC"
    And I fill in "Address line 1" with "7627 N Berkeley Ave"
    And I fill in "City" with "Portland"
    And I select "State" of "OR"
    And I fill in "Zip" with "97203"
    And I check the "All terms" checkbox
    And I check the "Privacy policy" checkbox
    And I take a screenshot named "A04 - Suffix not filled out"
    And I click the "Save User" button
    Then I should see "Success! You have signed up."
    And I take a screenshot named "A05 - Registration success"

  @ErrorHandling
  Scenario: Title can only contains letters and spaces (A06 & A07)
    Given I am on the Testing Page
    When I fill in "First name" with "Michael"
    And I fill in "Last name" with "Collins"
    And I fill in "Title" with "C3PO"
    And I fill in "Email" with "iammikec@gmail.com"
    And I fill in "Phone number" with "703-203-6673"
    And I fill in "Business name" with "IT By Mike, LLC"
    And I fill in "Address line 1" with "7627 N Berkeley Ave"
    And I fill in "City" with "Portland"
    And I select "State" of "OR"
    And I fill in "Zip" with "97203"
    And I check the "All terms" checkbox
    And I check the "Privacy policy" checkbox
    And I click the "Save User" button
    Then I should see "Title can only contain letters and spaces"
    And I take a screenshot named "A07 - Title can only be letters and spaces"

  @HappyPath
  Scenario: Title can contain letters and spaces (A08)
    Given I am on the Testing Page
    When I fill in "First name" with "Michael"
    And I fill in "Last name" with "Collins"
    And I fill in "Title" with "IT Guy"
    And I fill in "Email" with "iammikec@gmail.com"
    And I fill in "Phone number" with "703-203-6673"
    And I fill in "Business name" with "IT By Mike, LLC"
    And I fill in "Address line 1" with "7627 N Berkeley Ave"
    And I fill in "City" with "Portland"
    And I select "State" of "OR"
    And I fill in "Zip" with "97203"
    And I check the "All terms" checkbox
    And I check the "Privacy policy" checkbox
    And I click the "Save User" button
    Then I should see "Success! You have signed up."
    And I take a screenshot named "A08 - Title can contain letters and spaces"