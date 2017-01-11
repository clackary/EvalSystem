# Jasmine Unit Testing

[Jasmine Web Site](http://jasmine.github.io/)

### What is Jasmine?

Jasmine is a widely use behavior-driven development framework for testing JavaScript code. Its used to run parts of code in pieces and let you test specific functionality of your code without having to step through it each time you make a change.

### Why Jasmine Testing on this project?

When we first started this project and got into the code there were some problems:
1. Functions did a lot and you had to scroll and scroll to find the end
2. Code repeated itself many times over
3. It had some bugs in it but they were hard to pin point

While it had these problems the report and graph was working and we wanted to make sure as we changed code it continued to work. To introduce testing we had to follow SOLID principles that would make this better maintainable code. (read up on [SOLID principles](http://lmgtfy.com/?q=what+is+solid+principles+for+programming) if that is new to you, its important)

####Reasons for Testing
1. Better written code that is easier to read
2. JavaScript does not not compile and its hard to know why code is not working
3. Better able to handle and find bugs now and in the future
4. When adding new features you know if you broke something else
5. Learning Unit testing is important when looking for jobs
6. This code is going to be changed and modified by other students down the road and we won't be there to help you but the tests we write will
7. Jobs you apply to will require it as part of your job

### How to Use and Run Jasmine Testing

We setup a standalone setup for Jasmine so no matter what OS you are using or what SDK you want to use you can run these.  The spec folder contains the JavaScript files that have the tests written in them.  The Spec Runner html file will run those tests in any browser and display the results and if there is an error, where the error is and its stack trace. Its that easy as opening a web page.

### Don't know how to write tests?

First, go out and read about TDD (Test Driven Development) and what that is about.  Second, what a video about how to write tests or specs in Jasmine, trust us its easy. Third, take a look at what we have already written and run the tests.

We added this in so that we could focus our time and writing new code and less time debugging our own code and others code.  We want you to be able to focus more on adding to features and new reports rather then understanding our code and fixing our bugs.  Happy Programming.

---

#### Resources

- Jasmine Library
  - lib folder in the route of the project contains the Jasmine JavaScript code that runs the tests
- Spec (test) Runner
  - SpecRunner.html is the file you can open up and will run your tests for you and show you the results of those tests. You can have multiple files so you can divide them out between different reports and different parts of code.
- Spec Tests Files
  - in the spec folder you have your JavaScript code where you will write your tests.  You can have multiple of these or one that will run all your tests.  The only changes needed is include statements for both the JavaScript file you are testing and the test code itself.




```
