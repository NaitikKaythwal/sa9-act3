#prob1.py code converted to ruby:

class VendingMachine
  attr_reader :amount, :bottles

  def initialize(bottles = 20)
    @bottles = bottles
  end

  def purchase(amount)
    @bottles -= amount if amount <= @bottles
  end

  def restock(amount)
    @bottles += amount
  end

  def get_inventory()
    @bottles.dup
  end

  def report()
    puts "Inventory: #@bottles bottles"
  end
end
