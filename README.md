<!--
*** Thanks for checking out this README Template. If you have a suggestion that would
*** make this better, please fork the repo and create a pull request or simply open
*** an issue with the tag "enhancement".
*** Thanks again! Now go create something AMAZING! :D
-->

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]


<!-- PROJECT LOGO -->
<br />
<p align="center">

  <h3 align="center">Air Ticket API</h3>

  <p align="center">
    This is an API for booking air tickets. It's a back-end application. It's built with Ruby On Rails
    <br />
    <a href="https://github.com/jamezjaz/Air_Tickets_API"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/jamezjaz/Air_Tickets_API/issues">Report Bug</a>
    ·
    <a href="https://github.com/jamezjaz/Air_Tickets_API/issues">Request Feature</a>
  </p>
</p>

<!-- TABLE OF CONTENTS -->
## Table Of Contents

* [About The Project](#about-the-project)
* [Built With](#built-with)
* [Endpoints :](#endpoints-:)
* [Deployment](#deployment)
* [Getting Started](#getting-started)
* [Automated Tests](#automated-tests)
* [Author](#author)
* [🤝 Contributing](#🤝-contributing)
* [Show Your Support](#show-your-support)
* [Acknowledgements](#acknowledgements)
* [License](#license)

<!-- ABOUT THE PROJECT -->
## About The Project

    This is an API for booking air tickets. It's a back-end application.
    The user authentications, model associations and validations are embedded on this API. It's built with Ruby On Rails.

### Built With
This project was built using these technologies.
* Ruby v2.7.1
* Ruby on Rails v6.1.3
* JWT
* bcrypt
* Cloudinary
* Carrierwave
* PostgreSQL

## Endpoints :

Method|End point | Public |Action
-----------|----------|--------------|------
POST | auth/register | True | Register a new user
POST | auth/login | True | Login a registered user
POST | airlines | False | Creates airlines
GET | airlines | False | Fetch all airlines
GET | airlines/:id | False | Fetch a details of a specific airline
POST | tickets | False | Book a ticket
GET | tickets | False | Fetch booked tickets


## Deployment

[Backend APIs Live Link](https://jaz-air-tickets.herokuapp.com/)

[Frontend Live Link](https://jaz-book-air-tickets.netlify.app/)


## Getting Started

To get a copy up and running follow these simple example steps:-
- Clone `https://github.com/jamezjaz/Air_Tickets_API` to your local machine.
- Run `bundle install` to install all dependancies.
- Run `rails s` to to run the application in development mode.
- Use postman to test the endpoints.

## Automated Tests

To run tests:

Run ```$ rspec```


<!-- CONTACT -->
## Author

## 👤 Odufu James Chigozie

 [![Website](https://img.shields.io/badge/-Website-black?style=for-the-badge&logo=Julia&logoColor=white)](http://jamezjaz.com/)
 [![LINKEDIN](https://img.shields.io/badge/-LINKEDIN-0077B5?style=for-the-badge&logo=Linkedin&logoColor=white)](https://www.linkedin.com/in/jamesgozieodufu/)
 [![EMAIL](https://img.shields.io/badge/-EMAIL-D14836?style=for-the-badge&logo=Mail.Ru&logoColor=white)](mailto:jamezjaz@gmail.com)
 [![TWITTER](https://img.shields.io/badge/-TWITTER-1DA1F2?style=for-the-badge&logo=Twitter&logoColor=white)](https://twitter.com/jamezjaz90)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/jamezjaz/Air_Tickets_API/issues).

## Show Your Support

Give a :star: if you like this project!


<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
* [Microverse](https://www.microverse.org/) - Microverse website

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/jamezjaz/Platform_Game.svg?style=flat-square
[contributors-url]: https://github.com/jamezjaz/Platform_Game/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/jamezjaz/Platform_Game.svg?style=flat-square
[forks-url]: https://github.com/jamezjaz/Platform_Game/network/members
[stars-shield]: https://img.shields.io/github/stars/jamezjaz/Platform_Game.svg?style=flat-square
[stars-url]: https://github.com/jamezjaz/Platform_Game/stargazers
[issues-shield]: https://img.shields.io/github/issues/jamezjaz/Platform_Game.svg?style=flat-square
[issues-url]: https://github.com/jamezjaz/Platform_Game/issues

## 📝 License

This project is [MIT](https://opensource.org/licenses/MIT) licensed.
