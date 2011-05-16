-- Apple Script for posting from NetNewsWrite to Twitter.app
-- Stolen and modified from TwitNews script 
-- http://blog.tinucleatus.com/?p=204

tell application "NetNewsWire"
	if index of selected tab = 0 then
		-- We're looking at headlines, so just get the headline URL
		set feed_url to URL of selectedHeadline
		set feed_title to title of selectedHeadline
	else
		-- We're looking at a web view tab, so we need to know which tab
		set i to index of selected tab
		set i to i + 1
		-- Get the tab's URL
		set URL_list to URLs of tabs
		set title_list to titles of tabs
		set feed_url to item i of URL_list
		set feed_title to item i of title_list
	end if
end tell

-- change the status message to your liking here:
set tweet to "Reading: " & feed_title & space & feed_url

tell application "System Events"
	open location "twitter://post?message=" & tweet
end tell