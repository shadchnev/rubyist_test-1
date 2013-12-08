class Takeaway


  def menu 
    { 
      "Fried Chicken Roll" => 12,
      "Rotary Burger" => 12,
      "Chicken Wings" => 5,
      "Smoked Chicken Salad" => 7,
      "Dripping Chips" => 3,
    }
  end
  

  def check_order(order_list,total_order)
      
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