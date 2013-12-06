require 'takeaway'

  describe Takeaway do

    context 'should have a menu' do

      it 'which contains a dish' do 
          takeaway = Takeaway.new
          expect(takeaway.menu.include?("Fried Chicken Roll")).to be_true
      end 

    end

  end

