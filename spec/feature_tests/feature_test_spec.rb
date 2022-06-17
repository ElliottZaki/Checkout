require './lib/shop.rb'
shop = Shop.new
inventory = {"A"=>50, "B"=>30, "C"=>20, "D"=>15}
selected_items = "AAB"
shop.checkout(selected_items, inventory)