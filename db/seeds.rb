User.create!([
  {email: "creativisionist@gmail.com", encrypted_password: "$2a$10$zCN1u.XZFEnnADhYkRqHvuuP71jnBnvi7BHImz5d0Mz10iDpqZACW", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 8, current_sign_in_at: "2015-06-11 23:55:02", last_sign_in_at: "2015-06-11 02:29:10", current_sign_in_ip: "::1", last_sign_in_ip: "::1"}
])
CategorizedProduct.create!([
  {product_id: 1, category_id: 1},
  {product_id: 2, category_id: 1},
  {product_id: 3, category_id: 1},
  {product_id: 3, category_id: 2},
  {product_id: 3, category_id: 3},
  {product_id: 4, category_id: 1}
])
Category.create!([
  {name: "Despicable Me 1"},
  {name: "Despicable Me 2"},
  {name: "Evil"}
])
Order.create!([
  {quantity: nil, user_id: nil, product_id: nil, subtotal: nil, tax: nil, total: nil},
  {quantity: nil, user_id: nil, product_id: nil, subtotal: nil, tax: nil, total: nil},
  {quantity: nil, user_id: nil, product_id: nil, subtotal: nil, tax: nil, total: nil},
  {quantity: nil, user_id: nil, product_id: nil, subtotal: nil, tax: nil, total: nil},
  {quantity: nil, user_id: nil, product_id: nil, subtotal: nil, tax: nil, total: nil},
  {quantity: nil, user_id: nil, product_id: nil, subtotal: nil, tax: nil, total: nil},
  {quantity: nil, user_id: nil, product_id: nil, subtotal: nil, tax: nil, total: nil},
  {quantity: 2, user_id: nil, product_id: nil, subtotal: nil, tax: nil, total: nil},
  {quantity: 2, user_id: 1, product_id: 2, subtotal: nil, tax: nil, total: nil},
  {quantity: 3, user_id: 1, product_id: 2, subtotal: "15.0", tax: "1.35", total: "16.35"}
])
Product.create!([
  {name: "Stuart", price: "13.0", description: "Stuart is playful and funny.  He is skillful at video games like Dave.  He can also be the most sincere and innocent out of all the minions.", inventory: nil, tax: nil, supplier_id: 1},
  {name: "Bob", price: "5.0", description: "Bob is a short, plump, and bald minion with multi-colored eyes (green and brown).  He is a mischievous minion who will do anything, even lighting a bomb, to get attention. He has a more childlike personality than others and loves to annoy people.", inventory: nil, tax: nil, supplier_id: 1},
  {name: "Kevin\n", price: "72.3", description: "Kevin loves to make fun of and tease people or Minions, shown when he made fun of Jerry and teases him for being a coward. He loves playing golf.", inventory: nil, tax: nil, supplier_id: 2},
  {name: "Dave", price: "31.0", description: "Dave is an intelligent minion who is kind, caring, and funny, but sometimes accident prone. He is skillful at video games like Stuart, shown when the two are playing on a Playstation. Dave likes ice cream as shown when Gru calls him and Stuart while they are having an Ice Cream Party, he's still eating Ice Cream before he goes to Gru. He is always very excited as seen when he fired his Rocket Launcher, his signature weapon. He is also good at using weapons and making cupcakes and other foods.", inventory: nil, tax: nil, supplier_id: 2}
])
ProductImage.create!([
  {image_url: "http://vignette3.wikia.nocookie.net/despicableme/images/c/c7/Stuartmin.png/revision/latest?cb=20130714034841", product_id: 1},
  {image_url: "http://vignette2.wikia.nocookie.net/despicableme/images/7/76/Bob.png/revision/latest/scale-to-width/250?cb=20131027065703", product_id: 2},
  {image_url: "http://vignette2.wikia.nocookie.net/despicableme/images/e/e0/Kevin1.png/revision/latest/scale-to-width/250?cb=20131026134222", product_id: 3},
  {image_url: "http://vignette4.wikia.nocookie.net/despicableme/images/c/cb/Daveindm.png/revision/latest/scale-to-width/250?cb=20130717164957", product_id: 4},
  {image_url: "http://vignette1.wikia.nocookie.net/despicableme/images/2/22/Kelvin.png/revision/latest/scale-to-width/250?cb=20130707110306", product_id: 3}
])
Supplier.create!([
  {name: "Gru", email: "gru@gru.com", phone: "(123)-456-7890"},
  {name: "Nefario", email: "nefario@nefario.com", phone: "(555)-555-5555"}
])
