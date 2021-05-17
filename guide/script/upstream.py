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
  print(style.BOLD+"~ UPSTREAM.PY script (update your repository) ~"+style.END)

  print(" \n ")
  temp = raw_input(style.BOLD+"You are sure you want to update the FORK, [ENTER] to continue, [CTRL + C] to cancel ..."+style.END)
  print(" \n ")

  #add upstream
  print(style.PURPLE+"Enter 'HTTPS url' from the original repository ..."+style.END)
  url = raw_input(style.GREEN + style.BOLD+ "[🆄🆁🅻 > " + style.END) 

  print(" \n ")

  os.system("git remote add upstream {0}".format(url))
  print(style.GREEN+"upstream added ... [done]"+style.END)
  time.sleep(0.35)

  os.system("git remote -v")
  print(style.GREEN+"verify upstream ... [done]"+style.END)
  time.sleep(0.35)

  os.system("git fetch upstream")
  print(style.GREEN+"fetch upstream ... [done]"+style.END)
  time.sleep(0.35)

  os.system("git branch -a")
  print(style.GREEN+"verify remote branch upstream ... [done]"+style.END)
  time.sleep(0.35)

  os.system("git merge upstream/master")
  print(style.GREEN+"auto update all informations on branch master ... [done]"+style.END)
  time.sleep(0.35)

  print(" \n ")

  print(style.GREEN+style.BOLD+"fast-forward ... [done]"+style.END)
  time.sleep(1)

  print(style.GREEN +"\n[ALL-DONE!]" + style.END)

main();
print(style.BOLD +"\nSee you again !" + style.END)
