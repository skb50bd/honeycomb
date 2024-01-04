set -a
source .env
set +a

input_file="$1"
output_file="$2"
envsubst < "$input_file" > "$output_file"
