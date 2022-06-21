require './lib/shop.rb'

describe Shop do

  let (:shop) { Shop.new(shop_inventory) }
  let (:shop_inventory) {{"A"=>50, "B"=>30, "C"=>20, "D"=>15}}
  let (:basket) {[["AAB"], ["AAA"], ["ABCD"], ["AA"], ["AAAAAA"], ["AAAAAAAAA"], ["ABB"], ["BBBB"]]}

  it 'Creates a new shop object with an empty total attribute' do
    expect(shop.total).to eq (0)
  end

    describe '#checkout' do
      it 'takes a string and returns an integer or total price' do
        expect(shop.checkout(basket[2])).to eq (115)
      end
    end
    
    describe '#discount_01' do
      it 'reduces total price by £20 for every 3x "A" items purchased' do
        expect(shop.checkout(basket[1])).to eq (130)
      end

      it 'reduces total price by £40 for 6x "A" items purchased' do
        expect(shop.checkout(basket[4])).to eq (260)
      end

      it 'reduces total price by £60 for 9x "A" items purchased' do
        expect(shop.checkout(basket[5])).to eq (390)
      end
    end

    describe '#discount_02' do
      it 'reduces total price by £15 for every 2x "B" items purchased' do
        expect(shop.checkout(basket[6])).to eq (95)
      end

      it 'reduces total price by £30 for every 4x "B" items purchased' do
        expect(shop.checkout(basket[7])).to eq (90)
      end
    end




end