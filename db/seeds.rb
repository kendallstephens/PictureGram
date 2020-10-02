# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# [1,2,3].each do |num|
#     User.create(
#       username:"user#{num}",
#       email: "user#{num}@example.com",
#       password: "test123"
#     )
#   end
   
#   ["Nature", "NYC", "Art", "Humor"].each do |tag_name|
#     Tag.create(name: tag_name)
#   end
   
#   url = "http://www.defenders.org/sites/default/files/styles/large/public/dolphin-kristian-sekulic-isp.jpg"
   
#   Picture.create(
#     image_url: url,
#     title: "Saw a dolphin!",
#     owner_id: User.first.id
#   )

  user1 = User.create(email: "kendoll.email.com", username: "kendoll", password: "bowie")
  user2 = User.create(email: "ashiem.email.com", username: "ashiem", password: "jlewis")
  user3 = User.create(email: "taylor.email.com", username: "taylor", password: "silverlake")
  user4 = User.create(email: "brooks@email.com", username: "brooks", password: "icecream")
  user5 = User.create(email: "coen@email.com", username: "coen", password: "guitar")

  pic1 = Picture.create(image_url: "https://images.freeimages.com/images/large-previews/5f4/cactus-cardones-in-salta-ar-1530008.jpg", title: "Cacti", owner_id: user1.id )
  pic2 = Picture.create(image_url: "https://images.freeimages.com/images/large-previews/75e/big-sur-1214884.jpg", title: "Big Sur", owner_id: user2.id)
  pic3 = Picture.create(image_url: "https://images.freeimages.com/images/large-previews/540/dandelion-37-1388001.jpg", title: "Dandelion", owner_id: user3.id)
  pic4 = Picture.create(image_url: "https://images.freeimages.com/images/large-previews/54b/muscle-1453423.jpg", title: "Muscle Car", owner_id: user4.id )
  pic5 = Picture.create(image_url: "https://images.freeimages.com/images/large-previews/ee0/salted-caramel-mocha-latte-coffee-heart-swirl-1640567.jpg", title: "Latte Time!", owner_id: user5.id)
 

  c1 = Comment.create(content: "I need a vactation", user_id: user1.id, picture_id: pic2.id)
  c2 = Comment.create(content: "beautiful!", user_id: user2.id, picture_id: pic3.id) 
  c3 = Comment.create(content: "cool car", user_id: user3.id, picture_id: pic4.id)
  c4 = Comment.create(content: "yum!!!", user_id: user4.id, picture_id: pic5.id)
  c5 = Comment.create(content: "Wow!", user_id: user5.id, picture_id: pic1.id)
  c6 = Comment.create(content: "Gorgeous", user_id: user3.id, picture_id: pic2.id)

  t1 = Tag.create(name: "Nature")
  t2 = Tag.create(name: "Food & Drink")
  t3 = Tag.create(name: "Fun")
  t4 = Tag.create(name: "Scenic")
  t5 = Tag.create(name: "Vacation")

  pt1 = PictureTag.create(picture_id: pic1.id, tag_id: t1.id)
  pt2 = PictureTag.create(picture_id: pic2.id , tag_id: t5.id, tag_id: t4.id)
  pt3 = PictureTag.create(picture_id: pic3.id, tag_id: t1.id)
  pt4 = PictureTag.create(picture_id: pic4.id , tag_id: t3.id)
  pt5 = PictureTag.create(picture_id: pic5.id, tag_id: t2.id)





  

  





  