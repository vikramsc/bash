#!/bin/bash

############################################################################################################
# Usage:
#              create.sh <options>
# where, options can be:
#   --name=<>                          Object Name
#   --list=<yes/no>                    Run a backup after db creation (default: yes)
#
############################################################################################################

## Globals
NAME=
LIST=true

#-----------------------------------------------------------------------------------------------------------
# Comments
function printUsage {
  echo -n "$0"                \
      "--name=<>"        
      "[--list=<yes/no> ]"
  echo
  exit $1
}

#-----------------------------------------------------------------------------------------------------------

if [ $# -lt 1 ]; then
  printUsage 1
fi

LONG_OPTIONS="name::,list::"

OPTS="$(getopt --options="" --long ${LONG_OPTIONS} -- "$@")"
eval set -- "${OPTS}"
unset OPTS

while true ;
do
  case "$1" in
    --name)
        NAME=$2; shift 2 ;;
    --list)
        LIST=$2; shift 2;;
    --)
        shift; break;;
    *)
        echo "Invalid option: $1"; printUsage 1;;
  esac
done

[ -z "${NAME}" ] && { echo "ERROR: --name not specified"; exit 1; }

if [ ! -z "${LIST}" -a "${LIST}" -eq "yes" ]; then
  ls -l ${NAME} ; ret=$?
  [ $ret -ne 0 ] && { echo "ERROR: Database create failed"; exit $ret; }
fi

exit 0
