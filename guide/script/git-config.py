#! /usr/bin/env python3
# coding: utf-8

import os 
import sys
import time

class style:
  RED = '\033[91m' 
  DARKCYAN = '\033[36m' 
  PURPLE = '\033[95m' 
  GREEN = '\033[92m' 
  YELLOW = '\033[93m' 
  BOLD = '\033[1m'
  END = '\033[0m'

def main():
  print(" \n ")
  print(style.BOLD+"~ GIT-CONFIG.PY script ~"+style.END)

#MAIL
  print(" \n ")
  print(style.BOLD+"Please enter a valid email address :)"+style.END)
  newMail = raw_input(style.GREEN + style.BOLD +"[🅽🅴🆆-🅼🅰🅸🅻 > " + style.END)
  os.system("git config --global user.email '{0}'".format(newMail)) 
  print(style.GREEN+"Creation new e-mail ... [done]"+ style.END)
  time.sleep(0.35)

#NAME
  print(" \n ")
  print(style.BOLD+"Please enter a name :)"+style.END)
  newName = raw_input(style.GREEN + style.BOLD +"[🅽🅴🆆-🅽🅰🅼🅴 > " + style.END)
  os.system("git config --global user.name '{0}'".format(newName))
  print(style.GREEN+"Creation new name ... [done]"+ style.END) 
  time.sleep(0.35)

#SYNTAX
  print(" \n ")
  os.system("git config --global color.ui true")
  print(style.GREEN+"Color syntax activated ... [done]"+ style.END)
  time.sleep(0.35)

#REBASE
  print(" \n ")
  os.system("git config --global branch.autosetuprebase always")
  print(style.GREEN+"rebase all pull (request) ... [done]"+style.END)
  time.sleep(0.35)

#CHECK
  print(" \n ")
  print(style.DARKCYAN +"\n[config-status-global]--------------------" + style.END)
  os.system("git config --list")
  print(style.DARKCYAN +"------------------------------------------" + style.END)

  print(style.GREEN +"\n[ALL-DONE!]" + style.END)

main();
print(style.BOLD +"\nSee you again !" + style.END)