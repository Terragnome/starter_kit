# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u = User.find_or_initialize_by(:email=>"terragnome@gmail.com")
u.nickname = "Michael"
u.name = "Michael Lin"
u.password=u.password_confirmation = "junkp4ss"
u.save

Post.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('posts')

p = Post.find_or_initialize_by(
  :title=>"Opinel No. 8",
  :user=>User.first,
)
p.body = """
Opinel has been making knives since 1890 from its headquarters in Saint-Jean-de-Maurienne, Savoie, France.  The Opinel No. 8 is its most popular blade, known the world over for its high carbon steel blade, locking mechanism, and locking ring.

When twisted, the ring locks the blade in place, giving the the strength of a fixed blade design.  The wooden handle enabled the knife to float when dropped in water.

The Opinel was selected in 1985 by the Victoria and Albert Museum in London as one of the 100 most beautiful products in the world and has been exhibited in New York's Metropolitan Museum of Art as a design masterpiece.
"""
p.url = "http://amzn.to/1PsYznQ"
p.cost = 13
p.tag_list.add("gear", "edc", "knives")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>"Martin Mamba",
  :user=>User.first,
)
p.body = """
Martin Archery is an American bowmaker founded by Gail Martin 1938, and makes some of the finest traditional and hunting bows in the world.  The Martin Mamba was the recurve bow used to light the torch for the 1992 Summer Olympics in Barcelona.

The bow is made of an Eastern Hard Maple core surrounded by black fiberglass.  The bow has a Bubinga stripe lined with Shedua which enhances its beauty.  Reinforced bow tips allow the use of today's modern bow strings.
"""
p.url = "http://amzn.to/1kzbkl9"
p.cost = 559
p.tag_list.add("gear", "archery", "bows")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>"Once Upon A Time",
  :user=>User.first,
)
p.body = """
Once Upon A Time is a cardgame whose gameplay revolves about creativity and storytelling.  
"""
p.url = "http://amzn.to/1kzbgSm"
p.cost = 20
p.tag_list.add("toys", "boardgames", "cardgames")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>"Vibram KSO Trek",
  :user=>User.first,
)
p.body = """
TEST
"""
p.url = "http://amzn.to/1Moz8D4"
p.cost = 20
p.tag_list.add("gear", "shoes", "running")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>"The Bread Bible",
  :user=>User.first,
)
p.body = """
TEST
"""
p.url = "http://amzn.to/1PsYpgf"
p.cost = 22
p.tag_list.add("books", "food", "baking")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>"I'm Just Here for the Food: Version 2.0",
  :user=>User.first,
)
p.body = """
TEST
"""
p.url = "http://amzn.to/1S3N2un"
p.cost = 26
p.tag_list.add("books", "food", "cooking")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>"Plenty More",
  :user=>User.first,
)
p.body = """
TEST
"""
p.url = "http://amzn.to/1kzbbhq"
p.tag_list.add("books", "food", "cooking")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>"Shun Classic 8-Inch Chef's Knife",
  :user=>User.first,
)
p.body = """
TEST
"""
p.url = "http://amzn.to/1kzb99p"
p.cost = 136
p.tag_list.add("gear", "food", "cooking", "knives")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>"KitchenAid 5 Quart Stand Mixer",
  :user=>User.first,
)
p.body = """
TEST
"""
p.url = "http://amzn.to/1PsYalk"
p.cost = 299
p.tag_list.add("gear", "food", "cooking", "baking", "mixer")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>"Lego Star Wars Ewok Village",
  :user=>User.first,
)
p.body = """
TEST
"""
p.url = "http://amzn.to/1PsXY5q"
p.cost = 250
p.tag_list.add("gear", "lego", "toys")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>"Glencairn Whiskey Tasting Glass",
  :user=>User.first,
)
p.body = """
TEST
"""
p.url = "http://amzn.to/1PsXX1z"
p.cost = 17
p.tag_list.add("gear", "mixology", "drinking")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>"Lodge Cast Iron Skillet",
  :user=>User.first,
)
p.body = """
TEST
"""
p.url = "http://amzn.to/1kzaUes"
p.cost = 33
p.tag_list.add("gear", "food", "cooking")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>"Microplane Classic Zester/Grater",
  :user=>User.first,
)
p.body = """
TEST
"""
p.url = "http://amzn.to/1kzaQv8"
p.cost = 11
p.tag_list.add("gear", "food", "cooking")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>"Pandemic",
  :user=>User.first,
)
p.body = """
TEST
"""
p.url = "http://amzn.to/1kzaPY8"
p.cost = 24
p.tag_list.add("toys", "boardgames")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>"EatSmart Precision Pro Digital Kitchen Scale",
  :user=>User.first,
)
p.body = """
TEST
"""
p.url = "http://amzn.to/1PsXKv6"
p.cost = 15
p.tag_list.add("gear", "food", "cooking", "baking")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>"Twist 2-in-1 Silicone Whisk",
  :user=>User.first,
)
p.body = """
TEST
"""
p.url = "http://amzn.to/1PsXIn2"
p.cost = 10
p.tag_list.add("gear", "food", "cooking", "baking")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>"Velesco Silicone Baking Mat",
  :user=>User.first,
)
p.body = """
TEST
"""
p.url = "http://amzn.to/1Moykhs"
p.cost = 20
p.tag_list.add("gear", "food", "baking")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>"Pyrex 2-Cup Glass Measuring Cup",
  :user=>User.first,
)
p.body = """
TEST
"""
p.url = "http://amzn.to/1Moympu"
p.cost = 8
p.tag_list.add("gear", "food", "cooking", "baking")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>"Bang",
  :user=>User.first,
)
p.body = """
TEST
"""
p.url = "http://amzn.to/1kzaDrY"
p.cost = 17
p.tag_list.add("toys", "boardgames", "cardgames")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>"Allen Bow String Wax",
  :user=>User.first,
)
p.body = """
TEST
"""
p.url = "http://amzn.to/1S3LHUg"
p.cost = 3
p.tag_list.add("gear", "archery")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>'Gateway 4" Feathers',
  :user=>User.first,
)
p.body = """
TEST
"""
p.url = "http://amzn.to/1S3Lqk4"
p.cost = 38
p.tag_list.add("gear", "archery")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>'Born To Run',
  :user=>User.first,
)
p.body = """
TEST
"""
p.url = "http://amzn.to/1S3LiRJ"
p.cost = 11
p.tag_list.add("books", "running")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>'Ad Hoc at Home',
  :user=>User.first,
)
p.body = """
TEST
"""
p.url = "http://amzn.to/1kzaox5"
p.cost = 11
p.tag_list.add("books", "food", "cooking")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>'Kreg Jig K4 Pocket Jig',
  :user=>User.first,
)
p.body = """
TEST
"""
p.url = "http://amzn.to/1MoxSQ4"
p.cost = 11
p.tag_list.add("tools", "woodworking")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>'Smallworld',
  :user=>User.first,
)
p.body = """
TEST
"""
p.url = "http://amzn.to/1kzamoR"
p.cost = 28
p.tag_list.add("toys", "boardgames")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>'Ticket to Ride',
  :user=>User.first,
)
p.body = """
TEST
"""
p.url = "http://amzn.to/1MoxQb5"
p.cost = 32
p.tag_list.add("toys", "boardgames")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>'Grayling Fletching Jig',
  :user=>User.first,
)
p.body = """
TEST
"""
p.url = "http://amzn.to/1MoxMrQ"
p.cost = 11
p.tag_list.add("tools", "archery")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>'Gold Tip Arrow Glue',
  :user=>User.first,
)
p.body = """
TEST
"""
p.url = "http://amzn.to/1PsX7Sr"
p.cost = 9
p.tag_list.add("tools", "archery")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>'DeWalt DWE575SB Circular Saw',
  :user=>User.first,
)
p.body = """
TEST
"""
p.url = "http://amzn.to/1PsX6xQ"
p.cost = 129
p.tag_list.add("tools", "woodworking")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>'Love Letter',
  :user=>User.first,
)
p.body = """
TEST
"""
p.url = "http://amzn.to/1kza5lN"
p.cost = 9
p.tag_list.add("toys", "boardgames", "cardgames")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>'Cards Against Humanity',
  :user=>User.first,
)
p.body = """
TEST
"""
p.url = "http://amzn.to/1MCQZln"
p.cost = 25
p.tag_list.add("toys", "boardgames", "cardgames")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>'Vortex Optics Solo 10x25 Monocular',
  :user=>User.first,
)
p.body = """
TEST
"""
p.url = "http://amzn.to/1S3KtZ5"
p.cost = 52
p.tag_list.add("gear", "backpacking", "hiking", "camping", "archery")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>'A History of the World in 6 Glasses',
  :user=>User.first,
)
p.body = """
Tom Standage's \"A History of the World in 6 Glasses\" is a compelling guide through human history told through six beverages that changed the world.

Standage covers everything from the development of beer as a mystic beverage used in religious ceremonies, through the cultivation of wine as a status symbol in ancient Greece, coffee as the drink of the Enlightenment, and the consumption of purified water in the modern age.the role of tea as a driver for British colonialism, and the spirits that powered the settling of the new world.  
"""
p.url = "http://amzn.to/1MCR0FS"
p.cost = 25
p.tag_list.add("books", "reading", "food", "drinking", "history")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>'The Name of the Wind',
  :user=>User.first,
)
p.body = """
TEST
"""
p.url = "http://amzn.to/1MCQV5c"
p.cost = 8
p.tag_list.add("books", "reading", "fantasy")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>'Shun Higo Nokami Personal Knife',
  :user=>User.first,
)
p.body = """
TEST
"""
p.url = "http://amzn.to/1MCQW9g"
p.cost = 99
p.tag_list.add("edc", "food", "knives", "gear")
p.active = true
p.save


