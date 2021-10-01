# doctors-appointment-api
Question-api is the backend of the app that polls answers from asking the question: Is a hot dog a sandwich? Why?. This repo host the backend. To access the react-redux frontend, go to [question-app]()

## Built With

- Ruby v3.0.0
- Ruby on Rails v6.1.4.1
- JWT
- rspec 5.0


### Project features

- A user can signup and login
- A logged in user can view questions
- A logged in user must be able to submit multiple answers


## API endpoint 

[question-api]()

## Getting Started

To get a local copy up and running follow these simple example steps.

### Setup   

The project repository can be found in [GitHub link](https://github.com/enaburekhan/question-api.git) or just clone the project using this command.


Open terminal on your workspace with
cd /home/workspace/question-api

### Installation

Install gems with:

```
bundle install
```

Setup database with:

```
   rails db:create
   rails db:migrate
```

### Usage   

Start server with:

```
    rails server
```

Open `http://localhost:3000/` in your browser.

### Run tests

```
    rpsec --format documentation
```

> If the test suite passes, you'll be ready to run the app in a local server:

# Deployment
To deploy to heroku first login in heroku

### heroku login
Create a new project in heroku

### heroku create
You can verify that the remote was added to your project by running:

 - git config --list | grep heroku 
 - git push heroku master 

### Migrate your database

heroku run rails db:migrate
heroku run rails db:seed

### Tools used on this project
- Visual Studio Code
- Rubocop for Visual Studio Code

## Author

👤 **Eric Enaburekhan**

- Github: [@enaburekhan](https://github.com/enaburekhan)
- Twitter: [@enaburekhaneric](https://twitter.com/enaburekhaneric)
- Linkedin: [@ericenaburekhan](https://www.linkedin.com/in/eric-enaburekhan-801a28100/)


## 🤝 Contributing

Contributions, issues and feature requests are welcome!

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Many thanks to the open source community for making it possible for me to use free tools.




