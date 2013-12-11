class Takeaway


  # makes sense but it should have been a constant
  def menu 
    { 
      "Fried Chicken Roll" => 12,
      "Rotary Burger" => 12,
      "Chicken Wings" => 5,
      "Smoked Chicken Salad" => 7,
      "Dripping Chips" => 3,
    }
  end
  

  def check_order(order_ticket,total_order)
    # I can see the logic but there's a mess with indentation
    # However, the logic does make sense.
    # If you added the Twilio or Sendgrid bit,
    # It would have worked. You have a decent but incomplete solution
    sum_order = []
    order_ticket.each do |order_item| 
      order_item.each do |item_name, quantity|   
        sum_order << menu[item_name] * quantity
      end
    end
    total_price = sum_order.inject do |sum,num| 
      sum += num
    end
    total_price == total_order          
  end

end