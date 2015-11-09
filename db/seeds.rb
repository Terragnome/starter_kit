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

Photo.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('photos')

PostPhoto.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('post_photos')

p = Post.find_or_initialize_by(
  :title=>"Opinel No. 8",
  :user=>User.first,
)
p.body = """
Opinel has been making knives since 1890 from its headquarters in Saint-Jean-de-Maurienne, Savoie, France.  The Opinel No. 8 is its most popular blade, known the world over for its high carbon steel blade, locking mechanism, and locking ring.

When twisted, the ring locks the blade in place, giving it the strength of a fixed blade design.  The wooden handle enabled the knife to float when dropped in water.

The Opinel was selected in 1985 by the Victoria and Albert Museum in London as one of the 100 most beautiful products in the world and has been exhibited in New York's Metropolitan Museum of Art as a design masterpiece.

I use an Opinel as my edc knife because I wanted a knife with a beautiful classic design but that could be easily replaced if I lost it.  The high carbon steel blade can be sharpened easily with a whetstone to a razor edge, although it must be treated to avoid rust.  One option is to oil it, but I chose to use vinegar to form an black oxidized coat instead and have never had any problems.
"""
p.url = "http://amzn.to/1PsYznQ"
p.cost = 13
p.tag_list.add("gear", "edc", "knives")
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"opinel_no_8.jpg"
)
p.save

p = Post.find_or_initialize_by(
  :title=>"Martin Mamba",
  :user=>User.first,
)
p.body = """
Martin Archery is an American bowmaker founded by Gail Martin 1938 and makes some of the finest traditional wood bows in the world.  The Martin Mamba is one of its greatest designs and was the bow used to light the torch for the 1992 Summer Olympics in Barcelona.

The Martin Mamba is a 58\" recurve bow made of Eastern Hard Maple core and accentuated with a Bubinga stripe lined with Shedua.  Like most modern recurves, it has fiberglass laminations along the face and reinforced bow tips allow the use of modern bow strings made of materials such as Fast Flight.  The sight window is cut past center which allows it to accept a greater spine range of arrows.

I chose the Martin Mamba as my first recurve because it was a handcrafted American bow with a storied history.  It's a work of art that I love looking at on my bow rack even when I'm not at the range.  For those just getting into archery as a hobby, the most important thing to remember is never to draw your bow back and release it without an arrow (dry fire).  You should also never prop it up vertically, never store it strung, and never leave it in a hot car or in a damp place as all of these things can damage the bow.
"""
p.url = "http://amzn.to/1kzbkl9"
p.cost = 559
p.tag_list.add("gear", "archery", "bows")
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"martin_mamba.jpg"
)
p.save

p = Post.find_or_initialize_by(
  :title=>"Once Upon A Time",
  :user=>User.first,
)
p.body = """
Once Upon A Time is a cardgame in which players exercise their creativity and storytelling to craft the perfect fairy tale.  Players take turns telling a story and playing special cards to take control of the narrative.

The winner is the person who is able to introduce all their story elements and successfully finish it.  This is a great game for experienced boardgamers who are looking for something a little different.

I played this in a group of four and found that to be a good group size.
"""
p.url = "http://amzn.to/1kzbgSm"
p.cost = 20
p.tag_list.add("toys", "boardgames", "cardgames")
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"once_upon_a_time.jpg"
)
p.save

p = Post.find_or_initialize_by(
  :title=>"The Bread Bible",
  :user=>User.first,
)
p.body = """
Rose Levy Beranbaum's \"The Bread Bible\" is an excellent resource for bakers of all levels and the 2003 winner of the Gourmand World Cookbook Awards in the Best Bread Book Category.  Recipes are detailed and contain overviews of the chemistry and recipes often contain a few variants with descriptions of hwo they will influence the final product.

The Basic Hearth Bread is an great recipe for beginners while the Proscuitto Ring is great for those with a little more experience.

This was the book that taught me that kneading the dough is what produces the protein gluten, punching down the dough distributes air bubbles in the crumb, and that professional bakers use scales because they are more precise that measuring cups which can be inprecise if the flour is tightly packed.  I trace much of love of baking back to this book and highly recommended it for anyone interested in baking bread as a hobby.
"""
p.url = "http://amzn.to/1PsYpgf"
p.cost = 22
p.tag_list.add("books", "food", "baking")
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"the_bread_bible.jpg"
)
p.save

