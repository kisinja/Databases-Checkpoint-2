-- Hotel Table
CREATE TABLE
    Hotel (
        hotel_id INT PRIMARY KEY,
        name VARCHAR(255),
        address VARCHAR(255),
        phone VARCHAR(50)
    );

-- Room Table
CREATE TABLE
    Room (
        room_id INT PRIMARY KEY,
        room_type VARCHAR(50),
        price DECIMAL(10, 2),
        hotel_id INT,
        FOREIGN KEY (hotel_id) REFERENCES Hotel (hotel_id)
    );

-- Guest Table
CREATE TABLE
    Guest (
        guest_id INT PRIMARY KEY,
        first_name VARCHAR(50),
        last_name VARCHAR(50),
        address VARCHAR(255),
        dob DATE,
        gender CHAR(1)
    );

-- Reservation Table
CREATE TABLE
    Reservation (
        reservation_id INT PRIMARY KEY,
        reservation_date DATE,
        check_in_date DATE,
        check_out_date DATE,
        guest_id INT,
        room_id INT,
        FOREIGN KEY (guest_id) REFERENCES Guest (guest_id),
        FOREIGN KEY (room_id) REFERENCES Room (room_id)
    );