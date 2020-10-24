# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(user_name: "pickNgrin", email: "brad@email.com", password_digest: "password", address: "1046 W Balmoral Ave, Chicago, IL 60640", bio: "I've been playing guitar since I was 16. Got into bluegrass around the same time. Favorite pickers are Doc Watson, Norman Blake, and Ricky Scaggs.", profile_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQTPWYY0DqOomG_0o0DOgvC6NQRjtzEjOL3JA&usqp=CAU")
User.create(user_name: "fiddle_sticks99", email: "mary@email.com", password_digest: "password", address: "3128 N Clybourn Ave, Chicago, IL 60618", bio: "Hi, I'm Mary. I started playing violin in 2nd grade, and my dad turned me into a fiddle player with his love for bluegrass. I've been playing with groups since high school, and have played many festivals throughout the country. Check out my group, Lonesome Road here! www.youtube.com/lonesomeroadband", profile_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTjCAqOLzBrWV6U_vnKRuBvdP4nivqFX1zYbA&usqp=CAU")
User.create(user_name: "banjo_man18", email: "greg@email.com", password_digest: "password", address: "3316 N Lincoln Ave, Chicago, IL 60657", bio: "Hey, I'm Greg. All my friends wanted to be cool and play guitar, so I decided to pick up the banjo just to be different. Maybe a bad idea? Haha. I've played Scruggs style for over 10 years. Recently started teaching myself clawhammer. 2 finger style, maybe someday...", profile_image: "https://thumbs.dreamstime.com/b/banjo-player-15221914.jpg")
User.create(user_name: "walley06", email: "mwalley@email.com", password_digest: "password", address: "1822 N Milwaukee Ave, Chicago, IL 60647", bio: "I'm Matt. Friends call me Walley. I've played guitar for a few years but picked up mandolin and it's been my go-to. I used to play professionally in some touring groups, but now I just play around town for fun. Open to jam sessions or local gigs if you want some mando! Here's some links if you want to take a look/listen: www.youtube.com/mwalley, www.soundcloud.com/mwalley", profile_image: "https://thumbs.dreamstime.com/b/man-playing-mandolin-horizontal-against-white-background-33579946.jpg")
User.create(user_name: "res_sound_guy", email: "chris@email.com", password_digest: "password", address: "3159 N Southport Ave, Chicago, IL 60657", bio: "Hey I'm Chris. I've been playing bass and piano since high school. I'll play pretty much any genre, but I love the folk community so I'm here for all the jams.", profile_image: "https://thumbs.dreamstime.com/z/upright-bass-musician-23791852.jpg")
User.create(user_name: "clayok", email: "clay@email.com", password_digest: "password", address: "3509 W Fullerton Ave, Chicago, IL 60647", bio: "I've played guitar for a lot of rock stuff, but have been moving toward acoustic music. I'm new to bluegrass/folk so I'd love to jump in and start learning.", profile_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQoFECGlEmMz8YCtx2PRGtkUvfYcEgdX0wNeA&usqp=CAU")
User.create(user_name: "Graddy", email: "jgraddy@email.com", password_digest: "password", address: "7212 N Clark St, Chicago, IL 60626", bio: "I'm Jeremy (usually go by Graddy). I'm a guitar player, but started learning pedal steel and dobro. Looking to jam with others and improve my skills!", profile_image: "https://images.pexels.com/photos/5045942/pexels-photo-5045942.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")

Post.create(user_id: 1, title: "Need a guitar player?", body: "I'm a flatpicker looking for some people to play with. I'm open Thursday and Sunday nights for anybody wanting to get together and play some tunes. Let me know if you're interested!", address: "1046 W Balmoral Ave, Chicago, IL 60640", image_url: "https://thumbs.dreamstime.com/z/isolated-classical-guitar-photo-png-format-available-full-transparent-background-54363220.jpg")
Post.create(user_id: 2, title: "Wanted: Bass Player 12/15", body: "Hello! My group, Lonesome Road, is playing a (PAID!) holiday party gig on 12/15. We're looking for a bass player to fill in for that night. We'll be playing some standards and some holiday songs. Must be available for a few rehearsals beforehand. Upright preferred, but electric is fine. Reply for more details if needed. Thanks!", address: "1331 N Milwaukee Ave, Chicago, IL 60622", image_url: "https://i.ytimg.com/vi/-8GPt4Drf4w/hqdefault.jpg")
Post.create(user_id: 3, title: "Reminder: Friday night picking!", body: "Hey everybody, just wanted to remind you that our jam session is back on this week from 7-9ish. All instruments/voices welcome! We'll have plenty of copies of the music, and feel free to bring some songs in! See you there!", address: "4258 North Halsted Street, Chicago, IL 60613", image_url: "https://c8.alamy.com/comp/MTAHY3/bluegrass-jam-in-a-tent-around-a-gas-campfire-MTAHY3.jpg")
Post.create(user_id: 4, title: "Any dobro players?", body: "Hi all, I play with some friends whenever we can all meet. Got a banjo, guitar, and mandolin. Any dobro players want to jump in? Let me know!", address: "4544 N Lincoln Ave, Chicago, IL 60625", image_url: "https://thumbs.dreamstime.com/b/steel-topped-dobro-guitar-being-played-master-guitarist-plays-his-instrument-44500767.jpg")

Reply.create(user_id: 4, post_id: 1, body: "Hey @pinkNgrin! You're welcome to jam with us whenever! No set days, but I'll let you know if we meet up on a TH or SUN.")
Reply.create(user_id: 5, post_id: 2, body: "Hi fiddle_sticks99, I play upright and am available! I've been playing for about 30 years, bluegrass/old time for 10. If you're still looking, I can send you some YouTube links of the groups I play with. Thanks!")
Reply.create(user_id: 6, post_id: 3, body: "Is it okay to show up a little late? I'm out of work right at 7.")
Reply.create(user_id: 7, post_id: 4, body: "I play a little (mostly guitar), but I'd love to improve my dobro playing if you don't mind me stumbling through some songs.")
Reply.create(user_id: 3, post_id: 1, body: "If you can make Fridays work, come join us! 4258 N. Halsted 7-9.")
Reply.create(user_id: 3, post_id: 3, body: "Absoultely! Drop by and we'll get you up to speed")

Instrument.create(name: "guitar")
Instrument.create(name: "fiddle")
Instrument.create(name: "mandolin")
Instrument.create(name: "banjo")
Instrument.create(name: "bass")
Instrument.create(name: "dobro")
Instrument.create(name: "dulcimer")
Instrument.create(name: "vocals")
Instrument.create(name: "other")
