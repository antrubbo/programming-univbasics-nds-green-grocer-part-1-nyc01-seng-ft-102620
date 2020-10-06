require 'pry'

def find_item_by_name_in_collection(name, collection)
  item_hash = []
  collection.each do |i|
    if name == i[:item]
      item_hash << i
    end
  end
  item_hash[0]
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  cart.map do |i|
    i.store(:count, 1)
  end
  
  if cart[0].eql?(cart[1])
    cart.uniq
    cart[0][:count] += 1 
  end
  
  # cart.each do |i|
  # if i.eql?(cart[1])
  #   cart.uniq
  # binding.pry
  
  # cart.each do |i|
  #   if i[:item]
  #     i[:count] += 1 
  #   end
  # end
  cart
end


  