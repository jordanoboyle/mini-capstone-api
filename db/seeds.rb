# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

#This is meant to follow the instruction above. rails db:reset rails db:seed will clean local data base. 
# Users seed:
1.times do
  User.create(name: "Luke Skywalker", email: "luke@email.com", password: "password", password_confirmation: "password", admin: true)
  User.create(name: "John Wick", email: "john@email.com", password: "password", password_confirmation: "password", admin: false)
  User.create(name: "Jordan O'Boyle", email: "jordan@email.com", password: "password", password_confirmation: "password", admin: false)
  User.create(name: "Harley Quin", email: "harley@email.com", password: "password", password_confirmation: "password", admin: false)
  User.create(name: "James Kirk", email: "james@email.com", password: "password", password_confirmation: "password", admin: false)
end

# CATEGORY SEED
1.times do
  Category.create(name: "clothing") #1
  Category.create(name: "digital media") #2
  Category.create(name: "video game") #3
  Category.create(name: "anime") #4
  Category.create(name: "cosplay") #5
  Category.create(name: "plateware") #6
  Category.create(name: "sci-fi") #7
end 

# SUPPLIER SEED
supplier = Supplier.new(name: "Box Lunch", email: "person@boxlunch.com", phone_number: "4445556666")
supplier.save
supplier = Supplier.new(name: "GameStop", email: "person@gamestop.com", phone_number: "3334445555")
supplier.save
supplier = Supplier.new(name: "Etsy", email: "person@etsy.com", phone_number: "5556667777")
supplier.save

#Products Seed:
1.times do
  Product.create(name: "Goku Mug", price: 10, description: "Goku in ultra instinct for the morning.", inventory: 50, supplier_id: 1) #1
  Product.create(name: "Luffy Hoody", price: 50, description: "Your favorite future pirate king.", inventory: 50, supplier_id: 1) #2
  Product.create(name: "Totoro Hoody", price: 60, description: "Your favorite forest spirit", inventory: 50, supplier_id: 1) #3
  Product.create(name: "Kikis Broom", price: 20, description: "Fly like the delivery girl", inventory: 50, supplier_id: 1) #4
  Product.create(name: "Light Saber", price: 30, description: "Be like Luke Skywalker! He uses the site.", inventory: 50, supplier_id: 2) #5
  Product.create(name: "Super Mario Wonder", price: 60, description: "Mario's latest adventure in wonderworld", inventory: 50, supplier_id: 2) #6
  Product.create(name: "Water Bender Hoody", price: 50, description: "Join the water tribe!", inventory: 50, supplier_id: 2) # 7
  Product.create(name: "Rogue One T-Shirt", price: 20, description: "Join the Rebel Alliance", inventory: 50, supplier_id: 2) # 8
  Product.create(name: "Nino Kuni: Wrath of the White Witch", price: 60, description: "Studio Ghibli meets video games", inventory: 50, supplier_id: 3) #9
  Product.create(name: "Trigun Box Set", price: 70, description: "Join Vash the Stampede on his adventures.", inventory: 50, supplier_id: 3) #10
  Product.create(name: "Rogue Fable III", price: 15, description: "Like Rogues Likes? Go to town!", inventory: 50, supplier_id: 3) #11
  Product.create(name: "Calcifer Hoody", price: 40, description: "Everyone's favorite fire demon", inventory: 50, supplier_id: 3) #12
end

