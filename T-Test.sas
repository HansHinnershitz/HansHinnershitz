/* Generated Code (IMPORT) */
/* Source File: CC-Sales.csv */
/* Source Path: /home/u58593783/sasuser.v94 */
/* Code generated on: 5/16/21, 10:13 PM */

%web_drop_table(WORK.IMPORT1);


FILENAME REFFILE '/home/u58593783/sasuser.v94/CC-Sales.csv';

PROC IMPORT DATAFILE=REFFILE
	DBMS=CSV
	OUT=WORK.IMPORT1;
	GETNAMES=YES;
RUN;

proc ttest data = WORK.IMPORT1 sides = 2 alpha = 0.05 h0 = 0;
   title "Two sample t-test example";
   class CC_CARD; 
   var Tot_Spend;
   run;

