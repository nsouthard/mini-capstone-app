class Product < ApplicationRecord

  def friendly_updated_at
    updated_at.strftime('%b %d, %Y')
  end

  def sale_message
    if price < 35  
      p 'Discount Item!'
    else 
      p 'Everyday Value!!'
    end
  end 

  def tax
    price * 0.09
  end

  def total_cost
    price + tax
  end

end
