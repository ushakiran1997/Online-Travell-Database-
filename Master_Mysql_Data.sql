-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema mmt
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mmt
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mmt` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `mmt` ;

-- -----------------------------------------------------
-- Table `mmt`.`transport`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`transport` (
  `Transport_ID` INT NOT NULL,
  `Transport_Mode` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`Transport_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mmt`.`flight_revenue`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`flight_revenue` (
  `aircrafttype` VARCHAR(100) NOT NULL,
  `aircraftRevenue` FLOAT NOT NULL,
  `Transport_ID` INT NOT NULL,
  PRIMARY KEY (`aircrafttype`),
  CONSTRAINT `fk_flight_revenue_transport1`
    FOREIGN KEY (`Transport_ID`)
    REFERENCES `mmt`.`transport` (`Transport_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `fk_flight_revenue_transport1_idx` ON `mmt`.`flight_revenue` (`Transport_ID` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mmt`.`aircraft`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`aircraft` (
  `aircrafttype` VARCHAR(50) NOT NULL,
  `adescription` VARCHAR(40) NOT NULL,
  `noseats` SMALLINT NOT NULL,
  `flight_revenue_aircrafttype` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`aircrafttype`),
  CONSTRAINT `fk_aircraft_flight_revenue1`
    FOREIGN KEY (`flight_revenue_aircrafttype`)
    REFERENCES `mmt`.`flight_revenue` (`aircrafttype`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `fk_aircraft_flight_revenue1_idx` ON `mmt`.`aircraft` (`flight_revenue_aircrafttype` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mmt`.`airport`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`airport` (
  `airport` CHAR(4) NOT NULL,
  `aname` VARCHAR(5000) NOT NULL,
  `checkin` VARCHAR(50) NOT NULL,
  `resvtns` VARCHAR(12) NOT NULL,
  `flightinfo` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`airport`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mmt`.`rating`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`rating` (
  `Rating_ID` VARCHAR(500) NOT NULL,
  `Rating_Range` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`Rating_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mmt`.`bus1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`bus1` (
  `Bus_ID` VARCHAR(500) NOT NULL,
  `Bus_Operator` VARCHAR(500) NOT NULL,
  `Rating_ID` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`Bus_ID`),
  CONSTRAINT `Rating_ID`
    FOREIGN KEY (`Rating_ID`)
    REFERENCES `mmt`.`rating` (`Rating_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `Rating_ID_idx` ON `mmt`.`bus1` (`Rating_ID` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mmt`.`city_transport`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`city_transport` (
  `Travel_ID` VARCHAR(500) NOT NULL,
  `Departure_City` VARCHAR(80) NOT NULL,
  `Arrival_City` VARCHAR(90) NOT NULL,
  PRIMARY KEY (`Travel_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mmt`.`bus_revenue`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`bus_revenue` (
  `Bus_ID` VARCHAR(500) NOT NULL,
  `Bus_Revenue` FLOAT NOT NULL,
  `Transport_ID` INT NOT NULL,
  PRIMARY KEY (`Bus_ID`),
  CONSTRAINT `fk_bus_revenue_transport1`
    FOREIGN KEY (`Transport_ID`)
    REFERENCES `mmt`.`transport` (`Transport_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `fk_bus_revenue_transport1_idx` ON `mmt`.`bus_revenue` (`Transport_ID` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mmt`.`bus2`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`bus2` (
  `Bus_ID` VARCHAR(500) NOT NULL,
  `Travel_ID` VARCHAR(500) NOT NULL,
  `Bus_Duration` VARCHAR(500) NOT NULL,
  `Pickup_Time` VARCHAR(500) NOT NULL,
  `Drop_Time` VARCHAR(500) NOT NULL,
  `Price_ID` VARCHAR(500) NOT NULL,
  `bus_revenue_Bus_ID` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`Bus_ID`),
  CONSTRAINT `Travel_ID`
    FOREIGN KEY (`Travel_ID`)
    REFERENCES `mmt`.`city_transport` (`Travel_ID`),
  CONSTRAINT `fk_bus2_bus_revenue1`
    FOREIGN KEY (`bus_revenue_Bus_ID`)
    REFERENCES `mmt`.`bus_revenue` (`Bus_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `Travel_ID_idx` ON `mmt`.`bus2` (`Travel_ID` ASC) VISIBLE;

CREATE INDEX `fk_bus2_bus_revenue1_idx` ON `mmt`.`bus2` (`bus_revenue_Bus_ID` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mmt`.`room_booking`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`room_booking` (
  `room_booking_id` INT NOT NULL,
  `hotel_id` VARCHAR(100) NOT NULL,
  `room_typeid` INT NOT NULL,
  `customer_id` INT NOT NULL,
  `no_ofadults` INT NOT NULL,
  `no_ofchildren` INT NOT NULL,
  `check_in` DATETIME NOT NULL,
  `check_out` DATETIME NOT NULL,
  `checkintime` TIME NOT NULL,
  `checkouttime` TIME NOT NULL,
  `cost` FLOAT(10,2) NOT NULL,
  PRIMARY KEY (`room_booking_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COMMENT = 'room booking';

CREATE INDEX `customer_id_idx` ON `mmt`.`room_booking` (`customer_id` ASC) VISIBLE;

CREATE INDEX `indx_roomBooking` ON `mmt`.`room_booking` (`room_booking_id` ASC, `hotel_id` ASC, `room_typeid` ASC, `customer_id` ASC, `no_ofchildren` ASC, `checkintime` ASC, `checkouttime` ASC, `cost` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mmt`.`cab_booking`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`cab_booking` (
  `cal_bookingid` INT NOT NULL,
  `room_booking_id` INT NOT NULL,
  `vehicle_typeid` INT NOT NULL,
  `customer_id` INT NOT NULL,
  `payment_id` INT NOT NULL,
  `booking_datetime` DATETIME NOT NULL,
  `flocation` VARCHAR(50) NOT NULL,
  `tlocation` VARCHAR(50) NOT NULL,
  `total_km` FLOAT(10,2) NOT NULL,
  `cost` FLOAT(10,2) NOT NULL,
  `status` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`cal_bookingid`),
  CONSTRAINT `room_booking_id`
    FOREIGN KEY (`room_booking_id`)
    REFERENCES `mmt`.`room_booking` (`room_booking_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COMMENT = 'cab booking';

CREATE INDEX `room_booking_id_idx` ON `mmt`.`cab_booking` (`room_booking_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mmt`.`visa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`visa` (
  `Country_Code` VARCHAR(500) NOT NULL,
  `Visa_Type` VARCHAR(500) NOT NULL,
  `Cost` VARCHAR(500) NOT NULL,
  `Documents_required` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`Country_Code`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mmt`.`country`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`country` (
  `country_code` VARCHAR(500) NOT NULL,
  `country` VARCHAR(500) NOT NULL,
  `visa_Country_Code` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`country_code`),
  CONSTRAINT `fk_country_visa1`
    FOREIGN KEY (`visa_Country_Code`)
    REFERENCES `mmt`.`visa` (`Country_Code`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `fk_country_visa1_idx` ON `mmt`.`country` (`visa_Country_Code` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mmt`.`city`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`city` (
  `City_ID` VARCHAR(500) NOT NULL,
  `City_Name` VARCHAR(500) NOT NULL,
  `Country_Code` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`City_ID`),
  CONSTRAINT `fk_city_country1`
    FOREIGN KEY (`Country_Code`)
    REFERENCES `mmt`.`country` (`country_code`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `indx_city` ON `mmt`.`city` (`City_ID` ASC) VISIBLE;

CREATE INDEX `Country_Code_idx` ON `mmt`.`city` (`Country_Code` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mmt`.`class`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`class` (
  `Class_ID` VARCHAR(500) NOT NULL,
  `Class` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`Class_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mmt`.`people`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`people` (
  `pid` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NULL DEFAULT NULL,
  `address` VARCHAR(100) NULL DEFAULT NULL,
  `telno` VARCHAR(1000) NULL DEFAULT NULL,
  `Email_ID` VARCHAR(1000) NULL DEFAULT NULL,
  PRIMARY KEY (`pid`))
ENGINE = InnoDB
AUTO_INCREMENT = 26
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mmt`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`customer` (
  `Customer_id` INT NOT NULL,
  `pid` INT NOT NULL,
  PRIMARY KEY (`Customer_id`),
  CONSTRAINT `pid`
    FOREIGN KEY (`pid`)
    REFERENCES `mmt`.`people` (`pid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `pid_idx` ON `mmt`.`customer` (`pid` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mmt`.`fares`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`fares` (
  `faretype` CHAR(3) NOT NULL,
  `fdescription` VARCHAR(100) NOT NULL,
  `conditions` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`faretype`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mmt`.`hotel3`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`hotel3` (
  `Hotel_Name` VARCHAR(100) NOT NULL,
  `Exclusive_Offer` VARCHAR(100) NOT NULL,
  `Facility` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`Hotel_Name`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mmt`.`hotel`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`hotel` (
  `hotel_id` VARCHAR(100) NOT NULL,
  `City_ID` VARCHAR(100) NOT NULL,
  `hotel_name` VARCHAR(500) NOT NULL,
  `hotel_address` TEXT NOT NULL,
  `Price_ID` VARCHAR(100) NOT NULL,
  `Rating_ID` VARCHAR(500) NULL DEFAULT NULL,
  `hotel_policies` TEXT NOT NULL,
  `status` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`hotel_id`),
  CONSTRAINT `fk_hotel_hotel31`
    FOREIGN KEY (`hotel_name`)
    REFERENCES `mmt`.`hotel3` (`Hotel_Name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COMMENT = 'hotel details';

CREATE INDEX `City_ID_idx` ON `mmt`.`hotel` (`City_ID` ASC) VISIBLE;

CREATE INDEX `fk_hotel_hotel31_idx` ON `mmt`.`hotel` (`hotel_name` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mmt`.`feedback`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`feedback` (
  `feedback_id` INT NOT NULL,
  `customer_id` INT NOT NULL,
  `tourism_placeid` INT NOT NULL,
  `hotel_id` VARCHAR(100) NOT NULL,
  `feedback` TEXT NOT NULL,
  `feedback_dt` DATE NOT NULL,
  `ratings` VARCHAR(100) NOT NULL,
  `status` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`feedback_id`),
  CONSTRAINT `hotel_id`
    FOREIGN KEY (`hotel_id`)
    REFERENCES `mmt`.`hotel` (`hotel_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COMMENT = 'feedback';

CREATE INDEX `hotel_id_idx` ON `mmt`.`feedback` (`hotel_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mmt`.`route`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`route` (
  `routeno` INT NOT NULL,
  `rdescription` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`routeno`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mmt`.`flight`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`flight` (
  `flightno` VARCHAR(100) NOT NULL,
  `travel_id` CHAR(100) NOT NULL,
  `deptime` CHAR(100) NOT NULL,
  `arrtime` CHAR(100) NOT NULL,
  `service` VARCHAR(100) NOT NULL,
  `aircrafttype` CHAR(100) NOT NULL,
  `routeno` INT NOT NULL,
  PRIMARY KEY (`flightno`),
  CONSTRAINT `routeno`
    FOREIGN KEY (`routeno`)
    REFERENCES `mmt`.`route` (`routeno`),
  CONSTRAINT `fk_flight_aircraft1`
    FOREIGN KEY (`aircrafttype`)
    REFERENCES `mmt`.`aircraft` (`aircrafttype`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `indx_flight` ON `mmt`.`flight` (`flightno` ASC, `travel_id` ASC, `deptime` ASC, `arrtime` ASC, `service` ASC, `aircrafttype` ASC, `routeno` ASC) VISIBLE;

CREATE INDEX `routeno_idx` ON `mmt`.`flight` (`routeno` ASC) VISIBLE;

CREATE INDEX `fk_flight_aircraft1_idx` ON `mmt`.`flight` (`aircrafttype` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mmt`.`giftcoupon`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`giftcoupon` (
  `giftcouponid` INT NOT NULL,
  `customer_id` INT NOT NULL,
  `couponcode` VARCHAR(25) NOT NULL,
  `expirydate` DATE NOT NULL,
  `Service_Charge` DOUBLE NOT NULL,
  `Base_Cost` DOUBLE NOT NULL,
  `Discount` DOUBLE NOT NULL,
  `reason` TEXT NOT NULL,
  `status` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`giftcouponid`),
  CONSTRAINT `fk_giftcoupon_customer1`
    FOREIGN KEY (`customer_id`)
    REFERENCES `mmt`.`customer` (`Customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE UNIQUE INDEX `giftcouponid_UNIQUE` ON `mmt`.`giftcoupon` (`giftcouponid` ASC) VISIBLE;

CREATE INDEX `fk_giftcoupon_customer1_idx` ON `mmt`.`giftcoupon` (`customer_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mmt`.`hcollection1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`hcollection1` (
  `Destination_Type` VARCHAR(30) NOT NULL,
  `Destination_ID` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`Destination_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mmt`.`hcollection2`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`hcollection2` (
  `City` VARCHAR(80) NOT NULL,
  `Country_Code` VARCHAR(80) NOT NULL,
  `Destination_ID` VARCHAR(80) NOT NULL,
  `Peak_Time` VARCHAR(80) NOT NULL,
  `Off_Season` VARCHAR(80) NOT NULL,
  `No_Of_Activity` INT NOT NULL,
  PRIMARY KEY (`City`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `Country_Code_idx` ON `mmt`.`hcollection2` (`Country_Code` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mmt`.`hcollection3`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`hcollection3` (
  `Sno` INT NOT NULL,
  `Destination_ID` VARCHAR(80) NOT NULL,
  `Things_To_See` VARCHAR(500) NOT NULL,
  `Activity_Type` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`Sno`),
  CONSTRAINT `fk_hcollection3_hcollection11`
    FOREIGN KEY (`Destination_ID`)
    REFERENCES `mmt`.`hcollection1` (`Destination_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `fk_hcollection3_hcollection11_idx` ON `mmt`.`hcollection3` (`Destination_ID` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mmt`.`homestay1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`homestay1` (
  `Homestay_ID` VARCHAR(500) NOT NULL,
  `Homestay_Name` VARCHAR(500) NOT NULL,
  `City_ID` VARCHAR(500) NOT NULL,
  `Locality` VARCHAR(500) NOT NULL,
  `Price_ID` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`Homestay_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mmt`.`homestay3`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`homestay3` (
  `Homestay_ID` VARCHAR(100) NOT NULL,
  `Rating_ID` VARCHAR(100) NOT NULL,
  `Review` VARCHAR(1000) NOT NULL,
  PRIMARY KEY (`Homestay_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `Rating_ID_idx` ON `mmt`.`homestay3` (`Rating_ID` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mmt`.`homestay2`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`homestay2` (
  `Homestay_ID` VARCHAR(30) NOT NULL,
  `Property_Type` VARCHAR(30) NOT NULL,
  `Rating_ID` VARCHAR(30) NOT NULL,
  `homestay3_Homestay_ID` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`Homestay_ID`),
  CONSTRAINT `fk_homestay2_homestay31`
    FOREIGN KEY (`homestay3_Homestay_ID`)
    REFERENCES `mmt`.`homestay3` (`Homestay_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `fk_homestay2_homestay31_idx` ON `mmt`.`homestay2` (`homestay3_Homestay_ID` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mmt`.`hotel_facility`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`hotel_facility` (
  `hotel_facilityid` INT NOT NULL AUTO_INCREMENT,
  `hotel_id` VARCHAR(100) NOT NULL,
  `room_typeid` INT NOT NULL,
  `facility_type` VARCHAR(100) NOT NULL,
  `status` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`hotel_facilityid`),
  CONSTRAINT `fk_hotel_facility_hotel1`
    FOREIGN KEY (`hotel_id`)
    REFERENCES `mmt`.`hotel` (`hotel_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 19
DEFAULT CHARACTER SET = latin1
COMMENT = 'hotel_facility';

CREATE INDEX `hotel_id_idx` ON `mmt`.`hotel_facility` (`hotel_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mmt`.`itinerary`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`itinerary` (
  `Itinerary_ID` INT NOT NULL,
  `ticketno` INT NOT NULL,
  `flightno` VARCHAR(100) NOT NULL,
  `legno` INT NOT NULL,
  `flightdate` DATE NOT NULL,
  `faretype` CHAR(100) NOT NULL,
  PRIMARY KEY (`Itinerary_ID`),
  CONSTRAINT `fk_itinerary_fares1`
    FOREIGN KEY (`faretype`)
    REFERENCES `mmt`.`fares` (`faretype`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `fk_itinerary_fares1_idx` ON `mmt`.`itinerary` (`faretype` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mmt`.`materialized_hotel`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`materialized_hotel` (
  `hotel_name` VARCHAR(500) NOT NULL,
  `facility_type` VARCHAR(500) NOT NULL,
  `cost_avg` FLOAT NOT NULL,
  `rating_avg` FLOAT NOT NULL,
  `price_range` VARCHAR(500) NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE UNIQUE INDEX `hotel` ON `mmt`.`materialized_hotel` (`hotel_name` ASC);


-- -----------------------------------------------------
-- Table `mmt`.`matrializedrevenue`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`matrializedrevenue` (
  `transport_mode` VARCHAR(500) NOT NULL,
  `Sum_Of_Revenue` FLOAT NOT NULL,
  `Average_Of_Revenue` FLOAT NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mmt`.`payment_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`payment_type` (
  `payment_tyoe_id` VARCHAR(10) NOT NULL,
  `payment_type` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`payment_tyoe_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mmt`.`payment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`payment` (
  `payment_id` INT NOT NULL,
  `customer_id` INT NOT NULL,
  `payment_date` DATE NOT NULL,
  `payment_time` TIME NOT NULL,
  `payment_type_id` INT NOT NULL,
  `payment_reason` VARCHAR(200) NOT NULL,
  `total_amt` FLOAT NOT NULL,
  `discount_amount` FLOAT NOT NULL,
  `status` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`payment_id`),
  CONSTRAINT `fk_payment_payment_type1`
    FOREIGN KEY (`payment_type_id`)
    REFERENCES `mmt`.`payment_type` (`payment_tyoe_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `fk_payment_payment_type1_idx` ON `mmt`.`payment` (`payment_type_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mmt`.`price`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`price` (
  `price_ID` VARCHAR(500) NOT NULL,
  `price_range` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`price_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mmt`.`price_1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`price_1` (
  `price_ID` VARCHAR(500) NOT NULL,
  `price_range` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`price_ID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mmt`.`rail1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`rail1` (
  `train_id` INT NOT NULL,
  `Train_Name` VARCHAR(500) NOT NULL,
  `Travel_ID` VARCHAR(500) NOT NULL,
  `Departure_Time` VARCHAR(500) NOT NULL,
  `Arrival_Time` VARCHAR(500) NOT NULL,
  `Train_Duration` VARCHAR(500) NOT NULL,
  `Class_ID` VARCHAR(500) NOT NULL,
  `Price` VARCHAR(500) NOT NULL,
  `Price_ID` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`train_id`),
  CONSTRAINT `fk_rail1_price1`
    FOREIGN KEY (`Price_ID`)
    REFERENCES `mmt`.`price` (`price_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_rail1_class1`
    FOREIGN KEY (`Class_ID`)
    REFERENCES `mmt`.`class` (`Class_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `Travel_ID_idx` ON `mmt`.`rail1` (`Travel_ID` ASC) VISIBLE;

CREATE INDEX `fk_rail1_price1_idx` ON `mmt`.`rail1` (`Price_ID` ASC) VISIBLE;

CREATE INDEX `fk_rail1_class1_idx` ON `mmt`.`rail1` (`Class_ID` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mmt`.`room_status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`room_status` (
  `Status_id` INT NOT NULL,
  `Status_name` VARCHAR(100) NOT NULL,
  `Status_description` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`Status_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mmt`.`room_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`room_type` (
  `room_typeid` INT NOT NULL,
  `hotel_id` INT NOT NULL,
  `room_type` VARCHAR(50) NOT NULL,
  `available_rooms` BIGINT NOT NULL,
  `max_adults` INT NOT NULL,
  `max_children` INT NOT NULL,
  `cost` FLOAT(10,2) NOT NULL,
  `status` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`room_typeid`),
  CONSTRAINT `fk_room_type_hotel1`
    FOREIGN KEY (`hotel_id`)
    REFERENCES `mmt`.`hotel` (`hotel_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE INDEX `fk_room_type_hotel1_idx` ON `mmt`.`room_type` (`hotel_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mmt`.`tariff`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`tariff` (
  `TNo` INT NOT NULL,
  `routeno` INT NOT NULL,
  `faretype` CHAR(20) NOT NULL,
  `price_money` INT NOT NULL,
  PRIMARY KEY (`TNo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `mmt`.`ticket`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`ticket` (
  `ticketno` INT NOT NULL,
  `ticketdate` DATE NOT NULL,
  `pid` INT NOT NULL,
  PRIMARY KEY (`ticketno`),
  CONSTRAINT `fk_ticket_people1`
    FOREIGN KEY (`pid`)
    REFERENCES `mmt`.`people` (`pid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `fk_ticket_people1_idx` ON `mmt`.`ticket` (`pid` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mmt`.`tourism_location`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`tourism_location` (
  `location_id` INT NOT NULL,
  `location_name` VARCHAR(50) NOT NULL,
  `status` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`location_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COMMENT = 'item details';


-- -----------------------------------------------------
-- Table `mmt`.`tourism_place`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`tourism_place` (
  `tourism_placeid` INT NOT NULL,
  `location_id` INT NOT NULL,
  `tourism_place` VARCHAR(50) NOT NULL,
  `status` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`tourism_placeid`),
  CONSTRAINT `fk_tourism_place_tourism_location1`
    FOREIGN KEY (`location_id`)
    REFERENCES `mmt`.`tourism_location` (`location_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE INDEX `indx_tourism_place` ON `mmt`.`tourism_place` (`tourism_placeid` ASC, `location_id` ASC, `tourism_place` ASC, `status` ASC) VISIBLE;

CREATE INDEX `fk_tourism_place_tourism_location1_idx` ON `mmt`.`tourism_place` (`location_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mmt`.`train_revenue`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`train_revenue` (
  `Train_id` INT NOT NULL,
  `TrainRevenue` FLOAT NOT NULL,
  `Transport_ID` INT NOT NULL,
  `rail1_train_id` INT NOT NULL,
  PRIMARY KEY (`Train_id`),
  CONSTRAINT `fk_train_revenue_rail11`
    FOREIGN KEY (`rail1_train_id`)
    REFERENCES `mmt`.`rail1` (`train_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_train_revenue_transport1`
    FOREIGN KEY (`Transport_ID`)
    REFERENCES `mmt`.`transport` (`Transport_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE INDEX `fk_train_revenue_rail11_idx` ON `mmt`.`train_revenue` (`rail1_train_id` ASC) VISIBLE;

CREATE INDEX `fk_train_revenue_transport1_idx` ON `mmt`.`train_revenue` (`Transport_ID` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mmt`.`vehicle_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`vehicle_type` (
  `vehicle_typeid` INT NOT NULL,
  `hotel_id` INT NOT NULL,
  `location_id` INT NOT NULL,
  `vehicle_type` VARCHAR(100) NOT NULL,
  `km_cost` FLOAT(10,2) NOT NULL,
  `status` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`vehicle_typeid`),
  CONSTRAINT `fk_vehicle_type_tourism_location1`
    FOREIGN KEY (`location_id`)
    REFERENCES `mmt`.`tourism_location` (`location_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE INDEX `fk_vehicle_type_tourism_location1_idx` ON `mmt`.`vehicle_type` (`location_id` ASC) VISIBLE;

USE `mmt` ;

-- -----------------------------------------------------
-- Placeholder table for view `mmt`.`hcollection`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mmt`.`hcollection` (`Destination_Type` INT, `Country_Code` INT, `Peak_Time` INT, `No_Of_Activity` INT, `Things_To_See` INT);

-- -----------------------------------------------------
-- procedure BUS_Train
-- -----------------------------------------------------

DELIMITER $$
USE `mmt`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `BUS_Train`()
BEGIN
Select Bus_ID,travel_id,Price_ID from bus2 ;
Select train_id,Train_name,Price,Class_ID from rail1;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure MainData
-- -----------------------------------------------------

DELIMITER $$
USE `mmt`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `MainData`()
BEGIN
select name,address,Email_ID from people;
select flightno,travel_id,price_money as discount from flight join tariff on flight.routeno=tariff.routeno where price_money<=53;


END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure getcustomer
-- -----------------------------------------------------

DELIMITER $$
USE `mmt`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getcustomer`(id varchar(5))
BEGIN 
select * from people
where pid=id; 
END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure hotel_materialised_refresh
-- -----------------------------------------------------

DELIMITER $$
USE `mmt`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `hotel_materialised_refresh`()
BEGIN

TRUNCATE TABLE materialized_hotel;

INSERT INTO materialized_hotel
SELECT  hotel.hotel_name as Hotel_Name
, hotel_facility.facility_type as Hotel_Facility
, AVG(room_booking.cost) As Cost, AVG(rating.Rating_Range)as Rating, price.price_range as Price
FROM hotel
join price
on hotel.Price_ID = price.price_ID
join rating
on hotel.Rating_ID = rating.Rating_ID
join hotel_facility
on hotel.hotel_id = hotel_facility.hotel_id
join room_booking
on hotel.hotel_id = room_booking.hotel_id
group by Hotel_Name;


END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure matrializedrevenuerefresh
-- -----------------------------------------------------

DELIMITER $$
USE `mmt`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `matrializedrevenuerefresh`(



)
BEGIN



TRUNCATE TABLE matrializedrevenue;



INSERT INTO matrializedrevenue
(SELECT transport.transport_mode,
sum(flight_revenue.aircraftRevenue) as Sum_Of_Revenue,
AVG(flight_revenue.aircraftRevenue) as Average_Of_Revenue



FROM transport inner join flight_revenue
on transport.transport_id=flight_revenue.transport_id )
union
(SELECT transport.transport_mode,



sum(bus_revenue.Bus_Revenue) as Bus_sum,
AVG(bus_revenue.Bus_Revenue) as Bus_avg
FROM bus_revenue inner join transport
on bus_revenue.transport_id=transport.transport_id )
union
(SELECT transport.transport_mode,



sum(train_revenue.TrainRevenue) as Train_sum,
AVG(train_revenue.TrainRevenue) as Train_avg
FROM train_revenue inner join transport
on train_revenue.transport_id=transport.transport_id
);



END$$

DELIMITER ;

-- -----------------------------------------------------
-- procedure profitNLoss
-- -----------------------------------------------------

DELIMITER $$
USE `mmt`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `profitNLoss`()
BEGIN
select giftcouponid, reason as Coupon_Name, (Service_Charge + Base_Cost) as Total_Cost,
((Service_Charge + Base_Cost) - Discount) as Discounted_Cost from giftcoupon;

END$$

DELIMITER ;

-- -----------------------------------------------------
-- View `mmt`.`hcollection`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mmt`.`hcollection`;
USE `mmt`;
CREATE  OR REPLACE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mmt`.`hcollection` AS select `mmt`.`hcollection1`.`Destination_Type` AS `Destination_Type`,`mmt`.`hcollection2`.`Country_Code` AS `Country_Code`,`mmt`.`hcollection2`.`Peak_Time` AS `Peak_Time`,`mmt`.`hcollection2`.`No_Of_Activity` AS `No_Of_Activity`,`mmt`.`hcollection3`.`Things_To_See` AS `Things_To_See` from ((`mmt`.`hcollection1` join `mmt`.`hcollection2` on((`mmt`.`hcollection1`.`Destination_ID` = `mmt`.`hcollection2`.`Destination_ID`))) join `mmt`.`hcollection3` on((`mmt`.`hcollection1`.`Destination_ID` = `mmt`.`hcollection3`.`Destination_ID`)));
USE `mmt`;

DELIMITER $$
USE `mmt`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `mmt`.`people_BEFORE_INSERT`
BEFORE INSERT ON `mmt`.`people`
FOR EACH ROW
BEGIN
if new.telno = " " then set new.telno = Null;
end if;
END$$

USE `mmt`$$
CREATE
DEFINER=`root`@`localhost`
TRIGGER `mmt`.`price_AFTER_INSERT`
AFTER INSERT ON `mmt`.`price`
FOR EACH ROW
BEGIN 
INSERT INTO price_1 VALUES
(new.price_ID, new.price_range);
END$$


DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
