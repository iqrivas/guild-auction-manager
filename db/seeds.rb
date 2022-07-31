# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

member1 = Member.create(username: "member1", rank: 0, email: "", status: 1)
member2 = Member.create(username: "member2", rank: 1, email: "", status: 1)

item1 = Item.create(name: "Item 1", quality: 1, category: 1)
item2 = Item.create(name: "Item 2", quality: 3, category: 0)
item3 = Item.create(name: "Item 3", quality: 2, category: 2)

auction1 = Auction.create(title: "July Auction", date: Date.new(2022,7,25), status: 3)
auction2 = Auction.create(title: "August Auction", date: Date.new(2022,8,25), status: 1)
auction3 = Auction.create(title: "September Auction", date: Date.new(2022,9,25), status: 0)

auction_item1 = AuctionItem.create(opening_bid: 100, sold_for: nil, payment_status: 0, is_bundle: false, auction_id: auction1.id, item_id: item1.id, member_id: member1.id)
auction_item2 = AuctionItem.create(opening_bid: 200, sold_for: nil, payment_status: 0, is_bundle: false, auction_id: auction1.id, item_id: item2.id, member_id: member2.id)
auction_item3 = AuctionItem.create(opening_bid: 300, sold_for: nil, payment_status: 0, is_bundle: false, auction_id: auction2.id, item_id: item3.id, member_id: member2.id)
