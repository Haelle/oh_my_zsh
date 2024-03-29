# Decode jwt in console !
decode_base64_url() {
  local len=$((${#1} % 4))
  local result="$1"
  if [ $len -eq 2 ]; then result="$1"'=='
  elif [ $len -eq 3 ]; then result="$1"'='
  fi
  echo "$result" | base64 --decode
}

decode_jwt(){
   decode_base64_url $(echo -n $2 | cut -d "." -f $1) | jq .
}

full_decode_jwt() {
  echo '=Header=='
  decode_jwt 1 $1
  echo '==Payload=='
  decode_jwt 2 $1
}

# Decode JWT
alias jwt="full_decode_jwt"

# Decode JWT header
alias jwth="decode_jwt 1"

# Decode JWT Payload
alias jwtp="decode_jwt 2"
