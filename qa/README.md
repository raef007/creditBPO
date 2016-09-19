## Cucumber Test Framework Installation Instruction
### Including Ruby and Selenium

You need Ruby 1.9.3 installed to run these tests.

    $ ruby --version
    ruby 1.9.3p551 (2014-11-13) [i386-mingw32]

Set up your testing environment like this:

Install git from git-scm.com
- Make sure to add the path to your PATH environment variable

Install Ruby 1.9.3 from http://rubyinstaller.org/

Install SDK for Ruby 1.9.3 from http://rubyinstaller.org/

Unzip in C:\Program Files\RubySDK

Then go to the sdk path and install the sdk.

    $ cd C:\Program Files\RubySDK
    $ ruby dk.rb init
    
If you have multiple instance of Ruby 1.9.3 installed (like with the heroku toolbelt), you'll need to edit the config.yml file to remove the heroku-ruby path from the file before running the next command.  On windows look here : C:\Users\<myUser>\AppData\Local\VirtualStore\Program Files\RubySDK

    $ ruby dk.rb install

Open a command line and install some gem

    $ gem install selenium-webdriver
    $ gem install cucumber -v 1.3.17
    $ gem install bundler

Clone the git repo from Venzee/QA

    $ git clone https://github.com/venzee/qa.git

Go in the repo and install Bundle + Rails

    $ cd qa
    $ bundle install
    $ gem install rails

 Download the Chrome Web driver here : https://sites.google.com/a/chromium.org/chromedriver/downloads
 - Unzip it here it on your C:\Program Files\ChromeDriver
 - Add it to your PATH environment variable