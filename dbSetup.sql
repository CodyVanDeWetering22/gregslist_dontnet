CREATE TABLE
    IF NOT EXISTS accounts(
        id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
        createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
        updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
        name varchar(255) COMMENT 'User Name',
        email varchar(255) COMMENT 'User Email',
        picture varchar(255) COMMENT 'User Picture'
    ) default charset utf8 COMMENT '';

CREATE TABLE
    houses(
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        sqft INT NOT NULL,
        bedrooms INT NOT NULL,
        bathrooms DOUBLE NOT NULL,
        imgUrl VARCHAR(2000) NOT NULL,
        description VARCHAR(255) NOT NULL,
        price INT NOT NULL,
        createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
        updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update'
    ) default charset utf8 COMMENT '';

INSERT INTO
    houses(
        sqft,
        bedrooms,
        bathrooms,
        imgUrl,
        description,
        price
    )
VALUES (
        "2300",
        "2",
        "1",
        "https://www.google.com/imgres?imgurl=http%3A%2F%2Fchina6s.net%2Fwebp%2Fthe-destination-front-rendering_m.webp&tbnid=s1V0xQUfZSGmrM&vet=12ahUKEwiGzYrJ1eeCAxV3AjQIHerHBQ0QMygDegQIARB0..i&imgrefurl=https%3A%2F%2Fwww.thehousedesigners.com%2Fplan%2F2-story-contemporary-3304-square-feet-3-bedrooms-rec-room-6583%2F&docid=CixFkt56pMQ0AM&w=750&h=427&q=%20house&ved=2ahUKEwiGzYrJ1eeCAxV3AjQIHerHBQ0QMygDegQIARB0",
        "this is house is so welcoming to me and my family",
        "120000"
    );

DROP TABLE houses;

SELECT * FROM houses;

DELETE FROM houses WHERE id = 1