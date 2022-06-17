class Shop

inventory = Hash.new  
["A"].each {|item| inventory[item] = 50}
["B"].each {|item| inventory[item] = 30}
["C"].each {|item| inventory[item] = 20}
["D"].each {|item| inventory[item] = 15}

selected_items = "AAB"

  def checkout(selected_items, inventory)
    total = 0
    p selected_items
    selected_items.upcase.split('').each {|item| total += inventory[item]}
      return total
  end

end