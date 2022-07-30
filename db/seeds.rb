# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

member1 = Member.create(username: "member1", rank: "officer", email: "", status: "active")
member2 = Member.create(username: "member2", rank: "officer", email: "", status: "active")

item1 = Item.create(name: "Item 1", quality: "Purple", category: "Furnishings")
item2 = Item.create(name: "Item 2", quality: "Green", category: "Motifs")
item3 = Item.create(name: "Item 3", quality: "Blue", category: "Non-combat Pet")

auction1 = Auction.create(title: "July Auction", date: Date.new(2022,7,25), status: "Completed")
auction2 = Auction.create(title: "August Auction", date: Date.new(2022,8,25), status: "Planned")

auction_item1 = AuctionItem.create(opening_bid: 100, sold_for: nil, payment_status: "Pending", is_bundle: false, auction_id: auction1.id, item_id: item1.id, member_id: member1.id)
auction_item2 = AuctionItem.create(opening_bid: 200, sold_for: nil, payment_status: "Pending", is_bundle: false, auction_id: auction1.id, item_id: item2.id, member_id: member2.id)
auction_item3 = AuctionItem.create(opening_bid: 300, sold_for: nil, payment_status: "Pending", is_bundle: false, auction_id: auction2.id, item_id: item3.id, member_id: member2.id)
