PROGRAM_ID="hero"

snarkos developer deploy \
--private-key APrivateKey1zkp75qCUdBWqNNcyiCaN5LtZMhJtf2jbWVjhWg7AYibETBD \
--query https://api.explorer.aleo.org/v1 \
--priority-fee 0 \
"${PROGRAM_ID}.aleo" \
--broadcast https://api.explorer.aleo.org/v1/testnet3/transaction/broadcast \
--path build/ 
