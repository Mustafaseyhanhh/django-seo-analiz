from django.shortcuts import render, redirect
from django.contrib import messages
from . import models
from django.http import HttpResponse
import json
import os

def checkKey(key):
    if key == "1":
        return True
    else:
        return False

def pingg(host):
    print("*"*20,"Girdi")
    response = os.system("ping -c 1 " + host)
    if response == 0:
        return True
    else:
        return True