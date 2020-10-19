import requests
import json
from tkinter import *
from tkinter.messagebox import showinfo, showerror

def send_sms(number, message):
    url = "https://www.fast2sms.com/dev/bulk"
    params = {
        "authorization" : "<Authorization key from fast2SMS>",
        "sender_id" : "FSTSMS",
        "message" : message,
        "language" : "english",
        "route" : "p",
        "numbers" : number,
    }

    response = requests.get(url, params=params)
    result = response.json()
    print(result)
    return result.get("return")

# send_sms("8299413224", "Hello !! How are you?")

def btn_click():
    num = textNumber.get()
    msg = textMessage.get("1.0", END)
    result = send_sms(num, msg)
    if result == True:
        showinfo("Success", "Successfully sent")
    else:
        showerror("Failed", "Message not sent")


# Creating UI
root = Tk()
root.title("Message Sender App")
root.geometry("400x550")
font = ("Helvetica", 20, "bold")

textNumber = Entry(root, font = font)
textNumber.pack(fill = Y, pady = 20)

textMessage = Text(root)
textMessage.pack(pady = 20)

sendButton = Button(root, text = "Send", command = btn_click)
sendButton.pack()


root.mainloop()
