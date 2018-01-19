CURRENCIES = ['BTC', 'ETH', 'BCH', 'LTC']
require 'coinbase/wallet'
require './secrets.rb'
require './lib/report.rb'
require './lib/price.rb'
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

while true do
  hash = Price.get(client)
  puts Report.from_hash(hash)
  sleep 2
end
