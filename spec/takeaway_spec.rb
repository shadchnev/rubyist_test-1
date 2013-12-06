require 'takeaway'

  describe Takeaway do

    context 'should have a menu' do

      it 'which contains a dish' do 
          takeaway = Takeaway.new
          expect(takeaway.menu.include?("Fried Chicken Roll")).to be_true
      end 

      it 'which lists the price of each dish' do 
          takeaway = Takeaway.new
          expect(takeaway.menu["Fried Chicken Roll"]).to eq(12)
      end

      it 'which has 5 items on the menu' do
          takeaway = Takeaway.new
          expect(takeaway.menu).to have(5).things
      end

    end

  end

