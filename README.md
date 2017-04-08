# Smooch-bug
Code to reproduce Smooch unread bug


Here is the bug in, the video: https://drive.google.com/file/d/0B0g6CU9FMYUWZXl5QmJJQXF3Mk0/view?usp=sharing


How to reproduce:

1. Open the app, create a cell by tapping on the '+' button (this is just the sample iOS app, we don't care of this part)
1. Start the chat, say hello
1. Close the chat
1. On another app integrated with Smooch (Slack for example), reply to this user
1. Go back on the iPhone, now the unread count is 1, which is normal.
1. Open the chat, see the reply but don't reply something else, the unread count is 0, normal.
1. Kill the app
1. Reopen it, and now you can see **the unread count is back 1**, without new messages!
