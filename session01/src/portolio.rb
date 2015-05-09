class Portfolio
  attr_reader :stocks

  def initialize(data)
    @stocks = Stocks.new(data["Stocks"])
  end
end

class Stocks
  attr_reader :tickers

  def initialize(stock_hash)
    @tickers = Hash.new

    stock_hash.keys.each {|ticker| @tickers[ticker] = Stock.new(stock_hash[ticker])}
  end
end

class Stock
  attr_reader :name
  attr_reader :transactions

  def initialize(data)
    @name = data["Name"]
    @transactions = Transactions.new(data["Transactions"])
  end
end

class Transactions
  attr_reader :items

  def initialize (transaction_list)
    @items = Array.new

    transaction_list.each do |transaction|
      case transaction["Action"]
        when "Purchase"
          @items << Purchase.new(transaction)
        when "Dividend"
          @items << Dividend.new(transaction)
        when "Stock Split"
          @items << StockSplit.new(transaction)
        else
          raise "unknow type of transaction found in portfolio file"
        end
    end
  end
end

class Transaction
  attr_accessor :action
  attr_accessor :date

  def initialize(data)
    super(data)
    @action = data["Action"]
    @date = data["Date"]
  end
end

class Purchase < Transaction
  attr_accessor :shares
  attr_accessor :price

  def initialize(data)
    super(data)
    @shares = data["shares"]
    @price = data["price"]
  end
end

class Dividend < Transaction
  attr_accessor :amount

  def initialize(data)
    super(data)
    @amount = data["Amount"]
  end
end

class StockSplit < Transaction
  attr_accessor :newNumber
  attr_accessor :oldNumber

  def initialize(data)
    super(data)
    @newNumber = data["NewNumber"]
    @oldNumber = data["OldNumber"]
  end
end