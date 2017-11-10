# -*- coding: utf-8 -*-
"""
Created on Tue Oct 17 21:44:39 2017

@author: jayfman
"""
import csv
import requests
BaseUrl = "https://english.uchicago.edu/"
AllStudentsUrl = "people/graduate"

#grabs link to name from the line that contains the name
def getDirectory(line):
    print (line)
    firstchar = "a href"
    lastchar = "<img"
    start = line.index(firstchar)
    end = line.index(lastchar)
    print (line[start:end])
    return (line[start:end])
    
#Grabs name string from line with name, returns a list with the [first name,last name]
def getName(line):
    firstchar = "<title>"
    lastchar = " | "
    start = line.index(firstchar)
    end = line.index(lastchar)
    name = (line[start+7:end])
    #takes care of nicknames in parenthasis
    if "(" in line:
        firstlastName = [name[name.index("(")+1:name.index(")")],name[name.index(")")+1:]]
    else:
        firstlastName = [name[:name.index(" ")],name[name.index(" "):]]

    return firstlastName

#Grabs email from string with email
def getEmail(line):
    firstchar = "\">"
    lastchar = "</a>"
    start = line.index(firstchar)
    end = line.index(lastchar)
    email = (line[start+2:end-4])
    
    return email
#program that runs getEmail and getName and returns the data in one list
def getStudentInfo(directory):
    StudentInfo = []
    newUrl = BaseUrl+"/"+directory
    newoutput = requests.get(newUrl).text.split('\n')
    for line in newoutput:
        if "<title>" in line:
            StudentInfo = (getName(line))
        if "@" in line:
            StudentInfo.append((getEmail(line)))
            return StudentInfo

 

#Gets a list to a link of all student profiles
StudentDirectory = []
output = requests.get(BaseUrl+AllStudentsUrl).text.split('\n')
for line in output:
    if "field-field-photo" in line:
        StudentDirectory.append(getDirectory(line))
StudentInformation = []
for Student in StudentDirectory:
    StudentInformation.append(getStudentInfo(Student))


#with open('english.csv', 'wb') as f:
 #   writer = csv.writer(open("english.csv", 'w'))
  #  for row in StudentInformation:
   #         writer.writerow(row)
