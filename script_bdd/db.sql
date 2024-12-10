CREATE DATABASE miapp;
USE miapp;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

-- Ejemplo de usuario con contraseña cifrada: "123456"
INSERT INTO users (email, password) VALUES ('usuario@example.com', '$2y$10$Cq/B01PbCd0yx6n2FBKo7e3fP/h9t6PbuwfyO8ieCjN.xV0WvBc9W');
