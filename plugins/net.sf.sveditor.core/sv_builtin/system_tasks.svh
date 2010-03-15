`ifndef INCLUDED_SV_SYSTEM_TASKS_SVH
`define INCLUDED_SV_SYSTEM_TASKS_SVH
/****************************************************************************
 * system_tasks.svh
 *
 * Declarations for System Tasks, described in the LRM
 ****************************************************************************/

/********************************************************************
 * $finish()
 ********************************************************************/
extern task $finish(int n=1);

/********************************************************************
 * $stop()
 ********************************************************************/
extern task $stop(int n=1);

/********************************************************************
 * $exit()
 ********************************************************************/
extern task $exit();

/********************************************************************
 * $time()
 ********************************************************************/
extern function real $time();

/********************************************************************
 * $stime()
 ********************************************************************/
extern function real $stime();

/********************************************************************
 * $realtime()
 ********************************************************************/
extern function real $realtime();

/********************************************************************
 * $realtime()
 ********************************************************************/
extern task $timeformat(int units_number, int precision_number, 
	string suffix_string, int minimum_field_width);
	
/********************************************************************
 * $rtoi()
 ********************************************************************/
extern function integer $rtoi(real real_val);

/********************************************************************
 * $itor()
 ********************************************************************/
extern function real $itor (integer int_val);

/********************************************************************
 * $realtobits()
 ********************************************************************/
extern function bit[63:0] $realtobits(real real_val);

/********************************************************************
 * $bitstoreal()
 ********************************************************************/
extern function real $bitstoreal (bit bit_val);

/********************************************************************
 * $shortrealtobits()
 ********************************************************************/
extern function bit[31:0] $shortrealtobits (shortreal shortreal_val);

/********************************************************************
 * $bitstoshortreal()
 ********************************************************************/
extern function shortreal $bitstoshortreal (bit bit_val);

/********************************************************************
 * $typename()
 ********************************************************************/
extern function string $typename(string data_type);

/********************************************************************
 * $bits()
 ********************************************************************/
extern function integer $bits(string data_type);

/********************************************************************
 * $isunbounded()
 ********************************************************************/
extern function bit $isunbounded(string expr);

/****************************************************************************
 * File I/O Tasks
 ****************************************************************************/

/********************************************************************
 * $display()
 ********************************************************************/
extern task $display(string format);

/********************************************************************
 * $displayb()
 ********************************************************************/
extern task $displayb(string format);

/********************************************************************
 * $displayo()
 ********************************************************************/
extern task $displayo(string format);

/********************************************************************
 * $displayh()
 ********************************************************************/
extern task $displayh(string format);

/********************************************************************
 * $write()
 ********************************************************************/
extern task $write(string format);

/********************************************************************
 * $writeb()
 ********************************************************************/
extern task $writeb(string format);

/********************************************************************
 * $writeo()
 ********************************************************************/
extern task $writeb(string format);

/********************************************************************
 * $writeh()
 ********************************************************************/
extern task $writeh(string format);

/********************************************************************
 * $strobe()
 ********************************************************************/
extern task $strobe(string format);

/********************************************************************
 * $strobeb()
 ********************************************************************/
extern task $strobeb(string format);

/********************************************************************
 * $strobeo()
 ********************************************************************/
extern task $strobeo(string format);

/********************************************************************
 * $strobeh()
 ********************************************************************/
extern task $strobeh(string format);

/********************************************************************
 * $monitor()
 ********************************************************************/
extern task $monitor();

/********************************************************************
 * $monitorb()
 ********************************************************************/
extern task $monitorb();

/********************************************************************
 * $monitoro()
 ********************************************************************/
extern task $monitoro();

/********************************************************************
 * $monitorh()
 ********************************************************************/
extern task $monitorh();

/********************************************************************
 * $monitoron()
 ********************************************************************/
extern task $monitoron();

/********************************************************************
 * $monitoroff()
 ********************************************************************/
extern task $monitoroff();

/********************************************************************
 * $fopen()
 ********************************************************************/
extern function int $fopen (string filename, string type);

/********************************************************************
 * $fclose()
 ********************************************************************/
extern function void $fclose(int fd);

/********************************************************************
 * $fdisplay()
 ********************************************************************/
extern task $fdisplay(int fd, string format);

/********************************************************************
 * $fdisplayb()
 ********************************************************************/
extern task $fdisplayb(int fd, string format);

/********************************************************************
 * $fdisplayh()
 ********************************************************************/
extern task $fdisplayh(int fd, string format);

/********************************************************************
 * $fdisplayo()
 ********************************************************************/
