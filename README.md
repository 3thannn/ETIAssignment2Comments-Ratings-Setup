<br />
<div align="center">
  <h3 align="center">How to setup your test Rating and Comments Microservice!</h3>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contact">Contact</a></li>

  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

[![Product Name Screen Shot][product-screenshot]](https://example.com)

I have included all the necessary code in this repository for you to implement the comment and rating microservice into you guy's various different packages.

There are a total of 6 microservices you will need to run:
* Comment Microservice
* Rating Microservice
* Tutor Microservice
* Student Microservice
* Module Microservice
* Class Microservice


## Things to take note
If any of the above microservices is under your package, please do use your own as the last 4 stated above is simply to mock the data and to be able to return those data back to Comment & Rating Microservices for testing purposes.


<p align="right">(<a href="#top">back to top</a>)</p>



### Built With

* [GOLANG](https://go.dev/)
* [HTML](https://html.com/)
* [JavaScript](https://reactjs.org/)
* [Bootstrap](https://getbootstrap.com)
* [JQuery](https://jquery.com)
* [MYSQL](https://www.mysql.com/)

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

This is an example of how you may give instructions on setting up your project locally.
To get a local copy up and running follow these simple example steps.

### Prerequisites<br />

  Please ensure that GOLANG and MYSQL is installed on your system, and is fully operational

  Please do also ensure that your SQL user login is as such:
 ```sh
    Username: root
    Password: password
 ```
### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/3thannn/ETIAssignment2Comments-Ratings-Setup
   ```
2. Install necessary libraries
   ```sh
   go get -u github.com/go-sql-driver/mysql
   go get -u github.com/gorilla/mux
   go get -u github.com/gorilla/handlers
   ```
3. Execute database scripts located in `/db/`

 
<!-- CONTACT -->
## Contact

Ethan Leong - Personal - ethan.leong@gmail.com - School - s10185214@connect.np.edu.sg

Project Link: [https://github.com/3thannn/ETIAssignment2Comments-Ratings-Setup]https://github.com/3thannn/ETIAssignment2Comments-Ratings-Setup)

<p align="right">(<a href="#top">back to top</a>)</p>

