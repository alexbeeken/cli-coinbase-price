class Price
  def self.get(client, currencies = CURRENCIES)
    out = {}
    currencies.each do |curr|
      out[symbolize(curr)] =
        client
          .buy_price(
            {currency_pair: "#{curr}-USD"}
          )['amount']
    end
    out
  end

  private

  def self.symbolize(str)
    str.downcase.to_sym
  end
end
