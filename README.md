# Dexcom Automation Engineer Coding Challenge

This project is my submission to automate a simple webpage as part of job screening. It was completed in roughly three hours with a light existing knowledge of the technologies in use (Ruby, Cucumber, Capybara, Rspec).

The [generated report](http://htmlpreview.github.io/?https://github.com/iammike/dexcom-challenge/blob/master/report.html) and [screenshots](screenshots) associated with the requisite test cases have also been uploaded.

### Prerequisites

Ruby: https://www.ruby-lang.org/en/documentation/installation/

Cucumber: https://docs.cucumber.io/installation/ruby/

Capybara: https://github.com/teamcapybara/capybara#setup. For this project, you can ignore much of the setup; the web app is already running remotely.

Rspec: https://github.com/teamcapybara/capybara#using-capybara-with-rspec

ChromeDriver: http://chromedriver.chromium.org/getting-started

### Installing

Pull the respository to your local machine.

## Running the tests

For a basic run that outputs to the screen, run the following command:

```
cucumber
```

To output HTML, run the following command (will output to report.html):

```
cucumber --format html --out report.html
```

## Built With

* [RubyMine](https://www.jetbrains.com/ruby/) - Ruby IDE

## Authors

* **Michael Collins** - [iammike](https://github.com/iammike)

## Acknowledgments

* Google
* Stack Overflow
* Coffee