# IMAGES TABLE SEED
1.times do
  Image.create(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXaR8B3xDXlLqOo5Y1q8c2T1lV6K-p31G3wYRw8uEQ4g&s", product_id: 1)
  Image.create(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf3cLQ0YKtXaXWoR8S_QQc_FlbFuA9GaBqxDBsDgJLMA&s", product_id: 1)
  Image.create(url: "https://onepiece.b-cdn.net/wp-content/uploads/2021/05/product-image-1303682131.jpg", product_id: 2)
  Image.create(url: "https://onepiece-merchandise.com/wp-content/uploads/2022/08/One-Piece-Luffy-Hoodie.jpg", product_id: 2)
  Image.create(url: "https://enez76gwp29.exactdn.com/wp-content/uploads/2020/12/redirect12092020091218-1.jpg", product_id: 3)
  Image.create(url: "https://cdn.media.amplience.net/s/hottopic/15881671_hi?$productMainDesktop$&fmt=auto", product_id: 3)
  Image.create(url: "https://www.asakura-japan.com/data/asakura-japan/product/20151125_eb0236.jpg", product_id: 4)
  Image.create(url: "https://cdn.animenewsnetwork.com/thumbnails/max600x600/cms/interest/87491/kb-2.png.jpg", product_id: 4)
  Image.create(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAs2hXo4wDnwxSlpt7y2PEHCxp1iOBOIpsDguSnfGpyQ&s", product_id: 5)
  Image.create(url: "https://superneox.com/cdn/shop/files/LUKE-EP6-lightsaber-24.jpg?v=1706064584", product_id: 5)
  Image.create(url: "https://static0.gamerantimages.com/wordpress/wp-content/uploads/2023/07/super-mario-bros-wonder-title.jpg", product_id: 6)
  Image.create(url: "https://assets.nintendo.com/image/upload/ar_16:9,b_auto:border,c_lpad/b_white/f_auto/q_auto/dpr_1.5/ncom/software/switch/70010000068688/e3024df668cdead60e62865924652c811323b0e7c46f51567fe80907f2637cc4", product_id: 6)
  Image.create(url: "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSGAiSx-6MFvt7oR7dFJs2RTiEM9KfgiwW3rI3ClY51bFcCJX9APrjWyP9suRbXPEsZPkzkBIGEwzAS-hbYEoud9s3r7lbxGUvW8X0_pSY_X8Pw5UHVA_loKKyW4LekmclDucPpWNQBIg&usqp=CAc", product_id: 7)
  Image.create(url: "https://animeape.com/wp-content/uploads/2022/08/Water-Tribe-Avatar_AOP-Hooded-Cloak-Coat-MAIN_Mockup-800x800.jpg", product_id: 7)
  Image.create(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNitzTI9hOr2rQ9Ma4t12ISRZrFP9R7GYWXeB9YeMrGQ&s", product_id: 8)
  Image.create(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUP6aHyWepU5QgqYNz6F5y1TZj2Gw0Si1LUw&s", product_id: 8)
  Image.create(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfzj99CexElJwlYW5DlycGbO_UQX6BLwUlVrfOj3aqYQ&s", product_id: 9)
  Image.create(url: "https://upload.wikimedia.org/wikipedia/en/thumb/0/0e/Ni_No_Kuni_game_battle_screenshot.jpg/260px-Ni_No_Kuni_game_battle_screenshot.jpg", product_id: 9)
  Image.create(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTinC3GLxwb8IfOLNUkVzLwlyVZ3OcxIbqTMtWcGWYZxQ&s", product_id: 10)
  Image.create(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGwfGsHsaioHf_iS5AmRspyEjZdjbC844NB6H1oNWn-w&s", product_id: 10)
  Image.create(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIbcd6lTTM34jHqBlYGmHP8zU-LDKSXkSqxHZ2NpS3HA&s", product_id: 11)
  Image.create(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzr_oZASOkhLGzxXaN4eUFw9BiDW8cfn5ycA&s", product_id: 11)
  Image.create(url: "https://i.etsystatic.com/37825678/r/il/741554/4327915673/il_570xN.4327915673_2lbe.jpg", product_id: 12)
  Image.create(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJaa6U0uYAd-IJcNIzTPPwixgfYmecYLGDA0Moe1UlXQ&s", product_id: 12)
end

#CATEGORY_PRODUCT SEED
1.times do
  CategoryProduct.create(product_id: 1, category_id: 6)
  CategoryProduct.create(product_id: 1, category_id: 4)
  CategoryProduct.create(product_id: 2, category_id: 1)
  CategoryProduct.create(product_id: 2, category_id: 4)
  CategoryProduct.create(product_id: 3, category_id: 1)
  CategoryProduct.create(product_id: 3, category_id: 4)
  CategoryProduct.create(product_id: 4, category_id: 5)
  CategoryProduct.create(product_id: 4, category_id: 4)
  CategoryProduct.create(product_id: 5, category_id: 5)
  CategoryProduct.create(product_id: 5, category_id: 7)
  CategoryProduct.create(product_id: 6, category_id: 2)
  CategoryProduct.create(product_id: 6, category_id: 3)
  CategoryProduct.create(product_id: 7, category_id: 4)
  CategoryProduct.create(product_id: 7, category_id: 1)
  CategoryProduct.create(product_id: 8, category_id: 1)
  CategoryProduct.create(product_id: 8, category_id: 7)
  CategoryProduct.create(product_id: 9, category_id: 2)
  CategoryProduct.create(product_id: 9, category_id: 3)
  CategoryProduct.create(product_id: 10, category_id: 2)
  CategoryProduct.create(product_id: 10, category_id: 4)
  CategoryProduct.create(product_id: 11, category_id: 2)
  CategoryProduct.create(product_id: 11, category_id: 3)
  CategoryProduct.create(product_id: 12, category_id: 1)
  CategoryProduct.create(product_id: 12, category_id: 4)
end





