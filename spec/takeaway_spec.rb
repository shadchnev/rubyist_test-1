require 'takeaway'

  describe Takeaway do

  let(:takeaway) { Takeaway.new }

    context 'should have a menu' do

      it 'which contains a dish' do 
          expect(takeaway.menu.include?("Fried Chicken Roll")).to be_true
      end 

      it 'which lists the price of a dish' do 
          expect(takeaway.menu["Fried Chicken Roll"]).to eq(12)
      end

      it 'which holds list of 5 items on the menu' do
          expect(takeaway.menu).to have(5).things
      end

    end


    it 'checks recieved order ticket' do 
      expect(takeaway.check_order [{"Fried Chicken Roll" => 2}],24).to be_true
    end

  end

