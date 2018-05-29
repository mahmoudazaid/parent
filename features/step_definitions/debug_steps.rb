########################################################################################################################
##  When
########################################################################################################################

When /^[I ]*wait [for ]*(\d+) seconds?$/ do |seconds|
  sleep(seconds.to_i)
end

When /^[I ]*pause$/ do
  print 'Press Return to continue...'
  STDIN.getc
end

When /^I debug$/ do
  binding.pry
end