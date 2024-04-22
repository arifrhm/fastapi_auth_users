# FastAPI Authentication System

This repository contains a FastAPI application that implements a simple authentication system using JWT (JSON Web Tokens) for user authentication and authorization.

## Setup

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/arifrhm/fastapi_auth_users.git
   ```

2. **Install Dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

3. **Set Environment Variables:**
   Create a `.env` file in the root directory and add the following variables:
   ```plaintext
   DATABASE_URL=sqlite:///./test.db
   ```

4. **Run Migrations:**
   ```bash
   alembic upgrade head
   ```

## Usage

1. **Run the FastAPI Application:**
   ```bash
   uvicorn main:app --reload
   ```

2. **API Endpoints:**

   - **Register User:** `POST /register`
   - **Login:** `POST /login`
   - **Get Users:** `GET /getusers`
   - **Change Password:** `POST /change-password`
   - **Logout:** `POST /logout`

3. **API Documentation:**
   Once the server is running, you can access the API documentation at `http://localhost:8000/docs`.

## JWT Configuration

- **Access Token Expiry:** 30 minutes
- **Refresh Token Expiry:** 7 days

## Security

- JWT Secret Key should be kept secret and should not be shared publicly.

## Contributors

- [Arif Rahman](https://github.com/arifrhm)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
```
