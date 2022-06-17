require './lib/shop.rb'

describe Shop do

  let (:shop) { Shop.new }
  let (:inventory) {{"A"=>50, "B"=>30, "C"=>20, "D"=>15}}
  let (:selected_items) {"AAB"}

  it 'Creates a new shop object' do
    expect(shop).to eq (shop)
  end

    describe '#checkout' do
      it 'takes a string and returns an integer or total price' do
        expect(shop.checkout(selected_items, inventory)).to eq (130)
      end
    end 


end