SHOW CREATE TABLE eu_countries;
CREATE TABLE `eu_countries` (
  `CountryID` bigint DEFAULT NULL,
  `Country` text,
  `countryCode` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SHOW CREATE TABLE lpi_data;
CREATE TABLE `lpi_data` (
  `CountryID` bigint DEFAULT NULL,
  `Year` year DEFAULT NULL,
  `LPI_Score` double DEFAULT NULL,
  `Customs_Score` double DEFAULT NULL,
  `Infrastructure_Score` double DEFAULT NULL,
  `International_shipments_Score` double DEFAULT NULL,
  `Logistics_competence_Score` double DEFAULT NULL,
  `Tracking_&_tracing_Score` double DEFAULT NULL,
  `Timeliness_Score` double DEFAULT NULL,
  KEY `fk_Country1` (`CountryID`),
  CONSTRAINT `fk_Country1` FOREIGN KEY (`CountryID`) REFERENCES `eu_countries` (`CountryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SHOW CREATE TABLE gdp_data;
CREATE TABLE `gdp_data` (	
  `CountryID` bigint DEFAULT NULL,
  `Year` year DEFAULT NULL,
  `GDP_Billions_of_USD` double DEFAULT NULL,
  KEY `fk_Country2` (`CountryID`),
  CONSTRAINT `fk_Country2` FOREIGN KEY (`CountryID`) REFERENCES `eu_countries` (`CountryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

ALTER TABLE eu_countries
ADD PRIMARY KEY (CountryID);
ALTER TABLE lpi_data
ADD CONSTRAINT fk_Country1
FOREIGN KEY (CountryID) REFERENCES 
eu_countries(CountryID);
ALTER TABLE gdp_data 
ADD CONSTRAINT fk_Country2
FOREIGN KEY (CountryID) REFERENCES 
eu_countries(CountryID);

