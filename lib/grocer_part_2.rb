require_relative './part_1_solution.rb'
require 'pry'

def delete_item(item, cart)
  cart.length.times do |index|
    if cart[index][:item] == item
      cart.delete_at(index)
    end
  end
  cart
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  coupons.each do |coupon|
    find_item_by_name_in_collection(coupon[:item], cart)[:count] == coupon[:num]
      ?  delete_item(coupon[:item], cart) :
        find_item_by_name_in_collection(coupon[:item], cart)[:count] -= coupon[:num]
    binding.pry
    cart << {
      item: coupon[:item].upcase + " W/COUPON",
      price: coupon[:cost] / coupon[:num],
      clearance: true,
      count: coupon[:num],
    }
  end
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
