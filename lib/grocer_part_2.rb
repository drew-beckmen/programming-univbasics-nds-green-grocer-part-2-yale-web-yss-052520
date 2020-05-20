require_relative './part_1_solution.rb'
require 'pry'

#Helper method takes in an array of hashes (cart) and a value
# corresponding to the item key and deletes the hash with the
# value of the parameter: item. 
def delete_item(item, cart)
  cart.length.times do |index|
    if cart[index][:item] == item
      cart.delete_at(index)
    end
  end
  cart
end

def apply_coupons(cart, coupons)
  coupons.each do |coupon|
    find_item_by_name_in_collection(coupon[:item], cart)[:count] -= coupon[:num]
    cart << {
      item: coupon[:item].upcase + " W/COUPON",
      price: coupon[:cost] / coupon[:num],
      clearance: find_item_by_name_in_collection(coupon[:item], cart)[:clearance],
      count: coupon[:num]
    }
  end
  cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