p = Post.find_or_initialize_by(
  :title=>"I'm Just Here for the Food: Version 2.0",
  :user=>User.first,
)
p.body = """
I'm a huge fan of Alton Brown.  Watching old episodes of Good Eats and \"I'm Just Here For the Food\" as my first cookbook were how I got into cooking and developed a skillset and a hobby that has served me well into the present.

Alton's writing style is both informative and entertaining.  He explains the chemical processes that underlie various cooking techniques, and \"I'm Just Here for the Food\"'s focus on truly understanding methodology over the rote memorization of individual recipes verbatim is its great strength.  Reading this book teaches you how to cook, not just how to do what you're told.

\"I'm Just Here for the Food\" is a worthy addition the the library for cooks of all levels and the Broiled, Butterflied Chicken is still one of my favorite go to recipes.
"""
p.url = "http://amzn.to/1S3N2un"
p.cost = 26
p.tag_list.add("books", "food", "cooking")
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"im_just_here_for_the_food.jpg"
)
p.save

p = Post.find_or_initialize_by(
  :title=>"Plenty More",
  :user=>User.first,
)
p.body = """
\"Plenty More\" is a cookbook focusing on vegetarian recipes from the founder of Ottoloenghi in London, Yotam Ottolenghi.  While I love meat (like, a lot), Ottolenghi's recipes and vibrant flavor choices make this an excellent cookbook for anyone looking to add variety to their home dining experience.

Preparing delicious recipes without meat, whether for health, preference, or ideology, is an illuminating challenge for anyone pursuing cooking as a hobby.  A nice ribeye or duck breast practically cooks itself, so I found avoiding meat to be a really meaningful and interesting constraint.
"""
p.url = "http://amzn.to/1kzbbhq"
p.cost = 20
p.tag_list.add("books", "food", "cooking", "vegetarian")
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"plenty_more.jpg"
)
p.save

p = Post.find_or_initialize_by(
  :title=>"Shun Classic 8-Inch Chef's Knife",
  :user=>User.first,
)
p.body = """
Although it is owned by Kershaw Knives in Tualatin, Oregon, Shun knives are high quality knives that are handmade in Japan.  The Shun Classic 8-Inch Chef's Knife is made with a 32 layer VG-10 steel, full tang blade, and a resin impregnated PakkaWod handle that is both beautiful and functional.

Knives are an essential tool for any chef, and dull knives can be a major cause of accidents in the kitchen.  Having to push down harder in order to make cuts increases the force that's require and makes slips and accidental cuts possible.  Shun Classics are made of high quality VG-10, whose hardness allows Shun knives to be ground to razor sharp 15 degree cutting angle.

While stamped steel knife blocks can be more affordable for those on a budget, a chef's knife, paring knife, and bread knife are all you really need to get started in your home kitchen.  With proper care, a Shun chef's knife is an investment that you'll be able to use for the rest of your life.
"""
p.url = "http://amzn.to/1kzb99p"
p.cost = 136
p.tag_list.add("gear", "food", "cooking", "knives")
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"shun_classic_8_inch_chefs_knife.jpg"
)
p.save

p = Post.find_or_initialize_by(
  :title=>"KitchenAid 5 Quart Stand Mixer",
  :user=>User.first,
)
p.body = """
KitchenAid is an industry leader in kitchen appliances, and the KitchenAid 5 Quart Start Mixer is an essential tool for anyone pursuing cooking or baking as a hobby.  A stand mixer can knead sticky doughs with its dough hook, whip fresh cream or meringues for cakes, and even grind meat for sausages with the proper attachment.

While the price may intially seem daunting, I found the solid build quality and excellent reputation to be worth the investment.  It's possible to get by without a stand mixer, but if it's within your budget having a KitchenAid 5 Quart Stand Mixer simplifies a lot of routine tasks.  Your back and your forearms will thank you.
"""
p.url = "http://amzn.to/1PsYalk"
p.cost = 299
p.tag_list.add("gear", "food", "cooking", "baking", "mixer")
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"kitchenaid_5_quart_stand_mixer.jpeg"
)
p.save

p = Post.find_or_initialize_by(
  :title=>"Lego Star Wars Ewok Village",
  :user=>User.first,
)
p.body = """
I've loved Legos ever since I got my first set as a kid, and somehow I managed to grow up into a giant kid instead of a regular man.  When I bought the Lego Star Wars Ewok Village, a big part of me wanted to high five 6 year old me through the space time continuum.

The Lego Star Wars Ewok Village combines one of the most iconic toys in the world with one of the most iconic film franchises.  The set itself includes a great set of minifigs, with characters like R2-D2, Luke Skywalker, Princess Leia, Han Solo, Chewbacca, C-3PO, Rebel soldiers, Ewoks, Scout Troopers and Stormtroopers.

At 1,990 pieces this is a huge set that towers at over 13\" high, and the organic shapes make this set a joy to build.  Nets and traps allow you to act out some of your favorite scenes from d Episode VI.
"""
p.url = "http://amzn.to/1PsXY5q"
p.cost = 250
p.tag_list.add("gear", "lego", "toys")
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"lego_star_wars_ewok_village.jpg"
)
p.save

