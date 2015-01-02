class Item
	attr_accessor :name, :price

	def initialize(name, price)
		@name = name
		@price = price
	end

	def discount()
		if self.class.name == "Fruit" && (@day==6 || @day==7)
			return self.price * 0.9
		elsif self.class.name == "Houseware" && self.price > 100
			return self.price * 0.95
		else
			return self.price
		end
	end 
end

class Fruit < Item
end

class Houseware < Item
end

class ShoppingCart
	@item_count
	@price
	def initialize(day)
		@day = day
		@item_count = 0
	end

	def add_item(item)
		puts "#{item.name} added to the ShoppingCart"
		@price = @price.to_i + item.discount.to_i
		@item_count = @item_count.to_i + 1.to_i
	end

	def pay
		if @item_count >= 5
			@price = @price * 0.9 
		end
		puts "The price of the products is: #{@price}"
	end
end

#create objects in the Shop
bananas = Fruit.new("Bananas", 10)
orange_juice = Item.new("Orange_juice", 10)
rice = Item.new("Rice", 1)
vacuum_cleaner = Houseware.new("Vacuum_cleaner", 150)
anchovies = Item.new("Anchovies", 2)

#create shoppingcart and buy
cart = ShoppingCart.new 6
cart.add_item bananas
cart.add_item bananas
cart.add_item bananas
cart.add_item bananas
cart.add_item bananas
cart.add_item rice
cart.pay