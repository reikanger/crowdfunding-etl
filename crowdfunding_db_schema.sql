DROP TABLE IF EXISTS campaign, category, contacts, subcategory CASCADE;

CREATE TABLE contacts (
    contact_id INT NOT NULL,
    first_name VARCHAR(50) NULL,
    last_name VARCHAR(50) NULL,
    email VARCHAR(50) NULL,
    PRIMARY KEY (contact_id)
);

CREATE TABLE category (
    category_id VARCHAR(50) NOT NULL,
    category VARCHAR(50) NOT NULL,
    PRIMARY KEY (category_id)
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(50) NOT NULL,
    subcategory VARCHAR(50) NOT NULL,
    PRIMARY KEY (subcategory_id)
);

CREATE TABLE campaign (
    cf_id INT NOT NULL,
    contact_id INT NOT NULL,
    company_name VARCHAR(100) NULL,
    description VARCHAR(100) NULL,
    goal FLOAT NULL,
    pledged FLOAT NULL,
    outcome VARCHAR(50) NULL,
    backers_count INT NULL,
    country VARCHAR(50) NULL,
    currency VARCHAR(50) NULL,
    launched_date DATE NULL,
    end_date DATE NULL,
    category_id VARCHAR(50) NOT NULL,
    subcategory_id VARCHAR(50) NOT NULL,
    PRIMARY KEY (cf_id),
    FOREIGN KEY(contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY(category_id) REFERENCES category(category_id),
    FOREIGN KEY(subcategory_id) REFERENCES subcategory(subcategory_id)
);