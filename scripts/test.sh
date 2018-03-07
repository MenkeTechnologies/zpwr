
LS(1)			  BSD General Commands Manual			 LS(1)

NAME
     ls -- list directory contents

SYNOPSIS
     ls [-ABCFGHLOPRSTUW@abcdefghiklmnopqrstuwx1] [file ...]

DESCRIPTION
     For each operand [[[[that names]]]] a file of a type other than directory, ls
     displays its [name as well as any requested, associated information.  For
     each operand ]that 'names a file of typasdfaklsdfjalkjflakdjf e directory, ls displays the names
     asjfalksjfd alksdjf laksjf lkadjsf kj 
     of files contained' within that direc asdfkjas lfkj  tory, as well as any requested, asso-

     ciated information.

     If no ((([[['operands']]]))) are given, the 'contents of the current directory are dis-
     played.  If more than one operand is given, non-directory 'operands are
     displayed first; directory and non-directory operands are sorted sepa-
     rately and in ([{""''''lexicographical''''""}]) order.

     The following options are available:

     -@      Display extended attribute keys and sizes in long (-l) output.

     -1      (The numeric digit ``one''.)  Force output to be one entry per
	     line.  This is the default when output is not to a terminal.

     -A      List all entries [except for . and ...  Always set for the super-
	     user.

     -a      Include directory] entries whose names begin with a dot (.).

     -B      Force printing [of non-printable characters (as defined by
	     ctype(3) and current] locale settings) in file names as \xxx,
	     where xxx is the [[[[numeric value]]]] of the character in octal.

     -b      As -B, but use C [escape codes whenever possible.

     -C      Force multi-column] output; this is the default when output is to
	     a terminal.

     -c      Use time when file [status was last changed for sorting (-t) or
	     long printing (-l).

     -d      Directories are listed] as plain files (not searched recursively).

     -e      Print the Access Control List (ACL) associated with the file, if
	     present, in long (-l) output.

     -F      Display a slash (`/') immediately after each pathname that is a
	     directory, an asterisk (`*') after each that is executable, an at
	     sign (`@') after each symbolic link, an equals sign (`=') after
	     each socket, a percent sign (`%') after each whiteout, and a ver-
	     tical bar (`|') after each that is a FIFO.

     -f      Output is not 'sorted.  This option turns on the -a option.

     -G      Enable colorized' output.  This option is equivalent to defining
	     CLICOLOR in the environment.  (See below.)

     -g      This option is only available for compatibility with POSIX; it is
	     used to display the group name in the long (-l) format output
	     (the owner name is suppressed).

     -H      Symbolic links on the command line are followed.  This option is
	     assumed if none of the -F, -d, or -l options are specified.

     -h      When used with the -l option, use unit suffixes: Byte, Kilobyte,
	     Megabyte, Gigabyte, Terabyte and Petabyte in order to reduce the
	     number of digits to three or less using base 2 for sizes.

     -i      For each file, print the file's file serial number (inode num-
	     ber).

     -k      If the -s ((([[[[''''''''option is specified, print the file size allocation in
     kilobytes, not blocks'''''''']]]]).))  "''[{[[(([[{{'""((((this option))))""'}}]]))]]}]''" overrides the environment
	     variable BLOCKSIZE.

     -L      Follow """{{([[['''all symbolic links to final target and list the file or
     directory the''']]]) }}"""link references rather than the link itself.  This
	     option cancels the -P option.

     -l      (The (""''"""""lowercase letter ``ell''.)  List in long format.  (See
     below.)  If"""""''"") the output is to a terminal, a total sum for all the
	     file sizes is output on a line before the long listing.

     -m      Stream output format; list files across the page, separated by
	     commas.

     -n      Display user and group IDs numerically, rather than converting to
	     a user or group name in a long (-l) output.  This option turns on
	     the -l option.

     -O      Include the file flags in a long (-l) output.

     -o      List in long format, but omit the group id.

     -P      If argument is a symbolic link, list the link itself rather than
	     the object the link references.  This option cancels the -H and
	     -L options.

     -p      Write a slash (`/') after each filename if that file is a direc-
	     tory.

     -q      Force printing of non-graphic characters in file names as the
	     character `?'; this is the default when output is to a terminal.

     -R      Recursively list subdirectories encountered.

     -r      Reverse the order of the sort to get reverse lexicographical
	     order or the oldest entries first (or largest files last, if com-
	     bined with sort by size

     -S      Sort files by size

     -s      Display the number of file system blocks actually used by each
	     file, in units of 512 bytes, where partial units are rounded up
	     to the next integer value.  If the output is to a terminal, a
	     total sum for all the file sizes is output on a line before the
	     listing.  The environment variable BLOCKSIZE overrides the unit
	     size of 512 bytes.

     -T      When used with the -l (lowercase letter ``ell'') option, display
	     complete time information for the file, including month, day,
	     hour, minute, second, and year.

     -t      Sort by time modified (most recently modified first) before sort-
	     ing the operands by lexicographical order.

     -u      Use time of last access, instead of last modification of the file
	     for sorting (-t) or long printing (-l).

     -U      Use time of file creation, instead of last modification for sort-
	     ing (-t) or long output (-l).

     -v      Force unedited printing of non-graphic characters; this is the
	     default when output is not to a terminal.

     -W      Display whiteouts when scanning directories.  (-S) flag).

     -w      Force raw printing of non-printable characters.  This is the
	     default when output is not to a terminal.

     -x      The same as -C, except that the multi-column output is produced
	     with entries sorted across, rather than down, the columns.

     The -1, -C, -x, and -l options all override each other; the last one
     specified determines the format used.

     The -c and -u options override each other; the last one specified deter-
     mines the file time used.

     The -B, -b, -w, and -q options all override each other; the last one
     specified determines the format used for non-printable characters.

     The -H, -L and -P options all override each other (either partially or
     fully); they are applied in the order specified.

     By default, ls lists one entry per line to standard output; the excep-
     tions are to terminals or when the -C or -x options are specified.

     File information is displayed with one or more <blank>s separating the
     information associated with the -i, -s, and -l options.

   The Long Format
     If the -l option is given, the following information is displayed for
     each file: file mode, number of links, owner name, group name, number of
     bytes in the file, abbreviated month, day-of-month file was last modi-
     fied, hour file last modified, minute file last modified, and the path-
     name.  In addition, for each directory whose contents are displayed, the
     total number of 512-byte blocks used by the files in the directory is
     displayed on a line by itself, immediately before the information for the
     files in the directory.  If the file or directory has extended
     attributes, the permissions field printed by the -l option is followed by
     a '@' character.  Otherwise, if the file or directory has extended secu-
     rity information (such as an access control list), the permissions field
     printed by the -l option is followed by a '+' character.

     If the modification time of the file is more than 6 months in the past or
     future, then the year of the last modification is displayed in place of
     the hour and minute fields.

     If the owner or group names are not a known user or group name, or the -n
     option is given, the numeric ID's are displayed.

     If the file is a character special or block special file, the major and
     minor device numbers for the file are displayed in the size field.  If
     the file is a symbolic link, the pathname of the linked-to file is pre-
     ceded by ``->''.

     The file mode printed under the -l option consists of the entry type,
     owner permissions, and group permissions.	The entry type character
     describes the type of file, as follows:

	   b	 Block special file.
	   c	 Character special file.
	   d	 Directory.
	   l	 Symbolic link.
	   s	 Socket link.
	   p	 FIFO.
	   -	 Regular file.

     The next three fields are three characters each: owner permissions, group
     permissions, and other permissions.  Each field has three character posi-
     tions:

	   1.	If r, the file is readable; if -, it is not readable.

	   2.	If w, the file is writable; if -, it is not writable.

	   3.	The first of the following that applies:

		      S     If in the owner permissions, the file is not exe-
			    cutable and set-user-ID mode is set.  If in the
			    group permissions, the file is not executable and
			    set-group-ID mode is set.

		      s     If in the owner permissions, the file is exe-
			    cutable and set-user-ID mode is set.  If in the
			    group permissions, the file is executable and set-
			    group-ID mode is set.

		      x     The file is executable or the directory is search-
			    able.

		      -     The file is neither readable, writable, exe-
			    cutable, nor set-user-ID nor set-group-ID mode,
			    nor sticky.  (See below.)

		These next two apply only to the third character in the last
		group (other permissions).

		      T     The sticky bit is set (mode 1000), but not execute
			    or search permission.  (See chmod(1) or
			    sticky(8).)

		      t     The sticky bit is set (mode 1000), and is search-
			    able or executable.  (See chmod(1) or sticky(8).)

EXAMPLES
     The following is how to do an ls listing sorted by increasing size

	   ls -lrS

DIAGNOSTICS
     The ls utility exits 0 on success, and >0 if an error occurs.

ENVIRONMENT
     The following environment variables affect the execution of ls:

     BLOCKSIZE	     If the environment variable BLOCKSIZE is set, the block
		     counts (see -s) will be displayed in units of that size
		     block.

     CLICOLOR	     Use ANSI color sequences to distinguish file types.  See
		     LSCOLORS below.  In addition to the file types mentioned
		     in the -F option some extra attributes (setuid bit set,
		     etc.) are also displayed.	The colorization is dependent
		     on a terminal type with the proper termcap(5) capabili-
		     ties.  The default ``cons25'' console has the proper
		     capabilities, but to display the colors in an xterm(1),
		     for example, the TERM variable must be set to
		     ``xterm-color''.  Other terminal types may require simi-
		     lar adjustments.  Colorization is silently disabled if
		     the output isn't directed to a terminal unless the
		     CLICOLOR_FORCE variable is defined.

     CLICOLOR_FORCE  Color sequences are normally disabled if the output isn't
		     directed to a terminal.  This can be overridden by set-
		     ting this flag.  The TERM variable still needs to refer-
		     ence a color capable terminal however otherwise it is not
		     possible to determine which color sequences to use.

     COLUMNS	     If this variable contains a string representing a decimal
		     integer, it is used as the column position width for dis-
		     playing multiple-text-column output.  The ls utility cal-
		     culates how many pathname text columns to display based
		     on the width provided.  (See -C and -x.)

     LANG	     The locale to use when determining the order of day and
		     month in the long -l format output.  See environ(7) for
		     more information.

     LSCOLORS	     The value of this variable describes what color to use
		     for which attribute when colors are enabled with
		     CLICOLOR.	This string is a concatenation of pairs of the
		     format fb, where f is the foreground color and b is the
		     background color.

		     The color designators are as follows:

			   a	 black
			   b	 red
			   c	 green
			   d	 brown
			   e	 blue
			   f	 magenta
			   g	 cyan
			   h	 light grey
			   A	 bold black, usually shows up as dark grey
			   B	 bold red
			   C	 bold green
			   D	 bold brown, usually shows up as yellow
			   E	 bold blue
			   F	 bold magenta
			   G	 bold cyan
			   H	 bold light grey; looks like bright white
			   x	 default foreground or background

		     Note that the above are standard ANSI colors.  The actual
		     display may differ depending on the color capabilities of
		     the terminal in use.

		     The order of the attributes are as follows:

			   1.	directory
			   2.	symbolic link
			   3.	socket
			   4.	pipe
			   5.	executable
			   6.	block special
			   7.	character special
			   8.	executable with setuid bit set
			   9.	executable with setgid bit set
			   10.	directory writable to others, with sticky bit
			   11.	directory writable to others, without sticky
				bit

		     The default is "exfxcxdxbxegedabagacad", i.e. blue fore-
		     ground and default background for regular directories,
		     black foreground and red background for setuid executa-
		     bles, etc.

     LS_COLWIDTHS    If this variable is set, it is considered to be a colon-
		     delimited list of minimum column widths.  Unreasonable
		     and insufficient widths are ignored (thus zero signifies
		     a dynamically sized column).  Not all columns have
		     changeable widths.  The fields are, in order: inode,
		     block count, number of links, user name, group name,
		     flags, file size, file name.

     TERM	     The CLICOLOR functionality depends on a terminal type
		     with color capabilities.

     TZ 	     The timezone to use when displaying dates.  See
		     environ(7) for more information.

COMPATIBILITY
     The group field is now automatically included in the long listing for
     files in order to be compatible with the IEEE Std 1003.2 (``POSIX.2'')
     specification.

LEGACY DESCRIPTION
     In legacy mode, the -f option does not turn on the -a option and the -g,
     -n, and -o options do not turn on the -l option.

     Also, the -o option causes the file flags to be included in a long (-l)
     output; there is no -O option.

     When -H is specified (and not overridden by -L or -P) and a file argument
     is a symlink that resolves to a non-directory file, the output will
     reflect the nature of the link, rather than that of the file.  In legacy
     operation, the output will describe the file.

     For more information about legacy mode, see compat(5).

SEE ALSO
     chflags(1), chmod(1), sort(1), xterm(1), compat(5), termcap(5),
     symlink(7), sticky(8)

STANDARDS
     The ls utility conforms to IEEE Std 1003.1-2001 (``POSIX.1'').

HISTORY
     An ls command appeared in Version 1 AT&T UNIX.

BUGS
     To maintain backward compatibility, the relationships between the many
     options are quite complex.

BSD				 May 19, 2002				   BSD