p = Post.find_or_initialize_by(
  :title=>'Easton Hip Quiver',
  :user=>User.first,
)
p.body = """
TEST
"""
p.url = "http://amzn.to/1MCQU19"
p.cost = 64
p.tag_list.add("gear", "archery", "quiver")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>'Chemex Glass Coffee Maker',
  :user=>User.first,
)
p.body = """
TEST
"""
p.url = "http://amzn.to/1MCQTKz"
p.cost = 45
p.tag_list.add("tools", "food", "coffee")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>'Saunders Combo Points',
  :user=>User.first,
)
p.body = """
Saunders Combo Points are an excellent alternative to field tips for your arrows and are suitable for target shooting or for hunting small game.

They have a black zinc coating which resists rust, and a shape that makes them easy to pull out of embedded into had surfaces like wood.  I've had Saunders Combo Points strike nails hidden in a bale of hay with only minimal damage.

It's important that your arrows and tips match the spine of your bow, so Three Rivers Archery offers a convenient <a href='http://www.3riversarchery.com/spinecalculator.asp'>dynamic spine calculator<a>.
"""
p.url = "http://amzn.to/1MCQVly"
p.cost = 7
p.tag_list.add("gear", "archery")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>'Yurbuds Inspire 100 In-Ear Headphones',
  :user=>User.first,
)
p.body = """
Yurbuds Inspire 100 In-Ear Headphones are excellent for runners because the headphone shape allows them to snap onto your ears and stay in without any hooks or other devices.  They're suprisingly comfortable, and allow enough sound to leak in that I'm able to hear cars coming when running on the road or in the city.

Yurbuds also has an excellent replacement program for the ear cups, and after losing one of the earcups I was able to buy another pair for only a fraction of the cost.  Highly recommended.
"""
p.url = "http://amzn.to/1MCQTdm"
p.cost = 15
p.tag_list.add("gear", "running", "music")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>'Lifestraw Water Filter',
  :user=>User.first,
)
p.body = """
The Lifestraw Water Filter is a compact water purification system capable of removing 99.9999% or waterborn pathogens.  At only 2oz it's capable of purifying 1,000L of water and is perfect for situations where fresh water's required but space is at a premium.

These qualities earned Lifestraw a Time Magazine \"Invention of the Year\" award and the perfect gift or purchase for ultralight backpackers, travelers, boy scouts, hunters, and outdoor enthusiasts all over the world.
"""
p.url = "http://amzn.to/1S3JV5p"
p.cost = 18
p.tag_list.add("gear", "backpacking", "hiking", "camping")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>'Swedish FireSteel',
  :user=>User.first,
)
p.body = """
Swedish Fireseel is a compact firestarting device capable of generating a 3,000° C spark and starting fires in difficult conditions.

This Swedish Firesteel is good for over 12,000 strikes and has been approved by the International Survival Instructors Association.  This makes it a great gift or purchase for anyone interested in outdoor hobbies.
"""
p.url = "http://amzn.to/1S3JQi8"
p.cost = 17
p.tag_list.add("gear", "backpacking", "hiking", "camping")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>'The Alchemist',
  :user=>User.first,
)
p.body = """
Paulo Coelho's masterpiece, The Alchemist, tells the mystical story an Andalusian shepherd boy named Santiago who yearns to travel in search of a worldly treasure.

His journey to discover his personal legend combines magic, mysticism and has won over 115 international awards and sold over 150 million copies.
"""
p.url = "http://amzn.to/1PsWpV3"
p.cost = 10
p.tag_list.add("books", "reading", "philosophy")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>'Samick Sage',
  :user=>User.first,
)
p.body = """
Samick is a Korean company which manufactures a variety of bows for sport and competition.  The Samick Sage is an excellent entry-level recurve bow for any beginner who is interested in archery as a hobby.

It's a takedown recurve, which means that the limbs of the bow can be removed for easier transportation or replaced if damaged or when you're ready for a more powerful bow.  Reinforced limb tips mean that it's capable of using strings made of FastFlight and other modern materials.

Archery uses a specific set of back muscles, and it's common for beginners to attempt to use bows with draw weights that are too high.  A good thing to remember is that Olympic archers shoot 50# bows, and it is perfectly respectible for a new archer to start with a bow in the 20#-30# range to learn good form.

The type of bow you choose (right or left) is determined by your dominant eye rather than your dominant hand.  To determine your eye dominance, pick something far away and use both of your hands to form a ring around it.  Slowly bring your hands toward your face.  Which ever eye you bring your hands toward is your dominant eye.
"""
p.url = "http://amzn.to/1MCQO9u"
p.cost = 140
p.tag_list.add("gear", "archery", "bows")
p.active = true
p.save

p = Post.find_or_initialize_by(
  :title=>'Gold Tip Expedition Hunter',
  :user=>User.first,
)
p.body = """
Gold Tip Expedition Hunters are an economical choice for archers interested in using carbon arrows.  Carbon is an extremely stiff and light material and offers a number of advantages when compared to other arrow types.  It is more durable than wood so is capable of surviving strikes against harder objects and is lighter than aluminum which gives it superior speed and improved accuracy over long distances.

In terms of drawbacks, carbon arrows can develop small cracks if they strike a sufficiently hard object.  If a cracked arrow is shot, it could break and potentially cause injury.  Fortunately arrows can be easily checked for cracks by <a href='http://www.eastonarchery.com/warning-use'>flexing them</a>.

The 3555 arrows are suited for bows with draw weights from 35#-55#.  5575 arrows are suited for bows with draw weights from #55-#75.
"""
p.url = "http://amzn.to/1S3JfNt"
p.cost = 140
p.tag_list.add("gear", "archery", "arrows")
p.active = true
p.save