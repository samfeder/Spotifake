# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
yeezy = Band.create!(name: "Kanye West")
zedd = Band.create!(name: "Zedd")
kendrick = Band.create!(name: "Kendrick Lamar")


late_registration = Album.create!(name: "Late Registration", band_id: Band.find_by(name: "Kanye West").id)
college_dropout = Album.create!(name: "College Dropout", band_id: Band.find_by(name: "Kanye West").id)
good_kid_maad_city = Album.create!(name: "Good Kid Maad City", band_id: Band.find_by(name: "Kendrick Lamar").id)
clarity = Album.create!(name: "Clarity", band_id: Band.find_by(name: "Zedd").id)


diamonds = Track.create!(lyrics: "Diamonds are forever
They won't leave in the night
I've no fear that they might
Desert me", title:"Diamonds From Sierra-Leone", album_id: Album.find_by(name: "Late Registration").id)

celebration = Track.create!(lyrics: "Yeah, you know what this is
It's a celebration, bitches!
Grab a drink, grab a glass
After that I grab yo ass", title:"Celebration", album_id: Album.find_by(name: "Late Registration").id)

we_major = Track.create!(lyrics: "You motherfuckers better do your job and roll up and watch how we roll up and
I can't control it, can't hold it, it's so nuts
I take a sip of that yak, I wanna fuck
I take a hit of that chronic, it got me stuck", title:"We Major", album_id: Album.find_by(name: "Late Registration").id)

heard_em_say = Track.create!(lyrics: "And I heard 'em say, nothing's ever promised tomorrow today
From the Chi, like Tim it's a harder way
So this is in the name of love like Robert say", title:"Heard 'em Say", album_id: Album.find_by(name: "Late Registration").id)

gone = Track.create!(lyrics: "You sweat her, and I ain't talkin 'bout a Coogi
You a big L, and I ain't talkin 'bout Cool J
See me at the airport, at least 20 Louis
Treat me like the Prince and this my sweet brother Numpsay", title:"Gone", album_id: Album.find_by(name: "Late Registration").id)

we_dont_care = Track.create!(lyrics: "And all my people thats drug dealin jus to get by stack ya money till it gets sky high
We wasnt supposed to make it past 25 but the jokes on you we still alive
Throw your hands up in the sky and say we don't care what people say", title:"We Don't Care", album_id: Album.find_by(name: "College Dropout").id)

all_falls_down = Track.create!(lyrics: "Man I promise, she's so self conscious
She has no idea what she's doing in college
That major that she majored in don't make no money", title:"All Falls Down", album_id: Album.find_by(name: "College Dropout").id)

jesus_walks = Track.create!(lyrics: "You know what the Midwest is? Young and restless
Where restless (niggas) might snatch your necklace
And next these (niggas) might jack your Lexus", title:"Jesus Walks", album_id: Album.find_by(name: "College Dropout").id)

family_business = Track.create!(lyrics: "This is family business
And this is for the family that can't be with us
And this is for my cousin locked down, know the answer's in us", title:"Family Business", album_id: Album.find_by(name: "College Dropout").id)

spectrum = Track.create!(lyrics: "Breathing you in when I want you out
Finding our truth in a hope of doubt
Lying inside our quiet drama", title: "Spectrum", album_id: Album.find_by(name: "Clarity").id)

follow_you_down = Track.create!(lyrics: "Fading, so slow, black hole
I feel it slipping away
We’re all we’ve got", title: "Follow You Down", album_id: Album.find_by(name: "Clarity").id)

clarity = Track.create!(lyrics: "High dive into frozen waves where the past comes back to life
Fight fear for the selfish pain, it was worth it every time
Hold still right before we crash 'cause we both know how this ends", title: "Clarity", album_id: Album.find_by(name: "Clarity").id)

lost_at_sea = Track.create!(lyrics: "I was a boat drifting out into sea
I had nothing but pieces of thoughts of the hope that you would see me
I was a stone’s throw away from land
But thousands and thousands of miles away from reaching your hand", title: "Lost At Sea", album_id: Album.find_by(name: "Clarity").id)

bitch_dont_kill = Track.create!(lyrics: "Bitch don't kill ma vibe,
bitch don't kill ma vibe,
bitch don't kill ma vibe...", title: "Bitch Don't Kill ma Vibe", album_id: Album.find_by(name: "Good Kid Maad City").id)

swimming_pools = Track.create!(lyrics: "nigga why ya only
babysittin only two or three shots?
I'mma show ya how to turn it up a notch
first you build a swimmin pool of liquor then
ya dive in it.", title: "Swiming Pools", album_id: Album.find_by(name: "Good Kid Maad City").id)

money_trees = Track.create!(lyrics: "Ya lookin like an easy come up
ya bish. Home invasion was persuasin...
gang signs out the window ya bish", title: "Money Trees", album_id: Album.find_by(name: "Good Kid Maad City").id)

poetic_justice = Track.create!(lyrics: "If I told you that a flower bloomed in a dark room, would you trust it?
I mean I write poems in these songs dedicated to you when
You're in the mood for empathy, there's blood in my pen", title: "Poetic Justice", album_id: Album.find_by(name: "Good Kid Maad City").id)

backseat_freestyle = Track.create!(lyrics: "All my life I want money and power
Respect my mind or die from lead shower
I pray my dick get big as the Eiffel Tower
So I can fuck the world for seventy-two hours", title: "Backseat Freestyle", album_id: Album.find_by(name: "Good Kid Maad City").id)

