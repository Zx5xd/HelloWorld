import os
import re
from tkinter.messagebox import *
from tkinter.filedialog import *
from tkinter import *
from tkinter import messagebox



def selc():
    global filename
    filename = askopenfilenames(filetypes=(("webp, jpg, gif 파일", "*.webp *.jpg *.gif"),
                                           ("jpg 파일", "*.jpg"), ("gif 파일", "*.gif"), ("webp 파일","*.webp"),
                                           ("모든 파일", "*.*")))
    ch = 0
    func(ch)


def func(ch):
    for i in range(0, len(filename)):
        print(os.path.basename(filename[i]))
        name, ext = os.path.splitext(filename[i])
        if(ch == 0):
            os.renames(filename[i],
                   os.path.join(os.path.dirname(filename[i]),name+"."+e.get()))
        else:
            m = re.findall('\d',os.path.basename(name))
            if(len(m)>1):
                str = ""
                for j in range(0, len(m)):
                    str += m[j]
            elif(len(m)==1):
                str = "0"+m
            else:
                continue




def ent(event):
    selc()

def Az():
    ch = 1
    func(ch)


    

tk = Tk()
label = Label(tk, text="변경할 확장자").grid(column=0, row=0)

e = Entry(tk)
e.grid(column=0, row=1)
e.bind('<Return>',ent)
but = Button(tk, command=selc, text="Click").grid(column=1, row=1)
but2 = Button(tk, command=Az, text="Zero+").grid(column=1,row=2)
tk.mainloop()