p = Post.find_or_initialize_by(
  :title=>"Glencairn Whiskey Tasting Glass",
  :user=>User.first,
)
p.body = """
The Glencairn Whiskey Tasting Glass was designed by Raymond Davidson of Glencairn Crystal in Scotland and came into production in 2001.

Its pear shaped design is based on the nosing copitas used in whiskey laboratories all over the world and was made with the help of master blenders from the largest whiskey makers in Scotland.

While the snifter is a popular vessel, the curves shape of the Glencairn Whiskey Tasting Glass concentrates the aroma of the whiskey while minimizing evaporation, and it's fun to have a special glass to use when cracking open a Glenfarclas 25 or Taketsuru 21.
"""
p.url = "http://amzn.to/1PsXX1z"
p.cost = 17
p.tag_list.add("gear", "mixology", "drinking")
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"glencairn_whiskey_glass.jpg"
)
p.save

p = Post.find_or_initialize_by(
  :title=>"Lodge Cast Iron Skillet",
  :user=>User.first,
)
p.body = """
Cast iron is impossible to beat for heat retention, and Lodge has been making them since 1896.  The Lodge Cast Iron Skillet is the perfect tool for recipes that start on the stove and end up in the oven, and is my weapon of choice for a ribeye steak.

Cast iron is the original non-stick surface since its high specific heat allows it to maintain high temperatures that vaporize liquids on contact, preventing them from sticking.  The Lodge Cast Iron Skillet is preseasoned, but in the event it's damaged it can be reapplied simply by wiping down with oil and baking upside down at high temperatures.

Cast iron does rust if left in contact with water, but can be cleaned by scrubbing down with salt and wiping clean with oil.
"""
p.url = "http://amzn.to/1kzaUes"
p.cost = 33
p.tag_list.add("gear", "food", "cooking")
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"lodge_cast_iron_skillet.jpg"
)
p.save

p = Post.find_or_initialize_by(
  :title=>"Microplane Classic Zester/Grater",
  :user=>User.first,
)
p.body = """
Want to impress the love of your life?  Try grating an orange and 2-3 lemons worth of zest into your favorite waffle or pancake recipe with the Microplane Classic Zester/Grater for some serious brownie points.

The Microplane is solidly build with a rubber handle and plastic sheath that prevents the tines from getting caught.  Since receiving one for Christmas a few years back this has been one of my favorite tools for adding some zest to everyday dishes.
"""
p.url = "http://amzn.to/1kzaQv8"
p.cost = 11
p.tag_list.add("gear", "food", "cooking")
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"microplane_classic_zester.jpg"
)
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
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"pandemic.jpg"
)
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
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"eatsmart_precision_pro_scale.jpg"
)
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
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"twist_silicon_whisk.jpeg"
)
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
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"velesco_silicon_bake_mat.jpg"
)
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
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"pyrex_2_cup_glass.jpg"
)
p.save

p = Post.find_or_initialize_by(
  :title=>"Bang!",
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
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"bang.jpg"
)
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
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"allen_bow_string_wax.jpg"
)
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
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"gateway_feathers.jpg"
)
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
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"born_to_run.jpg"
)
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
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"ad_hoc_at_home.jpg"
)
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
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"kreg_jig_k4.jpg"
)
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
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"smallworld.jpg"
)
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
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"ticket_to_ride.jpg"
)
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
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"grayling_fletching_jig.jpg"
)
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
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"goldtip_arrow_glue.png"
)
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
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"dewalt_dwe575sb.jpg"
)
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
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"love_letter.jpg"
)
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
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"cards_against_humanity.jpg"
)
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
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"vortex_optics_solo.jpg"
)
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
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"a_history_of_the_world_in_6_glasses.jpg"
)
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
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"the_name_of_the_wind.jpg"
)
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
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"shun_higo_nokami.jpg"
)
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
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"easton_hip_quiver.jpg"
)
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
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"chemex_8_cup_coffee_maker.jpg"
)
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
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"saunders_combo_point.jpg"
)
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
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"yurbuds_inspire_100.jpg"
)
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
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"lifestraw.jpg"
)
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
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"swedish_firesteel.jpg"
)
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
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"the_alchemist.jpg"
)
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
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"samick_sage.jpg"
)
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
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"goldtip_expedition_hunter.jpg"
)
p.save




