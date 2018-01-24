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

while true do
  hash = Price.get(client)
  puts Report.from_hash(hash)
  sleep 2
end
