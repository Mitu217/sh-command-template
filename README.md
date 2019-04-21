# shell-cmd-template

## Getting Started

Please fork this project and make the necessary changes

## Development

### Necessary Change

#### Usage

Please change `usage` function of main.sh

```sh
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
```

#### version

Please change `version` function of main.sh

```sh
function version {
    echo "$(basename ${0}) version 0.0.1 "
}
```

#### subcommand

Please change `case block` for subcommand function of main.sh

Subcommand implementation refers to `hello.sh`

```sh
case ${1} in

    # Please add a subcommand here

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
```

### Running

```sh
./cmd.sh <subcommand>
```
