#!/bin/sh

trap 'echo Error: $0:$LINENO stopped; exit 1' ERR INT
set -eu

# Get absolute path independent of execution location
CMDPATH=$(cd $(dirname $0); pwd)

# Load essential library
. "$CMDPATH"/lib/vital.sh

# Load subcommand
. "$CMDPATH"/hello.sh

function usage {
    cat <<EOF
$(basename ${0}) is a tool for ...

Usage:
    $(basename ${0}) [command] [<options>]

Options:
    --version, -v     print $(basename ${0}) version
    --help, -h        print this
EOF
}

function version {
    echo "$(basename ${0}) version 0.0.1 "
}

if [ $# -eq 0 ]; then
    usage
else
    case ${1} in

        # Please add a subcommand here

        hello)
            hello
        ;;

        --help|-h)
            usage
        ;;

        --version|-v)
            version
        ;;

        *)
            echo "[ERROR] Invalid subcommand '${1}'"
            usage
            exit 1
        ;;
    esac
fi
