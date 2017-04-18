# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(username: 'Joe')
u2 = User.create(username: 'ArtistMan')
u3 = User.create(username: 'Critic')
u4 = User.create(username: 'Picasso')

a1 = Artwork.create(title: 'Life', image_url: 'asdfads', artist_id: u1.id)
a2 = Artwork.create(title: 'Death', image_url: 'asdf', artist_id: u1.id)
a3 = Artwork.create(title: 'The Beach', image_url: 'beach', artist_id: u2.id)
a4 = Artwork.create(title: 'I dont have an ear', image_url: 'gjkasdf', artist_id: u4.id)
a5 = Artwork.create(title: 'Life', image_url: 'asgdss', artist_id: u2.id)

s1 = ArtworkShare.create(viewer_id: u3.id, artwork_id: a1.id)
s2 = ArtworkShare.create(viewer_id: u3.id, artwork_id: a2.id)
s3 = ArtworkShare.create(viewer_id: u3.id, artwork_id: a4.id)
s4 = ArtworkShare.create(viewer_id: u1.id, artwork_id: a3.id)
s5 = ArtworkShare.create(viewer_id: u2.id, artwork_id: a3.id)
s6 = ArtworkShare.create(viewer_id: u4.id, artwork_id: a2.id)


c1 = Comment.create(user_id: u3.id, artwork_id: a1.id, body: "garbage!!!!")
c2 = Comment.create(user_id: u3.id, artwork_id: a2.id, body: "also garbage!!!")
c3 = Comment.create(user_id: u4.id, artwork_id: a3.id, body: "garble garble garble")
c4 = Comment.create(user_id: u2.id, artwork_id: a5.id, body: "ahhhhrt...")
