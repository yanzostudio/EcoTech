EcoTECH Sustainability Management System
EcoTECH is a sustainability management system designed to track and manage various sustainability metrics, resources, and usage for businesses or organizations. This system provides features for customer login, resource consumption tracking, and metrics management in the context of environmental sustainability.

Features
Customer Authentication: Login and registration for customers.
Dashboard: A user panel for managing and viewing sustainability data.
Project Record Keeping: Track sustainability metrics such as carbon footprint, energy consumption, etc.
Resource Usage Tracking: Monitor and record the usage of various resources.
Admin Panel: Admins can input resource consumption data for tracking purposes.
Requirements
Java: Version 8 or later.
NetBeans IDE: Version 8.2 or later.
GlassFish Server: Version 5.1 or later for deployment.
Apache Derby Database: For storing application data (you can also use other databases if preferred, but Derby is the default).
Getting Started
1. Clone the Repository
Clone this repository to your local machine using:

bash
Copy
Edit
git clone https://github.com/yourusername/EcoTECH.git
2. Set Up the Database
You will need to import the provided database file into your local Derby database instance.

Download the EcoTECH Database File (EcoTECH_DB.sql) from the releases section or include it in this repository.
Create a new Derby database (or use an existing one).
Import the EcoTECH_DB.sql into your database to set up the necessary tables and relationships.
3. Configuration
Update the database connection settings in the DataSource.java file to match your local database configuration. The default connection URL for Derby is:

java
Copy
Edit
jdbc:derby://localhost:1527/EcoTECH_DB;create=true
Change the database name if you are using a different name.

4. Run the Application
Open the project in NetBeans IDE.
Build the project.
Right-click the project in NetBeans and select Run to start the application.
The application will be deployed to the GlassFish server.
5. Accessing the Application
Once the application is running:

Login: Navigate to http://localhost:8080/EcoTECH/login.jsp to log in as a customer or admin. Use the credentials provided in the database or create a new user if needed.
Admin Panel: After logging in, you will be redirected to the user panel for customers, or to the admin panel if you have admin privileges.
Files Included
EcoTECH_DB.sql: Database schema file to set up the Derby database.
LoginBean.java: JavaBean for handling user login functionality.
EcoTECH.drawio.png: ERD diagram for the EcoTECH database schema.
JSP Pages: Front-end pages for login, user panel, and admin panel.
Contributing
If you’d like to contribute to EcoTECH, feel free to fork the repository, make your changes, and submit a pull request.

License
This project is licensed under the MIT License - see the LICENSE file for details.
