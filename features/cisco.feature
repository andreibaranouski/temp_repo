Feature: Execute All jobs
  We want to all jobs in jenkins

  Scenario: 1.Trigger Jenkins Job by name
    Given I am on the Login Page
    When I login with the valid user
    When I click on job link
      | job_name |
      | automationRunJunit_jira_create_issue    |
    When I click Build Now



