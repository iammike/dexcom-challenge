Given(/^I am on the Testing Page$/) do
  visit 'https://shrouded-lowlands-66853.herokuapp.com'
end

Then(/^I should see "([^"]*)"$/) do |text|
  page.should have_text text
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, text|
  field = field.sub('line ', '') # Address label to input box ID doesn't following standard scheme and needs special attention
  field = convert_to_id(field)
  fill_in field, with: text
end

And(/^I select "([^"]*)" of "([^"]*)"$/) do |field, text|
  field = convert_to_id(field)
  select text, from: field
end

And(/^I check the "([^"]*)" checkbox$/) do |box|
  check 'user_agree_1' if box == 'All terms'
  check 'user_agree_2' if box == 'Privacy policy'
end

And(/^I click the "([^"]*)" button$/) do |label|
  click_button label
end

Then(/^I should see an error message "([^"]*)"$/) do |text|
  page.should have_text text
end


Then(/^I should see "([^"]*)" contains "([^"]*)"$/) do |field, text|
  field = convert_to_id(field)
  page.should have_field field, with: text
end

And(/^I take a screenshot named "([^"]*)"$/) do |test_step|
  screenshot_file = "screenshots/#{test_step}.png"
  page.save_screenshot(screenshot_file)
end