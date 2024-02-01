# WiFi Website Backend

This project serves as the backend for a WiFi website, providing API endpoints to support various functionalities.

## Introduction

The WiFi Website Backend is designed to support the frontend of a WiFi-related website. It provides the necessary API endpoints for user authentication, review submissions, and other functionalities.

## Features

- **User Authentication:** Secure authentication system for user registration and login.
- **Review System:** Users can submit reviews related to the WiFi services.
- **API Endpoints:** Well-documented API endpoints for integration with the WiFi website frontend.

## Getting Started

### Prerequisites

- Ruby (version 3.0.2)
- Rails (version 7.0.6)
- MySQL

## Installation

1. Clone the repository

   ```bash
   git clone https://github.com/yourusername/wifi-website-backend.git

 ### 2. Change into the project directory:

cd wifi-website-backend
### 3. Install dependencies:

bundle install
### 4. Set up the database configuration:

Copy the config/database.yml.example file to config/database.yml and update the configuration according to your MySQL setup.

### 5. Run database migrations:
rails db:migrate
6. Start the Rails server:
rails server

# USAGE
## API Endpoints
### POST /users: Register a new user.

Example request:

json
Copy code
{
  "name": "John Doe",
  "password": "yourpassword",
  "telephone_number": 1234567890,
  "email": "john.doe@example.com"
}

### POST /sessions: User login.

Example request:

json
Copy code
{
  "name": "John Doe",
  "password": "yourpassword"
}
### POST /reviews: Create a new review (authentication required).

Example request:

json
Copy code
{
  "review": {
    "message": "This is a great product!"
  }
}
## Authentication

This project utilizes bcrypt for secure password hashing during user authentication, enhancing password protection through its salting mechanismContributing
<Explain how others can contribute to your project. Include guidelines for submitting issues or pull requests.>







