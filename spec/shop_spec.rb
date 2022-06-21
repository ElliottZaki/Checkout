require './lib/shop.rb'

describe Shop do

  let (:shop) { Shop.new }
  let (:shop_inventory) {{"A"=>50, "B"=>30, "C"=>20, "D"=>15}}
  # let (:basket) {[["AAB"], ["AAA"], ["ABCD"], ["AA"], ["AAAAAA"]]}
  let (:basket) {"AAA"}
  let (:basket2) {"AAB"}
  let (:basket3) {"AAAAAA"}
  let (:basket4) {"AAAAAAAAA"}

  it 'Creates a new shop object' do
    expect(shop).to eq (shop)
  end

    describe '#checkout' do
      it 'takes a string and returns an integer or total price' do
        # expect(shop.checkout(basket2, shop_inventory)).to eq (130)
        # expect(shop.checkout(basket[3], shop_inventory)).to eq (100)
        # expect(shop.checkout(basket[2], shop_inventory)).to eq (115)
      end
    end
    
    describe '#discount_01' do
      it 'reduces total price by £20 for every 3x "A" items purchased' do
        expect(shop.checkout(basket, shop_inventory)).to eq (130)
      end

      it 'reduces total price by £40 for 6x "A" items purchased' do
        expect(shop.checkout(basket3, shop_inventory)).to eq (260)
      end

      it 'reduces total price by £40 for 6x "A" items purchased' do
        expect(shop.checkout(basket4, shop_inventory)).to eq (390)
      end
    end


    # let (:shop) { Shop.new }
    # let (:shop_inventory) {{"A"=>50, "B"=>30, "C"=>20, "D"=>15}}
    # # let (:basket) {[["AAB"], ["AAA"], ["ABCD"], ["AA"], ["AAAAAA"]]}
    # let (:basket) {"AAB"}
    # let (:basket_02) {"AAA"}
  
    # it 'Creates a new shop object' do
    #   expect(shop).to eq (shop)
    # end
  
    #   describe '#checkout' do
    #     it 'takes a string and returns an integer or total price' do
    #       expect(shop.checkout(basket, shop_inventory, shop.total)).to eq (130)
    #       # expect(shop.checkout(basket[3], shop_inventory)).to eq (100)
    #     end
    #   end
      
    #   describe '#discount_01' do
    #     it 'reduces total price by £20 for every 3x "A" purchased.' do
    #       expect(shop.checkout(basket_02, shop_inventory, shop.total)).to eq (130)
    #       # expect(shop.checkout(basket[4], shop_inventory)).to eq (260)
    #     end
    #   end


end