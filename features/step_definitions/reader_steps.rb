Given(/^I am aguest$/) do

end

When(/^I fill registeration form with valid data$/) do
  visit('/register')
  fill_in 'reader_email', with: 'reader01@mail.com'
  fill_in 'reader_password', with: 'mypassword'
  fill_in 'reader_password_confirmation', with: 'mypassword'
  click_button 'Register'
end