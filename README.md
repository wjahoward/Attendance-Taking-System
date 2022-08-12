# Final Year Project (FYP)

Intro: This FYP (prototype) was done in 2018 (Year 3 Semester 1 of Singapore Polytechnic). 

Problem: The project is to improve the current (as of 2019) Student Attendance Taking System at Singapore Polytechnic. Currently, during lesson, a lecturer will write the Attendance Taking System (ATS) code on the whiteboard, and students are able to key it on their mobile phone and submit to the backend side via a API. However, during such instance, students can pass and send the ATS code to their other friends (for those who are not in school yet) and submit their ATS Code. 

Solution: To tackle this issue, my team and I have come up with a prototype - a mobile application that the students have to be physically present in order to submit their Attendance Code. For our mobile application, we have implemented a virtual beacon, iBeacon. iBeacon will transmit Bluetooth Low Energy (BLE) signals around a particular place and other devices with the iBeacon and Bluetooth-enabled will be able to detect them. So, for our project, we designed the mobile application in a way the lecturer is able to generate a lesson, transmitting the BLE signals around a classroom for the students to be able to detect them and submit their attendance.

Tech Stack: 
- Front-end: Xamarin (Android & iOS) 
- Back-end: .NET
- Database: MySQL

