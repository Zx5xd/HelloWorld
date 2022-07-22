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
    func()


def func():
    for i in range(0, len(filename)):
        #print(os.path.basename(filename[i]))
        name, ext = os.path.splitext(filename[i])

        basename = os.path.basename(name)
        m = re.findall('\d',basename)
        print(basename)

        if(len(m)==1):
            basename = basename.replace(m[0], "0" + m[0])
            os.renames(filename[i],
            os.path.join(os.path.dirname(filename[i]),basename+"."+e.get()))
        else:
            os.renames(filename[i],
                       os.path.join(os.path.dirname(filename[i]), name + "." + e.get()))


def ent(event):
    selc()



    

tk = Tk()

e = Entry(tk)
e.grid(column=0, row=1)
e.bind('<Return>',ent)
but = Button(tk, command=selc, text="Click").grid(column=1, row=1)
tk.mainloop()