$:.unshift(File.dirname(__FILE__) + '/../../../lib')
require 'automation'

Before do
	@uia = UIA.new("test.js")
end

After do
end

Given /^.* tap "([^"]*)"$/ do |arg1|
	@uia.navBar.buttons(arg1).tap
end

Given /^Then I should see an empty note$/ do
	@uia.textFields(0).valid == true
	@uia.textFields(0).value == ""
end

Given /^When I tap the note$/ do
	@uia.textFields(0).tap
end

Given /^Then I should see the keyboard$/ do
	@uia.keyboard.valid == true
end

Given /^When I type "([^"]*)"$/ do |arg1|
	@uia.keyboard.typeIn(arg1)
end

Given /^Then the keyboard should disappear$/ do
	@uia.keyboard.valid == false
end

Given /^Then I should see the list of notes$/ do
	@uia.tableViews(0).valid == true
end

Given /^Then I should see a note "([^"]*)" at the top$/ do |arg1|
	@uia.tableViews(0).cells(0).value == arg1
end

Given /^Then the note "([^"]*)" should have the current date$/ do |arg1|
	pending
end
