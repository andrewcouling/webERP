CREATE TABLE `suppliers` (
  `supplierid` varchar(10) NOT NULL DEFAULT '',
  `suppname` varchar(40) NOT NULL DEFAULT '',
  `address1` varchar(40) NOT NULL DEFAULT '',
  `address2` varchar(40) NOT NULL DEFAULT '',
  `address3` varchar(40) NOT NULL DEFAULT '',
  `address4` varchar(50) NOT NULL DEFAULT '',
  `address5` varchar(20) NOT NULL DEFAULT '',
  `address6` varchar(40) NOT NULL DEFAULT '',
  `supptype` tinyint NOT NULL DEFAULT '1',
  `lat` float(10,6) NOT NULL DEFAULT '0.000000',
  `lng` float(10,6) NOT NULL DEFAULT '0.000000',
  `currcode` char(3) NOT NULL DEFAULT '',
  `suppliersince` date NOT NULL DEFAULT '1000-01-01',
  `paymentterms` char(2) NOT NULL DEFAULT '',
  `lastpaid` double NOT NULL DEFAULT '0',
  `lastpaiddate` datetime DEFAULT NULL,
  `bankact` varchar(30) NOT NULL DEFAULT '',
  `bankref` varchar(12) NOT NULL DEFAULT '',
  `bankpartics` varchar(12) NOT NULL DEFAULT '',
  `remittance` tinyint NOT NULL DEFAULT '1',
  `taxgroupid` tinyint NOT NULL DEFAULT '1',
  `factorcompanyid` int NOT NULL DEFAULT '1',
  `salespersonid` varchar(4) NOT NULL DEFAULT '',
  `taxref` varchar(20) NOT NULL DEFAULT '',
  `phn` varchar(50) NOT NULL DEFAULT '',
  `port` varchar(200) NOT NULL DEFAULT '',
  `email` varchar(55) DEFAULT NULL,
  `fax` varchar(25) DEFAULT NULL,
  `telephone` varchar(25) DEFAULT NULL,
  `url` varchar(50) NOT NULL DEFAULT '',
  `defaultshipper` int NOT NULL DEFAULT '0',
  `defaultgl` varchar(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`supplierid`),
  KEY `CurrCode` (`currcode`),
  KEY `PaymentTerms` (`paymentterms`),
  KEY `SuppName` (`suppname`),
  KEY `taxgroupid` (`taxgroupid`),
  CONSTRAINT `suppliers_ibfk_1` FOREIGN KEY (`currcode`) REFERENCES `currencies` (`currabrev`),
  CONSTRAINT `suppliers_ibfk_2` FOREIGN KEY (`paymentterms`) REFERENCES `paymentterms` (`termsindicator`),
  CONSTRAINT `suppliers_ibfk_3` FOREIGN KEY (`taxgroupid`) REFERENCES `taxgroups` (`taxgroupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3