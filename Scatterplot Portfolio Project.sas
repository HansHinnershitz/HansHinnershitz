/* Generated Code (IMPORT) */
/* Source File: Agency Gender.xlsx */
/* Source Path: /home/u58593783/sasuser.v94 */
/* Code generated on: 6/7/21, 12:40 PM */

%web_drop_table(WORK.IMPORT4);


FILENAME REFFILE '/home/u58593783/sasuser.v94/Agency Gender.xlsx';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLSX
	OUT=WORK.IMPORT4;
	GETNAMES=YES;
RUN;

proc sgplot data=WORK.IMPORT4;
 scatter x=Male y=Female / group=Number;
run;