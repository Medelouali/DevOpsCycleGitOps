# Generate a random string containing alphanumeric characters
random_string=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 12)

# Encode the random string using base64
encoded_string=$(echo -n "$random_string" | base64 -w 0)

echo "Random string: $random_string"
echo "Base64 encoded string: $encoded_string"
