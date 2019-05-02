
LOAD DATA INFILE '/var/lib/mysql/PDP_Dataset/2016PDPDatabase/PDP16Samples.txt'
INTO TABLE sample_data FIELDS TERMINATED BY '|'
(
    @SAMPLE_PK, 
    @STATE, 
    @YEAR, 
    @MONTH, 
    @DAY, 
    @SITE, 
    @COMMOD, 
    @SOURCE_ID, 
    @VARIETY, 
    @ORIGIN, 
    @COUNTRY, 
    @DISTTYPE, 
    @COMMTYPE, 
    @CLAIM, 
    @QUANTITY, 
    @GROWST, 
    @PACKST, 
    @DISTST
)
SET 
SAMPLE_PK = CONCAT('2016-', TRIM(@SAMPLE_PK)),
STATE = nullif(TRIM(@STATE), ''),
YEAR = nullif(TRIM(@YEAR), ''),
MONTH = nullif(TRIM(@MONTH), ''),
DAY = nullif(TRIM(@DAY), ''),
SITE = nullif(TRIM(@SITE), ''),
COMMOD = nullif(TRIM(@COMMOD), ''),
SOURCE_ID = nullif(TRIM(@SOURCE_ID), ''),
VARIETY = nullif(TRIM(@VARIETY), ''),
ORIGIN = nullif(TRIM(@ORIGIN), ''),
COUNTRY = nullif(TRIM(@COUNTRY), ''),
DISTTYPE = nullif(TRIM(@DISTTYPE), ''),
COMMTYPE = nullif(TRIM(@COMMTYPE), ''),
CLAIM = nullif(TRIM(@CLAIM), ''),
QUANTITY = nullif(TRIM(@QUANTITY), ''),
GROWST = nullif(TRIM(@GROWST), ''),
PACKST = nullif(TRIM(@PACKST), ''),
DISTST = nullif(TRIM(@DISTST), '')
;


LOAD DATA INFILE '/var/lib/mysql/PDP_Dataset/2016PDPDatabase/PDP16Results.txt'
INTO TABLE results_data FIELDS TERMINATED BY '|'
(
	@SAMPLE_PK,
	@COMMOD,
	@COMMTYPE,
	@LAB,
	@PESTCODE,
	@TESTCLASS,
	@CONCEN,
	@LOD,
	@CONUNIT,
	@CONFMETHOD,
	@CONFMETHOD2,
	@ANNOTATE,
	@QUANTITATE,
	@MEAN,
	@EXTRACT,
	@DETERMIN
)
SET 
SAMPLE_PK = CONCAT('2016-', TRIM(@SAMPLE_PK)),
COMMOD = nullif(TRIM(@COMMOD), ''),
COMMTYPE = nullif(TRIM(@COMMTYPE), ''),
LAB = nullif(TRIM(@LAB), ''),
PESTCODE = nullif(TRIM(@PESTCODE), ''),
TESTCLASS = nullif(TRIM(@TESTCLASS), ''),
CONCEN = nullif(TRIM(@CONCEN), ''),
LOD = nullif(TRIM(@LOD), ''),
CONUNIT = nullif(TRIM(@CONUNIT), ''),
CONFMETHOD = nullif(TRIM(@CONFMETHOD), ''),
CONFMETHOD2 = nullif(TRIM(@CONFMETHOD2), ''),
ANNOTATE = nullif(TRIM(@ANNOTATE), ''),
QUANTITATE = nullif(TRIM(@QUANTITATE), ''),
MEAN = nullif(TRIM(@MEAN), ''),
EXTRACT = nullif(TRIM(@EXTRACT), ''),
DETERMIN = nullif(TRIM(@DETERMI), '')
;







