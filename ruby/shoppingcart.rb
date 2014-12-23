class Item
	attr_accessor :prize

	def initialize( prize)
		@prize = prize
	end 
end

class Fruit < Item
end

class Houseware < Item
end

class ShoppingCart
	attr_accessor :prize, :itemcount
	@prize = 0
	@day
	@itemcount
	def initialize(day)
		@day = day
		@itemcount = 0
	end

	def discount(item)
		if item.class.name == "Fruit" && (@day==6 || @day==7)
			return item.prize*0.9
		elsif item.class.name == "Houseware" && item.prize > 100
			return item.prize*0.95
		else
			return item.prize
		end
	end

	def addItem(item)
		puts "#{ObjectSpace._id2ref(item)} added to the ShoppingCart"
		@prize = @prize.to_i + discount(item).to_i
		@itemcount = @itemcount.to_i + 1.to_i
	end

	def pay()
		if @itemcount >= 5
			@prize = @prize*0.9 
		end
		puts "The prize of the products is: #{prize}"
	end
end

#create objects in the Shop
bananas = Fruit.new 10
orange_juice = Item.new 10
rice = Item.new 1
vacuum_cleaner = Houseware.new 150
anchovies = Item.new 2

#create shoppingcart
cart = ShoppingCart.new 6
gets.chomp

cart.addItem bananas
cart.addItem bananas
cart.addItem bananas
cart.addItem bananas
cart.addItem bananas
cart.addItem rice
cart.pay
gets.chomp