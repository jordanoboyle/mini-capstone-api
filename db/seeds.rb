# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# 2.times do
#   product = Product.new(name: "Goku Mug", price: 10, image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXaR8B3xDXlLqOo5Y1q8c2T1lV6K-p31G3wYRw8uEQ4g&s", description: "Ultra Instinct mug")
#   product.save

#   product = Product.new(name: "Totoro Hoody", price: 68, image_url: "https://enez76gwp29.exactdn.com/wp-content/uploads/2020/12/redirect12092020091218-1.jpg", description: "Totoro sleeping with his little friend. Cream white hoodie.")
#   product.save
  
#   product = Product.new(name: "Luffy hoodie", price: 55, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiZJezsIzQgQ7Lgm0dBmw3-Yng7reeleLI9PkzjVJnQw&s", description: "Monkey D Luffy Hoodie")
#   product.save
# end

# Product.create(name: "Rogue One T-shirt", price: 20, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNitzTI9hOr2rQ9Ma4t12ISRZrFP9R7GYWXeB9YeMrGQ&s", description: "Star wars as it was meant to be!" )

# Product.create(name: "Ni No Kuni: Wrath of the White Witch", price: 30, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfzj99CexElJwlYW5DlycGbO_UQX6BLwUlVrfOj3aqYQ&s", description: "Video game. Studio Ghibli enters the world of video games." )


# supplier = Supplier.new(name: "Box Lunch", email: "person@BL.com", phone_number: "3333333333")
# supplier.save
# supplier = Supplier.new(name: "Hot Topic", email: "lady@TOPIC.com", phone_number: "5647657784")
# supplier.save
# supplier = Supplier.new(name: "Etsy", email: "person@etsy.com", phone_number: "6768989000")
# supplier.save


# ELIMINATES PRODUCTS BASED ON NAME
# Product.all.each do |element|
#   if element[:name] == "\"Rogue Wizard IV\""
#     element.destroy 
#   end
# end

# 13.times do
#   image = Image.new()
#   image.save
# end
