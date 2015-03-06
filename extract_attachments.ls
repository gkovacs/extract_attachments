require! {
  mailparser
  fs
}

parser = new mailparser.MailParser()

email = fs.readFileSync process.argv[2], 'utf-8'

parser.on 'end', (mail) ->
  for attachment in mail.attachments
    {fileName, content} = attachment
    fs.writeFileSync fileName, content

parser.write(email)
parser.end()
