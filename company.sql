CREATE DATABASE company_db;

-- Use the newly created database
USE company_db;

-- Create the applications table
CREATE TABLE applications (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    contact_number VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL,
    post_applied VARCHAR(50) NOT NULL,
    years_of_experience INT NOT NULL,
    other_details TEXT,
    resume LONGBLOB,
    submission_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create the contacts table
CREATE TABLE contacts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    contact_number VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL,
    message TEXT NOT NULL,
    submission_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample data into the applications table
INSERT INTO applications (name, contact_number, email, post_applied, years_of_experience, other_details, resume)
VALUES 
('John Doe', '1234567890', 'john.doe@example.com', 'Web Designer', 5, 'Experienced in full-stack development', NULL),
('Jane Smith', '0987654321', 'jane.smith@example.com', 'Web Developer', 3, 'Proficient in Python and SQL', NULL),
('Alice Johnson', '5551234567', 'alice.johnson@example.com', 'Mobile App Designer', 7, 'Managed multiple large projects', NULL),
('Bob Brown', '4449876543', 'bob.brown@example.com', 'Mobile App Developer', 4, 'Expert in network security', NULL),
('Charlie Green', '3336547890', 'charlie.green@example.com', 'Digital Marketer', 2, 'Specialized in user experience design', NULL);

-- Insert sample data into the contacts table
INSERT INTO contacts (name, contact_number, email, message)
VALUES 
('Emily White', '1112223333', 'emily.white@example.com', 'Interested in your services. Please contact me.'),
('Michael Black', '2223334444', 'michael.black@example.com', 'Looking for partnership opportunities.'),
('Samantha Blue', '3334445555', 'samantha.blue@example.com', 'Need more information about your products.'),
('David Red', '4445556666', 'david.red@example.com', 'Can you provide a quote for bulk orders?'),
('Olivia Yellow', '5556667777', 'olivia.yellow@example.com', 'I have a question regarding my recent purchase.');
