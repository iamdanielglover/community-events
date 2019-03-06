
user1 = User.create!(name: "user1")
user2 = User.create!(name: "user2")
user3 = User.create!(name: "user3")
user4 = User.create!(name: "user4")
user5 = User.create!(name: "user5")

loc1 = Location.create!(name: "loc1")
loc2 = Location.create!(name: "loc2")
loc3 = Location.create!(name: "loc3")

category1 = Category.create!(name: "Entertainment", img_url: "https://images.unsplash.com/photo-1536331014686-7c8210a64010?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80")
category2 = Category.create!(name: "Politics", img_url: "https://images.unsplash.com/photo-1466780446965-2072a3de8a43?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1649&q=80")
category3 = Category.create!(name: "Food & Drink", img_url: "https://images.unsplash.com/photo-1534790566855-4cb788d389ec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80")
category4 = Category.create!(name: "Sport", img_url: "https://images.unsplash.com/photo-1519766304817-4f37bda74a26?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80")
category5 = Category.create!(name: "Business", img_url: "https://images.unsplash.com/photo-1444653614773-995cb1ef9efa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1655&q=80")
category6 = Category.create!(name: "Charity & Fundraisers", img_url: "https://images.unsplash.com/photo-1535017516924-a5a70754bbc0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1665&q=80")
category7 = Category.create!(name: "Council & Community", img_url: "https://images.unsplash.com/photo-1500021804447-2ca2eaaaabeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80")
category8 = Category.create!(name: "Agriculture", img_url: "https://images.unsplash.com/photo-1471006549858-a467e342c749?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80")
Event.create!(name: "The Big Comedy Show", description: "12 standups take to the stage throughout the day, serving jokes upon jokes with the aim of raising money for MS.", start_time: DateTime.now, end_time: DateTime.tomorrow, location_id: 1, category_id: 6)

# event1 = Event.create!(name: "Festival", description: "Local Rock Festival", location_id: 1)
# ue = UserEvent.create!(user_id: 1, event_id: 1)
