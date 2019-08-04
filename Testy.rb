def apply_coupons(cart, coupons)
  hash = cart 
  
  coupons.each do |coupon_hash|
    item = coupon_hash[:item]
    
    if !hash[item].nil? && hash[item][:count] >= coupon_hash[:num]
      temp = {"#{item} W/COUPON" => {
        :price => coupon_hash[:cost],
        :clearance => hash[item][:clearance],
        :count => 1 
      }
    }
    
    if hash["#{item} W/COUPON"].nil?
      hash.merge!(temp)
    else
      hash["#{item} W/COUPON"][:count] += 1 
    end
    hash[item][:count] -= coupon_hash[:num]
    end 
  end
  hash
end


def apply_clearance(cart)
  newCart = cart
  newCart.each do |x, y| 
    if y[:clearance] = true 
      y{:price] * 0.8 = y[:price]
    return newCart
end 

def apply_clearance(cart)
  cart.each do |item, price_hash|
    if price_hash[:clearance] == true
      price_hash[:price] = (price_hash[:price] * 0.8).round(2)
    end
  end
  cart
end

def checkout(cart, coupons)
  hash = cart
  hash.each do |item, price_hash|
  
  
end 


def apply_coupons(cart, coupons)
  newHash = cart
  coupons.each do |item, 
  
  
  hash = cart 
  hash.each do |item, price_hash|
    
end
