require 'set'

class Shop

  attr_reader :total

  def initialize
    @total = 0
  end

inventory = Hash.new  
["A"].each {|item| inventory[item] = 50}
["B"].each {|item| inventory[item] = 30}
["C"].each {|item| inventory[item] = 20}
["D"].each {|item| inventory[item] = 15}

# selected_items = [["AAB"], ["AAA"], ["ABCD"], ["AA"], ["AAAAAA"]]
selected_items = ("AAB")


  def checkout(selected_items, inventory)
    basket = selected_items.split('')
    basket.each {|item| @total += inventory[item]}
      p @total
      p basket
      discount_01(basket)
      p @total
      return @total
  end

  def discount_01(basket)
    amount = basket.count("A")
    sqrt = Math.sqrt(amount).floor
    if amount % 3 == 0
      @total -= ((20) * sqrt)
    end
  end


  # for every multiple of 3 apply a reduction 


  # def subset?(basket)
  #   p basket
  #   basket.to_s.each == "A"
  #   return @total - 20
  # end

  # def discount_01(basket, total)
  #   p basket
  #   basket.uniq.any? do |x| 
  #     if basket.count(x) % 3 == 0 && x == "A"
  #       @total - 20
  #       p @total
  #     end
  #   end 
  # end


  
  # def discount_01(basket, total)
  #   p basket
  #   basket.each do |item| 
  #     if item == "A" && item % 3 == 0
  #       @total -= 20
  #     end
  #   end
  # end


  # def checkout(selected_items, inventory)
  #   @total = 0
  #   basket = selected_items.split('')
  #   p basket
  #   basket.each {|item| total += @INVENTORY[item]}
  #   discount_01(basket)
  #   return total
  # end

  # def discount_01(basket)
  #   basket.each do |item| 
  #     if item == "A" && item % 3 == 0
  #       @total - 20
  #     end
  #   end
  # end

end