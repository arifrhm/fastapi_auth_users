-- Create User Table
CREATE TABLE User (
    id INTEGER PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- Create TokenTable Table
CREATE TABLE TokenTable (
    id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    access_token VARCHAR(255) NOT NULL,
    refresh_token VARCHAR(255) NOT NULL,
    status BOOLEAN NOT NULL,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES User(id)
);

-- Insert Dummy Users
INSERT INTO User (username, email, password) VALUES
('user1', 'user1@example.com', '$2b$12$FZ4c7U.eey5zqq4ETCW0we1Mf8idD3zN56.U3VLO6.bylBoYy.VXe'), -- Password: password1
('user2', 'user2@example.com', '$2b$12$E3aOhsYt.Zvm8oBEGdyj4uLyI5YTw8KpgJREd9IdkH/y9c9tdU/Ma'); -- Password: password2

-- Insert Dummy Tokens
INSERT INTO TokenTable (user_id, access_token, refresh_token, status, created_date) VALUES
(1, 'dummy_access_token_user1', 'dummy_refresh_token_user1', TRUE, '2024-04-22 08:00:00'),
(2, 'dummy_access_token_user2', 'dummy_refresh_token_user2', TRUE, '2024-04-22 08:00:00');
