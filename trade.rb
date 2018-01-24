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
  Report.from_hash(Price.get(client))
  sleep 2
end
