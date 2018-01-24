class Report
  PADDING = -10

  def self.from_hash(currencies)
    formatter = -> curr { "#{curr}: %<#{curr}>#{PADDING}s" }
    report = ""
    currencies.each do |pair|
      report.concat formatter.call(pair[0])
    end
    puts report % currencies
  end
end
