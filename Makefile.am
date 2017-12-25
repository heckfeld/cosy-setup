ACLOCAL_AMFLAGS = -I m4

# the configuration of cosy (probably global on plisch)

tcldir = @TCL@
confdir = $(tcldir)/conf
bitmapdir = @TCL@/bitmap
fgendir = @GLOBALDIR@/fgen
admdir = @VARDIR@/adm
backupdir = @VARDIR@/backup
etcdir = $(tcldir)/etc
logdir = @VARDIR@/log
orbitdir = @GLOBALDIR@/orbit
statusdir = @VARDIR@/status
profile_ddir = $(sysconfdir)/profile.d
logrotate_ddir = $(sysconfdir)/logrotate.d
rsyslog_ddir = $(sysconfdir)/rsyslog.d

all_scripts = extr ibl steererh steererv bumper tx ecsteer exsep ibl_diag bpm sext impuls mwpc emittanz qbl nwpol visp use sw_tx rdiag psol blwdip ecool anker dl blwanke ppuls dsf vlwsteer rpol expol zyk stoco newcav anzeige feedback exptiming h6466c pax bb 2mevcool cocomm dtune

bin_SCRIPTS = cosyEnv guiStarter fun-cmd cosy-server-cmd
starters = steererh steererv sext extr bpm impuls qbl ibl ibl_diag zyk

dist_profile_d_DATA = cosy.sh
dist_rsyslog_d_DATA = 40-coob.conf
dist_logrotate_d_DATA = coob

40-coob.conf coob: genconf
	./genconf

dist_conf_DATA = guis.conf hosts
dist_bitmap_DATA = smily.gif \
	      smily.xpm \
	      smilyequal.xpm \
	      smilynice.xpm \
	      c10.gif c11.gif c12.gif c13.gif c14.gif c15.gif \
	      c16.gif c17.gif c18.gif c1.gif c2.gif c3.gif c4.gif \
	      c5.gif c6.gif c7.gif c8.gif c9.gif \
	      cosy_logo_large.ppm dontpanic.xpm
# adm_DATA = tx_ev_list.dat
adm_DATA = dummy
dist_backup_DATA = dummy
dist_etc_DATA = errorlist
dist_log_DATA = dummy
dist_orbit_DATA = dummy
status_DATA = dummy
dist_fgen_DATA = dummy

install-data-hook:
	mkdir -p $(DESTDIR)$(fgendir)/steerer
	mkdir -p $(DESTDIR)$(fgendir)/sext
	mkdir -p $(DESTDIR)$(fgendir)/impuls

install-exec-hook:
	for f in $(starters); do \
	    test -f $(DESTDIR)$(bindir)/$$f && rm -f $(DESTDIR)$(bindir)/$$f; \
	    ln -s $(DESTDIR)$(bindir)/guiStarter $(DESTDIR)$(bindir)/$$f; \
	done
#	@echo "we have to restart the syslog daemon!"; sudo service rsyslog restart

uninstall-hook:
	rm -f $(DESTDIR)$(bindir)/steererh
	rm -f $(DESTDIR)$(bindir)/steererv
	rm -f $(DESTDIR)$(bindir)/sext
	rm -f $(DESTDIR)$(bindir)/bpm


.PHONY: dummy
dummy:

