#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

# fetch SVN revision
define([svnversion], esyscmd([sh -c "svnversion -n"]))

# Start
AC_PREREQ([2.60])
AC_INIT([configuration], [1.0-svnversion], [mi.simon@fz-juelich.de])
AM_INIT_AUTOMAKE([foreign])
AC_CONFIG_MACRO_DIR([m4])
AC_CONFIG_SRCDIR([hosts.in])
AC_DEFINE([SVN_REVISION], "svnversion", [SVN Revision])

# Checks for programs.

# Checks for libraries.

# Checks for header files.

# Checks for typedefs, structures, and compiler characteristics.

# Checks for library functions.

# Make substitutions
AC_ARG_WITH([testbetrieb],
	    [AS_HELP_STRING([--with-testbetrieb],
	      [cosy testbetrieb, schalte um auf dummy targets])],
	    [],
	    [with_testbetrieb=no])
AS_IF([test "x$with_testbetrieb" = xno],
   [AC_SUBST(server,[plisch.cc.kfa-juelich.de])
    AC_SUBST(timing,[plisch.cc.kfa-juelich.de])
    AC_SUBST(PGHOST,[plisch.cc.kfa-juelich.de])],
   [AC_SUBST(server,[bill])
    AC_SUBST(timing,[bill])
    AC_SUBST(PGHOST,[134.94.224.10])])

# TCL is the "static" configuration AREA of server, timing and tools
AC_SUBST([TCL],[$HOME/tcl])
# Variable Area
AC_SUBST([VARDIR],[$HOME/coob])
AC_SUBST([GLOBALDIR],[$HOME/coob])

AC_SUBST([FGEN_FEINEDITOR])
AC_SUBST([XMAD_HOME])
AC_SUBST([COSMO_SRC])
AC_SUBST([COSMO_BIN])
AC_SUBST([MODELLDIR])
AC_SUBST([RT_MODELL])
AC_SUBST([COSY_DBNAME])
AC_SUBST([OPERATOR_HOME])
AC_SUBST([SVN_REVISION], "svnversion")


# files to be generated
AC_CONFIG_FILES([Makefile
		 hosts])
AC_OUTPUT
