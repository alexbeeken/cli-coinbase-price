This is a simple script for trading bitcoin and other currencies from coinbase.

In order to use you'll need a coinbase account and API keys. Coinbase has (at the moment) disabled sandbox data so you'll have to sign up and wait 48 hours to begin working with real data.

Before running, you have to install gems individually. In order to get correct ETH price, I had to install using the `specific_install`
`gem install specific_install`
`gem specific_install https://github.com/coinbase/coinbase-ruby.git`

then run with: `ruby trade.rb`
