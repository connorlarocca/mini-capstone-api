User.create!([
  {name: "Tina Weymouth", email: "tinaweymouth@example.com", password_digest: "$2a$12$3W4P79SItvYF2qmvYi44x.DOXtID0N6U/EVcBPUp8RfkGq8uhmUre", admin: false},
  {name: "Chris Frantz", email: "chrisfrantz@example.com", password_digest: "$2a$12$WoWnd9LAOp65vDdATt/APufwp2/ZMzhZ3yiMYFEesiQAP49k4N752", admin: false},
  {name: "David Byrne", email: "davidbyrne@example.com", password_digest: "$2a$12$7rIugllQaBmlhBDgtZLExuNKj6XGVm3uj/aL75ouGwZi5nTqNzg8a", admin: true},
  {name: "Chris Frantz", email: "chrisfrantz@test.com", password_digest: "$2a$12$Ys6nAhhNQDm10ZvgAQvNHeet3Am2cALQOQrAOdPgniaok1C3Xi0dC", admin: false},
  {name: "New User", email: "newguy@example.com", password_digest: "$2a$12$voJrekXjNtrN.Uav.67oleMbTVgoW1Fq./uLbtYyu3foIvjYwIiOi", admin: false}
])
Supplier.create!([
  {name: "Digitech", email: "digitechpedals@example.com", phone_number: "864-178-1458"},
  {name: "Earthquaker Devices", email: "earthquakerpedals@example.com", phone_number: "238-712-8234"},
  {name: "Death By Audio", email: "dbapedals@example.com", phone_number: "328-436-6236"},
  {name: "Reverend ", email: "reverendguitars@example.com", phone_number: "1-800-538-8823"},
  {name: "Fender", email: "fenderguitars@example.com", phone_number: "123-456-7890"}
])
Product.create!([
  {name: "Nintendo Switch", price: "299.99", description: "The Nintendo Switch. What else do I need to say?", quantity: nil, supplier_id: 1, url: nil, image_id: nil},
  {name: "Hot Rod Deluxe", price: "799.99", description: "Jack-of-all-trades tube amp.", quantity: 3, supplier_id: 1, url: nil, image_id: nil},
  {name: "Fuzz War", price: "189.99", description: "Loud fuzz to cut through the mix!", quantity: 5, supplier_id: 3, url: nil, image_id: nil},
  {name: "Avalanche Run", price: "299.99", description: "Tap-tempo delay/reverb combo, different delay types.", quantity: 5, supplier_id: 4, url: nil, image_id: nil},
  {name: "Bit Commander", price: "129.99", description: "8-bit synthesizer processor pedal.", quantity: 4, supplier_id: 4, url: nil, image_id: nil},
  {name: "DL-8", price: "89.99", description: "Jack-of-all-trades delay/looper.", quantity: 1, supplier_id: 5, url: nil, image_id: nil},
  {name: "Reverend Sensei HB", price: "1199.99", description: "Versatile guitar with tons of fine control over your tone.", quantity: 1, supplier_id: 2, url: nil, image_id: nil},
  {name: "MIJ Jazzmaster", price: "999.99", description: "Iconic guitar for all things indie.", quantity: 10, supplier_id: 1, url: nil, image_id: nil}
])
Order.create!([
  {user_id: 1, subtotal: "0.0", tax: "0.0", total: "0.0", product_id: 5, quantity: nil},
  {user_id: 2, subtotal: "0.0", tax: "0.0", total: "0.0", product_id: 5, quantity: nil},
  {user_id: 2, subtotal: "0.0", tax: "0.0", total: "0.0", product_id: 5, quantity: nil},
  {user_id: 2, subtotal: "1199.99", tax: "108.0", total: "1307.99", product_id: 5, quantity: nil},
  {user_id: 1, subtotal: "299.99", tax: "27.0", total: "326.99", product_id: 36, quantity: nil}
])
Image.create!([
  {url: "https://walnutcreekfarmtexas.com/wp-content/uploads/2021/08/PRODUCT-Veg-Iceberg-Lettuce.jpg", product_id: 4},
  {url: "https://static01.nyt.com/images/2019/05/31/crosswords/31wordplay-lettuce/merlin_121284812_92960da2-903d-439e-b891-488fcd922f05-superJumbo.jpg", product_id: 4}
])
CategoryProduct.create!([
  {product_id: 5, category_id: 3},
  {product_id: 18, category_id: 2},
  {product_id: 19, category_id: 1}
])
Category.create!([
  {name: "Amps"},
  {name: "Pedals"},
  {name: "Guitars"}
])
CartedProduct.create!([
  {user_id: 1, product_id: 5, quantity: 1, status: "carted", order_id: 1},
  {user_id: 1, product_id: 5, quantity: 1, status: "carted", order_id: 1},
  {user_id: 2, product_id: 5, quantity: 1, status: "removed", order_id: 1},
  {user_id: 5, product_id: 17, quantity: 1, status: nil, order_id: nil},
  {user_id: 5, product_id: 17, quantity: 1, status: "carted", order_id: nil},
  {user_id: 2, product_id: 20, quantity: 1, status: nil, order_id: nil},
  {user_id: 2, product_id: 20, quantity: 1, status: nil, order_id: nil},
  {user_id: 1, product_id: 5, quantity: 1, status: "removed", order_id: 12}
])
