##############################################################################################################################
####### Given #######
##############################################################################################################################


##############################################################################################################################
####### And #######
##############################################################################################################################

And(/^I click on "([^"]*)"/) do |arg|
  page.find(:xpath, "//div[text()='#{arg}']").click
end


##############################################################################################################################
####### Then #######
##############################################################################################################################

And(/^I (should|should not) see "([^"]*)"$/) do |vision,val|
  element = page.find(:xpath,"//*[contains(text(),'#{val}')]").text
  expect(element==val).to eq(vision=='should')
end

And(/^I am on "([^"]*)" tab$/) do |tab|
  page.find(:xpath,"//*[@class='nav-link clickable']/span[text()='#{tab}']").click
end

And(/^I have entered "([^"]*)" into "([^"]*)"$/) do |text,field|
  fieldarea = {'Event title'=>'eventTitle', 'Description'=>'eventDescription'}
  page.find(:id, "#{fieldarea[field]}").send_keys(text)
end

And(/^I select time (From|To) "([^"]*)"$/) do |period,time|
  page.find(:xpath, "//label[contains(text(),'#{period}')]/..//text()[contains(.,'HH:MM')]/ancestor::button[1]").click
  page.find(:xpath, "//input[@placeholder='HH']").send_keys(time[0..1])
  page.find(:xpath, "//input[@placeholder='MM']").send_keys(time[3..4])
  if time[6..7] == 'PM'
  page.find(:xpath, "//input[@placeholder='MM']/../..//button[contains(text(),'AM')]").click
  else
    # do_nothing
  end
end

And(/^I select "([^"]*)" from Recipients$/) do |recipients|
  page.first(:xpath, "//*[@role='combobox']").click
  page.first(:xpath, "//text()[contains(.,'#{recipients}')]/ancestor::div[1]").click
end

And(/^I have enterd date "([^"]*)" into "([^"]*)"$/) do |date, field|
  page.find(:xpath, "//input[@placeholder='#{field}']").send_keys(date)
end

And /^I save the event/ do
  page.find(:xpath,"//button[contains(text(),'Save')]").click
end
