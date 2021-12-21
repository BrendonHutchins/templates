
TITLE="System Info Report"
CURRENT_TIME=$(date)
TIME_STAMP="Generated $CURRENT_TIME by $USER"

report_uptime () 
{
		cat <<- _EOF_
		<H2>System Uptime</H2>
		<PRE>$(uptime)</PRE>
		_EOF_
		return
}

report_disk_space ()
{
	cat <<- _EOF_
	<H2>Disk Space Untilization</H2>
	<PRE>$(df -h)</PRE>
	_EOF_
	return
}

report_home_space()
{
	cat <<- _EOF_
	<H2>Home Space Untilization</H2>
	<PRE> $(du -sh /Users/User1)</PRE>
	_EOF_
	return
}

cat <<- _EOF_

<HTML>
	<HEAD>
		<TITLE>$TITLE</TITLE>
	</HEAD>
<BODY>
	<H1>$TITLE</H1>
	This is some basic information about <B>$HOSTNAME</B><br>
	Generated $CURRENT_TIME by $USER
	$(report_uptime)<br>
	$(report_disk_space)<br>
	$(report_home_space)<br>
	<p>$TIME_STAMP</p>
	
</BODY>
</HTML>