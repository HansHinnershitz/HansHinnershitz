/* Generated Code (IMPORT) */
/* Source File: PortfolioClothingstore (1) 1.xlsx */
/* Source Path: /home/u58593783/sasuser.v94 */
/* Code generated on: 5/24/21, 10:35 PM */

%web_drop_table(WORK.IMPORT3);


FILENAME REFFILE '/home/u58593783/sasuser.v94/PortfolioClothingstore (1) 1.xlsx';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLSX
	OUT=WORK.IMPORT3;
	GETNAMES=YES;
RUN;

PROC REG PLOTS(MAXPOINTS=50000) DATA=WORK.IMPORT3;
	MODEL purchase=CLUSTYPE;
	RUN;
	