#
# COSY Controls
#
export CCP=/mnt/cc-x/cc-x4/ccp
export CPC=$CCP/cpc3p0
export RTOS=$CCP/rtos3p0
export TOOLS=$CCP/tools3p0
export TARG=$CCP/targ3p0

export COOB=/mnt/cc-x/cc-x3/coob
export TCL=/mnt/cc-x/cc-x3/coob

export COSMO=/mnt/cc-x/cc-x3/cosmo
export DATABASE=$COSMO/src/database
export COSMO_BIN=$COSMO/bin
export RT_MODELL=$COSMO/modell

export PGUSER=operator
export PGHOST=dbserver
export POSTGRES_HOST=dbserver

export EPICS_CA_ADDR_LIST="134.94.210.216 134.94.210.201 134.94.210.202 134.94.210.203 134.94.210.204 134.94.210.205 134.94.210.206 134.94.210.207 134.94.210.208 134.94.210.209 134.94.210.210 134.94.210.211 134.94.210.212 134.94.210.213 134.94.210.214 134.94.210.215"


LXFGEN=/mnt/cc-lx/linux/fgen
LXFGEN_SRC=$LXFGEN/src
LXFGEN_H=$LXFGEN/include
LXFGEN_LIB=$LXFGEN/lib
LXFGEN_ETC=$LXFGEN/etc

export LXFGEN LXFGEN_SRC LXFGEN_H LXFGEN_LIB LXFGEN_ETC

export PATH=$LXFGEN/bin:$PATH:/opt/epics/base/bin/linux-x86_64

export MANPATH=$MANPATH:$LXFGEN/share/man

# Local TCL extension (scsr fgen timeout ..)
export TCLLIBPATH="$TCLLIBPATH $LXFGEN/share"

#
# EPICS Installation Fr 25. Nov 11:17:07 CET 2016

export EPICS_BASE=$LXFGEN/opt/epics/base
export EPICS_HOST_ARCH=linux-x86_64
# new path needs to come first, because there is an old x86 installation in $COOB/bin
export PATH=$EPICS_BASE/bin/$EPICS_HOST_ARCH:$PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$EPICS_BASE/lib/$EPICS_HOST_ARCH:$LXFGEN/lib

export OC=$LXFGEN/opt/epics/iocs/orbitCorrectionIOC
