Given /^I am on the Login Page$/ do
  visit_page LoginPage
end

Given /^I am on the Main Page$/ do
  visit_page DashboardPage
end

When /^I login with the valid user$/ do
  @current_page = @current_page.login Common.get_property('default_user', 'email'),
                                      Common.get_property('default_user', 'pass')
  @current_page.text().should include("New Item")
end

When /^I click on job link$/ do |table|
  data = table.hashes.first
  @current_page = @current_page.click_job_link data[:job_name]
end

When /^I click Build Now$/ do
  @current_page.click_build_now
end
