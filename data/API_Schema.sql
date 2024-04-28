SHOW CREATE TABLE eu_unlocodes;
CREATE TABLE `eu_unlocodes` (
  `UN_Location_Code` varchar(5) NOT NULL,
  `EU_Country` varchar(50) DEFAULT NULL,
  `Capital_City` varchar(20) DEFAULT NULL,
  `Region` varchar(20) DEFAULT NULL,
  `Eurozone` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`UN_Location_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SHOW CREATE TABLE air_freight_price_estimate;
CREATE TABLE `air_freight_price_estimate` (
  `UN_Location_Code` varchar(5) DEFAULT NULL,
  `Min_Price_Estimate_USD` double DEFAULT NULL,
  `Max_Price_Estimate_USD` double DEFAULT NULL,
  `AVG_Price_Estimate_USD` double DEFAULT NULL,
  KEY `fk_unlocode` (`UN_Location_Code`),
  CONSTRAINT `fk_unlocode` FOREIGN KEY (`UN_Location_Code`) REFERENCES `eu_unlocodes` (`UN_Location_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

ALTER TABLE eu_unlocodes 
ADD PRIMARY KEY (UN_Location_Code);
ALTER TABLE air_freight_price_estimate 
ADD CONSTRAINT fk_unlocode
FOREIGN KEY (UN_Location_Code) REFERENCES 
eu_unlocodes(UN_Location_Code);









