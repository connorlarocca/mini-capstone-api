require "http"
system "clear"

puts "WELCOME TO THE SUPER HAPPY FUN STORE."
puts "ENTER 1 TO SEE ALL PRODUCTS, 2 TO SEE THE FIRST, 3 TO SEE THE SECOND, AND 5 TO SEE THE THIRD. I KNOW I SKIPPED 4. YOU KNOW WHAT? TYPE 4 IF WE'RE DONE HERE. ENTER 'DELETE' IF YOU WISH TO DELETE AN ITEM. "
donezo = false
counter = 0
while donezo == false
  input = gets.chomp
  if input == "1"
    response = HTTP.get("http://localhost:3000/products")

    products = response.parse(:json)
    pp products
  elsif input == "2"
    response = HTTP.get("http://localhost:3000/products/1")

    products = response.parse(:json)
    pp products
  elsif input == "3"
    response = HTTP.get("http://localhost:3000/products/3")

    products = response.parse(:json)
    pp products
  elsif input == "5"
    response = HTTP.get("http://localhost:3000/products/4")

    products = response.parse(:json)
    pp products
  elsif input == "4"
    puts "SEEYA!"
    donezo = true
  elsif input == "DELETE"
    puts "ENTER THE ID OF THE PRODUCT YOU WISH TO DESTROY"
    product_to_delete = gets.chomp.to_i
    response = HTTP.delete("http://localhost:3000/products/#{product_to_delete}")
    puts "PRODUCT DELETED."
  else
    if counter <= 5
      puts "WHADDYA TRYING TO DO HERE?"
      counter += 1
    else
      puts "YOU MUST THINK YOU'RE REAL FUNNY."
    end
  end
end
