A simple and clean Register & Login System built using JSP, Servlet, JDBC, MySQL, and Tomcat.
This project demonstrates user registration, login authentication, and secure database connectivity.

🚀 Features
User Registration
User Login
Input Validation
JDBC Database Connectivity
Session Handling
Beautiful UI for Landing Page (Login & Register Buttons)
🛠️ Technologies Used
Java (JSP + Servlet)
JDBC
MySQL
HTML / CSS
Tomcat Server
Eclipse / IntelliJ / NetBeans
📂 Project Structure
RegisterLogin/ ├── src/ │ ├── com.yourpackage.dao/ │ ├── com.yourpackage.servlet/ │ └── com.yourpackage.model/ ├── WebContent/ or webapp/ │ ├── index.jsp │ ├── login.jsp │ ├── register.jsp │ └── WEB-INF/ │ └── web.xml └── README.md

CREATE DATABASE LogReg; USE LogReg;

CREATE TABLE register ( id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(100), email VARCHAR(100) UNIQUE, password VARCHAR(100) ); Open the project in Eclipse / IntelliJ

Configure Tomcat Server

Add MySQL JDBC Driver in lib/

Configure database in your DAO file

Run the project using: http://localhost:8080/RegisterLogin/ 🖥️ Landing Page UI

The landing page contains:

Project Description

Login Button

Register Button

🤝 Contributing

Pull requests are welcome! For major changes, open an issue first to discuss what you want to improve.

📧 Contact

Author: Saurav Kumar If you need support or guidance, feel free to reach out!
