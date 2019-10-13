function log_info () {
  echo -e "\e[93m$1\e[0m"
}

function log_success () {
  echo -e "\e[32m$1\e[0m"
}

function current_path () {
  echo $( cd "$(dirname "$0")" ; pwd -P )
}
