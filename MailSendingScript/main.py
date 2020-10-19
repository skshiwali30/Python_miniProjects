import smtplib as s

#object from smtp class
ob = s.SMTP("smtp.gmail.com", 587)

# For encrypted connection
ob.starttls()

ob.login("<your host email id>", "<your password>")
subject = "Sending mail using python script"
body = "This is just a sample mail for testing the script"

message = "subject: {}\n\n{}".format(subject, body)

listOfMails = ["<mail1>", "<mail2>", "<mail3>"]
ob.sendmail("<your host email id>", listOfMails, message)
print("Message sent successfully..")
ob.quit()