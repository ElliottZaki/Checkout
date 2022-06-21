class Shop

  attr_reader :total, :inventory

  def initialize(inventory)
    @total = 0
    @inventory = inventory
  end

inventory = Hash.new 
["A"].each {|item| inventory[item] = 50}
["B"].each {|item| inventory[item] = 30}
["C"].each {|item| inventory[item] = 20}
["D"].each {|item| inventory[item] = 15}

selected_items = ("")

  def checkout(selected_items)
    basket = selected_items[0].split('')
    # basket.each do |x|
    correct_barcode?(basket)
      if correct_barcode?(basket)
        basket.each {|item| @total += inventory[item]}
          discount_01(basket)
          discount_02(basket)
          return @total
      else
        return @total -= 1
      end
    end
  end

  def discount_01(basket)
    amount = basket.count("A")
    sqrt = Math.sqrt(amount).floor
    if amount % 3 == 0
      @total -= ((20) * sqrt)
    end
  end

  def discount_02(basket)
    amount = basket.count("B")
    sqrt = Math.sqrt(amount).floor
    if amount % 2 == 0
      @total -= ((15) * sqrt)
    end
  end

  private

  def correct_barcode?(basket)
    basket.each do |x|
      if x == "A" || x == "B" || x == "C" || x == "D"
        return true
      else 
        return false
      end
    end 
end