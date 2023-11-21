-- Add up migration script here
BEGIN;

    CREATE TABLE IF NOT EXISTS slides (
        id CHAR(36) PRIMARY KEY NOT NULL,
        show_id CHAR(36) NOT NULL,
        user_id INT UNSIGNED NOT NULL,
        content VARCHAR(255) NOT NULL,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        index_number INT NOT NULL
    );

    CREATE TABLE IF NOT EXISTS shows (
        id CHAR(36) PRIMARY KEY NOT NULL,
        user_id INT UNSIGNED NOT NULL,
        title VARCHAR(255) NOT NULL,
        description TEXT NOT NULL,
        public BOOLEAN NOT NULL,
        view_code CHAR(36) UNIQUE NOT NULL,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    );

    CREATE TABLE IF NOT EXISTS favorites (
        id CHAR(36) PRIMARY KEY NOT NULL,
        show_id CHAR(36) NOT NULL,
        user_id INT UNSIGNED NOT NULL,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    );  

    CREATE TABLE IF NOT EXISTS editors (
        id CHAR(36) PRIMARY KEY NOT NULL,
        show_id CHAR(36) NOT NULL,
        user_id INT UNSIGNED NOT NULL,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    );  

COMMIT;
