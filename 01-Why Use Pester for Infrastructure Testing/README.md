## Learning Objectives

Infrastructure monitoring and software testing have a lot of overlap.
Typically we think of performing unit tests, smoke tests, and other types of functional testing against code.
However, we can also use tests to determine the overall health of services, network equipment, servers, containers, and pretty much anything you can think of.

[Pester is an open source module](https://github.com/pester/Pester) for PowerShell programming language.

### Monitoring Ideas

* Is my DNS server responding with 1) an address, 2) the proper address?
* Can I ping my default gateway? What about a device across the Internet?
* Is my default gateway responding in less than 5 milliseconds?
* Are my cloud credentials configured correctly?
* Is my internal REST API endpoint accessible? How quickly is it responding?
* Is this Server Message Block (SMB) share accessible?
* Can I upload a 5 MB file to my FTP server?

### What We'll Learn

* How to install the latest Pester module for PowerShell
* Write ping and web endpoint tests
* Configure Pester test execution using a couple different approaches
* Run setup and teardown tasks for Pester tests
* Execute a subset of Pester tests using tags
* Integrate Pester with Amazon Web Services (AWS) PowerShell module for cloud resource management testing
