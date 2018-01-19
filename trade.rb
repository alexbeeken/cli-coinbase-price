require 'coinbase/wallet'
require './secrets.rb'
require 'pry'

client = Coinbase::Wallet::Client.new(
  api_key: API_KEY,
  api_secret: API_SECRET
)

# account = client.primary_account
# transactions = client.transactions(account.id)
# current_btc = account.balance['btc']
# current_eth = account.balance['eth']

current_btc = 0.0083
current_eth = 0.1152

btc_price = client.buy_price({currency_pair: 'BTC-USD'})
eth_price = client.buy_price({currency_pair: 'ETH-USD'})
puts "eth: #{eth_price['amount']} btc: #{btc_price['amount']}"
