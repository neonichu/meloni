Feature: Edit list of notes
	In order to organize their notes
	Users must be able to manipulate the list of notes

#Background:
#	Given "PlainNote" from "PlainNote.xcodeproj" is running

Scenario: Add new note
	* When I tap "+"
	* Then I should see an empty note
	
	* When I tap the note
	* Then I should see the keyboard
	
	* When I type "Test"
	* Then tap "Done"
	* Then the keyboard should disappear

	* When I tap "Save"
	* Then I should see the list of notes
	* Then I should see a note "Test" at the top
	* Then the note "Test" should have the current date
