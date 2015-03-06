# extract_attachments

A command-line tool to extract attachments from an email message.

# Install

    npm install -g extract_attachments

If you get permission denied errors, try again with sudo:

    sudo npm install -g extract_attachments

# Using

If email.msg is the file you want to extract attachments from, do:

    extract_attachments email.msg

The attachments will be written to your current directory with their original names in the email.