extern task $fdisplayo(int fd, string format);

/********************************************************************
 * $fwrite()
 ********************************************************************/
extern task $fwrite(int fd, string format);

/********************************************************************
 * $fwriteb()
 ********************************************************************/
extern task $fwriteb(int fd, string format);

/********************************************************************
 * $fwriteh()
 ********************************************************************/
extern task $fwriteh(int fd, string format);

/********************************************************************
 * $fwriteo()
 ********************************************************************/
extern task $fwriteo(int fd, string format);

/********************************************************************
 * $fstrobe()
 ********************************************************************/
extern task $fstrobe(int fd, string format);

/********************************************************************
 * $fstrobeb()
 ********************************************************************/
extern task $fstrobeb(int fd, string format);

/********************************************************************
 * $fstrobeh()
 ********************************************************************/
extern task $fstrobeh(int fd, string format);

/********************************************************************
 * $fstrobeo()
 ********************************************************************/
extern task $fstrobeo(int fd, string format);

/********************************************************************
 * $fmonitor()
 ********************************************************************/
extern task $fmonitor(int fd);

/********************************************************************
 * $fmonitorb()
 ********************************************************************/
extern task $fmonitorb(int fd);

/********************************************************************
 * $fmonitorh()
 ********************************************************************/
extern task $fmonitorh(int fd);

/********************************************************************
 * $fmonitoro()
 ********************************************************************/
extern task $fmonitoro(int fd);

/********************************************************************
 * $swrite()
 ********************************************************************/
extern task $swrite(string out, string fmt);

/********************************************************************
 * $swriteb()
 ********************************************************************/
extern task $swriteb(string out, string fmt);

/********************************************************************
 * $swriteo()
 ********************************************************************/
extern task $swriteo(string out, string fmt);

/********************************************************************
 * $swriteh()
 ********************************************************************/
extern task $swriteh(string out, string fmt);

/********************************************************************
 * $sformat()
 ********************************************************************/
extern task $sformat(string out, string fmt);

/********************************************************************
 * $sformatf()
 ********************************************************************/
extern function string $sformatf(string fmt);

/********************************************************************
 * $psprintf()
 ********************************************************************/
extern function string $psprintf(string fmt);

/********************************************************************
 * $fgetc()
 ********************************************************************/
extern function int $fgetc(int fd);

/********************************************************************
 * $ungetc()
 ********************************************************************/
extern function void $ungetc(int c, int fd);

/********************************************************************
 * $fgets()
 ********************************************************************/
extern task $fgets(string str, int fd);

/********************************************************************
 * $fscanf()
 ********************************************************************/
extern function int $fscanf(int fd, string fmt);

/********************************************************************
 * $sscanf()
 ********************************************************************/
extern function int $sscanf(string str, string fmt);

/********************************************************************
 * $fread()
 ********************************************************************/
extern task $fread(int val, int fd);

/********************************************************************
 * $ftell()
 ********************************************************************/
extern function int $ftell(int fd);

/********************************************************************
 * $fseek()
 ********************************************************************/
extern function int $fseek(int fd, int offset, int operation);

/********************************************************************
 * $frewind()
 ********************************************************************/
extern function int $frewind(int fd);

/********************************************************************
 * $fflush()
 ********************************************************************/
extern task $fflush(int fd);

/********************************************************************
 * $ferror()
 ********************************************************************/
extern function int $ferror(int fd, string str);

/********************************************************************
 * $feof()
 ********************************************************************/
extern function int $feof(int fd);

/********************************************************************
 * $test$plusargs()
 ********************************************************************/
extern function int $test$plusargs(string plusarg);

/********************************************************************
 * $value$plusargs()
 ********************************************************************/
extern function int $value$plusargs(string format, int variable);

/********************************************************************
 * $dumpfile()
 ********************************************************************/
extern task $dumpfile(string filename);

/********************************************************************
 * $dumpfile()
 ********************************************************************/
extern task $dumpfile(string filename);

/********************************************************************
 * $dumpvars()
 ********************************************************************/
extern task $dumpvars(int levels);

/********************************************************************
 * $dumpon()
 ********************************************************************/
extern task $dumpon();

/********************************************************************
 * $dumpoff()
 ********************************************************************/
extern task $dumpoff();

/********************************************************************
 * $dumpall()
 ********************************************************************/
extern task $dumpall();

/********************************************************************
 * $dumplimit()
 ********************************************************************/
extern task $dumplimit(int size);

/********************************************************************
 * $dumpflush()
 ********************************************************************/
extern task $dumpflush();

`endif /* INCLUDED_SV_SYSTEM_TASKS_SVH */
