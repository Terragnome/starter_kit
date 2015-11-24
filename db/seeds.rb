# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#  cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#  Mayor.create(name: 'Emanuel', city: cities.first)

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
p.summary = '''Opinel knives are the traditional French picnic knives made in France since 1890. Rich in history and utility these knives are still a part of everyday culture in France. They are easy to use and they have a safe design. Each knife is made of four components, so the user need not worry about breaking parts - more common to overly complex mechanisms. Knife consists of carbon steel blade, hardwood handle, rivet and a stainless steel locking collar that prevents the knife from accidentally opening or closing. These knives are not only effective and practical; they are also beautiful. Opinel knives have been displayed in Museums and, in 1985, they were ranked as one of the "100 most beautiful products in the world", by the Victoria and Albert Museum in London. Opinel - a simple, beautiful and effective design that has survived and thrived for well over a century. Stamped with the famous Opinel crowned hand logo. 4 1/4 " closed, 3 1/4" inch blade.'''
p.body = '''
I use an Opinel as my everday carry knife because I wanted a knife with a beautiful classic design but that could be easily replaced if I lost it. The high carbon steel blade can be sharpened easily with a whetstone to a razor edge, although it must be treated to avoid rust. One option is to oil it, but I chose to use vinegar to form an black oxidized coat instead and have never had any problems.
'''
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
p.summary = '''The Mamba recurve from Martin Archery is a redesigned Martin Highspeed of old. Traditional Bowhunters have raved about this bow for years. The Mamba is a beautiful and powerful recurve that stores a great amount of energy for FAST shooting. Maneuverable and lightweight (1 lbs 14oz), the Mamba is easy to carry and fits in tight spots. Owner\'s manual and bow stringer included.'''
p.body = '''
Martin Archery prides itself on building custom handmade bows, made one at a time, by the most experienced Bowyers in the world. Since 1938."

Martin Archery is an American bowmaker founded by Gail Martin 1938 and makes some of the finest traditional wood bows in the world. The Martin Mamba is one of its greatest designs and was the bow used to light the torch for the 1992 Summer Olympics in Barcelona.

The Martin Mamba is a 58" recurve bow made of Eastern Hard Maple core and accentuated with a Bubinga stripe lined with Shedua. Like most modern recurves, it has fiberglass laminations along the face and reinforced bow tips allow the use of modern bow strings made of materials such as Fast Flight. The sight window is cut past center which allows it to accept a greater spine range of arrows.

I chose the Martin Mamba as my first recurve because it was a handcrafted American bow with a storied history. It\'s a work of art that I love looking at on my bow rack even when I\'m not at the range. For those just getting into archery as a hobby, the most important thing to remember is never to draw your bow back and release it without an arrow (dry fire). You should also never prop it up vertically, never store it strung, and never leave it in a hot car or in a damp place as all of these things can damage the bow.
'''
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
p.summary = """Tell your own fantastic tales of brave heroes and daring adventure! Once Upon a Time is the award-winning storytelling card game that encourages creativity and collaborative play. One player is the Storyteller, and begins telling a story using the fairytale elements on her Story cards, guiding the plot toward her Ending Card. The other players use their own cards to interrupt her and become the new Storyteller. The winner is the first player to use all her Story Cards and play her Ending Card. The object of the game, though, isn't just to win, but to have fun telling a story together."""
p.body = """
Once Upon A Time is a cardgame in which players exercise their creativity and storytelling to craft the perfect fairy tale. Players take turns telling a story and playing special cards to take control of the narrative.

The winner is the person who is able to introduce all their story elements and successfully finish it. This is a great game for experienced boardgamers who are looking for something a little different.

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
p.summary = """Rose Levy Beranbaum's The Cake Bible introduced readers to a newly illuminating baking-book approach--a precisely detailed yet accessible recipe format emphasizing baking science. The Bread Bible follows the same plan, offering 150 recipes, arranged by type, for a great variety of baked goods--from muffins, popovers, and English muffins to sandwich loaves, focaccia, rolls, hearth breads, rye bread, challah, and more, with a particularly vivid (and passionate) stop at sourdough loaves. Instruction is abetted by 32 pages of photos plus 300 step-by-step illustrations that depict, for example, bagel forming, in exact, imitable detail. In addition, an introductory section, \"The Ten Essential Steps of Making Bread,\" includes a particularly lucid discussion on the way yeast works plus an invaluable comparison of kneading methods. Like the book's final look at ingredients, these \"mini-texts\" provide information uncommon to most home bread books, rendered in simple language that allays fears of putting one's hand in the dough."""
p.body = """
Rose Levy Beranbaum's \"The Bread Bible\" is an excellent resource for bakers of all levels and the 2003 winner of the Gourmand World Cookbook Awards in the Best Bread Book Category. Recipes are detailed and contain overviews of the chemistry and recipes often contain a few variants with descriptions of hwo they will influence the final product.

The Basic Hearth Bread is an great recipe for beginners while the Proscuitto Ring is great for those with a little more experience.

This was the book that taught me that kneading the dough is what produces the protein gluten, punching down the dough distributes air bubbles in the crumb, and that professional bakers use scales because they are more precise that measuring cups which can be inprecise if the flour is tightly packed. I trace much of love of baking back to this book and highly recommended it for anyone interested in baking bread as a hobby.
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
p.summary = """Four years ago, when Alton Brown set out to write \"I'm Just Here for the Food\", he wanted to create a cookbook unlike any other - a cookbook for people who would rather understand their food than follow a recipe. A mix of cutting edge graphics and a fresh take on preparing food, \"I'm Just Here for the Food\" became one of the best-selling cookbooks of the year - and received the James Beard Foundation/KitchenAid Book Award as best reference book."""
p.body = """
I'm a huge fan of Alton Brown. Watching old episodes of Good Eats and \"I'm Just Here For the Food\" as my first cookbook were how I got into cooking and developed a skillset and a hobby that has served me well into the present.

Alton's writing style is both informative and entertaining. He explains the chemical processes that underlie various cooking techniques, and \"I'm Just Here for the Food\"'s focus on truly understanding methodology over the rote memorization of individual recipes verbatim is its great strength. Reading this book teaches you how to cook, not just how to do what you're told.

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
p.summary = """Yotam Ottolenghi is one of the world’s most beloved culinary talents. In this follow-up to his bestselling Plenty, he continues to explore the diverse realm of vegetarian food with a wholly original approach. Organized by cooking method, more than 150 dazzling recipes emphasize spices, seasonality, and bold flavors. From inspired salads to hearty main dishes and luscious desserts, Plenty More is a must-have for vegetarians and omnivores alike. This visually stunning collection will change the way you cook and eat vegetables"""
p.body = """
\"Plenty More\" is a cookbook focusing on vegetarian recipes from the founder of Ottoloenghi in London, Yotam Ottolenghi. While I love meat (like, a lot), Ottolenghi's recipes and vibrant flavor choices make this an excellent cookbook for anyone looking to add variety to their home dining experience.

Preparing delicious recipes without meat, whether for health, preference, or ideology, is an illuminating challenge for anyone pursuing cooking as a hobby. A nice ribeye or duck breast practically cooks itself, so I found avoiding meat to be a really meaningful and interesting constraint.
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
p.summary = """Made from VG-10 stainless steel, Shun knives are specially constructed to be harder, less brittle, but also more flexible than traditional steel formulations. The VG-10 core is then clad with 16 full layers of SUS410 high-carbon stainless steel on each side, for a total of 33 layers. These layers not only protect the VG-10, they create an exquisitely-detailed surface reminiscent of Damascus or pattern-forged steel, the kind once used for Samurai swords. As a result, the knives are simply stunning to look at--much like antique Damascus knives but without their tendency to rust. As an additional benefit, the slight patterning helps slice rather than crush delicate foods and keeps cut food from sticking to the blade."""
p.body = """
Although it is owned by Kershaw Knives in Tualatin, Oregon, Shun knives are high quality knives that are handmade in Japan. The Shun Classic 8-Inch Chef's Knife is made with a 32 layer VG-10 steel, full tang blade, and a resin impregnated PakkaWod handle that is both beautiful and functional.

Knives are an essential tool for any chef, and dull knives can be a major cause of accidents in the kitchen. Having to push down harder in order to make cuts increases the force that's require and makes slips and accidental cuts possible. Shun Classics are made of high quality VG-10, whose hardness allows Shun knives to be ground to razor sharp 15 degree cutting angle.

While stamped steel knife blocks can be more affordable for those on a budget, a chef's knife, paring knife, and bread knife are all you really need to get started in your home kitchen. With proper care, a Shun chef's knife is an investment that you'll be able to use for the rest of your life.
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
p.summary = """Choose from over 20 different colors of the KitchenAid Artisan Series Tilt-Head Stand Mixer for the one that perfectly matches your kitchen design or personality. Easily make your favorite cakes and multiple batches of cookie dough with the 5-quart stainless steel mixing bowl with comfortable handle. With 10 speeds, the standmixer will quickly become your kitchen’s culinary center as you mix, knead and whip ingredients with ease. And for even more versatility, the power hub fits optional attachments from food grinders to pasta makers and more."""
p.body = """
KitchenAid is an industry leader in kitchen appliances, and the KitchenAid 5 Quart Start Mixer is an essential tool for anyone pursuing cooking or baking as a hobby. A stand mixer can knead sticky doughs with its dough hook, whip fresh cream or meringues for cakes, and even grind meat for sausages with the proper attachment.

While the price may intially seem daunting, I found the solid build quality and excellent reputation to be worth the investment. It's possible to get by without a stand mixer, but if it's within your budget having a KitchenAid 5 Quart Stand Mixer simplifies a lot of routine tasks. Your back and your forearms will thank you.
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
p.summary = """Travel to Endor and visit the treetop home of the Ewoks. Just like in Star Wars: Episode VI Return of the Jedi, this recreation of the Ewoks' forest dwelling is packed with cool functions, including the tree-trunk hideout, secret Lightsaber stash, spider web, net traps, slide, catapults and an elevating throne. Use the rammer function to take out the Scout Trooper's speeder − just like in the movie! Realistic details include rope walkways, vine and leaf elements, kitchen, food storage area, bedroom and a planning room. The Ewok Village set is the perfect addition to your LEGO Star Wars collection. Includes R2-D2and 16 minifigures with weapons: Luke Skywalker, Princess Leia, Han Solo, Chewbacca, C-3PO, 2 Rebel soldiers, 5 Ewoks (including Wicket, Teebo, Chief Chirpa and Logray), 2 Scout Troopers and 2 Stormtroopers."""
p.body = """
The Lego Star Wars Ewok Village combines one of the most iconic toys in the world with one of the most iconic film franchises. The set itself includes a great set of minifigs, with characters like R2-D2, Luke Skywalker, Princess Leia, Han Solo, Chewbacca, C-3PO, Rebel soldiers, Ewoks, Scout Troopers and Stormtroopers.

At 1,990 pieces this is a huge set that towers at over 13\" high, and the organic shapes make this set a joy to build. Nets and traps allow you to act out some of your favorite scenes from d Episode VI. I found this to be an incredibly fun set to build. Highly recommended for any Lego fan.
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
p.summary = """Savor whisky in glasses fit for royalty! After winning the 2006 Queen's Award for Innovation the Glencairn whisky glass has earned its place on the bar. Considered the 'official whisky glass' by the experts Glencairn offers aficionados of Scotch whisky a special vessel to appreciate its nuances. Comfortable in the hand it has a full bowl that tapers at the rim to enhance color body aroma taste and finish. Machine made from fine lead-free crystal by Glencairn Crystal in Europe. Dishwasher safe. Size: 4-1/2'H 6 oz."""
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
p.summary = """The Lodge Cast Iron 8-inch Skillet and Red Mini Silicone Hot Handle Holder is a multi-functional cookware that works wonders with slow-cooking recipes and all your favorite foods. This pre-seasoned Skillet works like a charm right out of the box. Pancakes, eggs, and bacon somehow taste extra hearty when cooked in a heavy cast-iron skillet. Cast iron creates superior heat retention, heats evenly, and loves a campfire, unlike flimsier pans. Fry up a mess of catfish, roast chicken, or bake an apple crisp in this 8-inch pan that features a sturdy handle for heavy lifting, and two subtle side lips for pouring. While the skillet comes pre-seasoned to prevent food from sticking, it works best when sprayed or lightly coated with vegetable oil before use. The Lodge seasoning procedure is a multiple-step process in which the seasoning oil is applied via an electrostatic spray system that coats the cookware, then it's baked in commercial ovens at very high temperatures. This allows the oil to penetrate deeply into the pores of the iron."""
p.body = """
Cast iron is impossible to beat for heat retention, and Lodge has been making them since 1896. The Lodge Cast Iron Skillet is the perfect tool for recipes that start on the stove and end up in the oven, and is my weapon of choice for a ribeye steak.

Cast iron is the original non-stick surface since its high specific heat allows it to maintain high temperatures that vaporize liquids on contact, preventing them from sticking. The Lodge Cast Iron Skillet is preseasoned, but in the event it's damaged it can be reapplied simply by wiping down with oil and baking upside down at high temperatures.

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
p.summary = """Classic Zester Grater. Black. Blade made of surgical grade stainless steel. Plastic handle. Originally a woodworking tool, this best seller grates even the hardest Parmesan Reggiano as well as other hard cheeses into fine lacy wisps. Ideal for topping your favorite spaghetti and meatballs or a Caesar salad. Its also wonderful for. effortless citrus zesting to add natural flavors to a lemon crème brulee or a basic vinaigrette."""
p.body = """
Want to impress the love of your life? Try grating an orange and 2-3 lemons worth of zest into your favorite waffle or pancake recipe with the Microplane Classic Zester/Grater for some serious brownie points.

The Microplane is solidly build with a rubber handle and plastic sheath that prevents the tines from getting caught. Since receiving one for Christmas a few years back this has been one of my favorite tools for adding some zest to everyday dishes.
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
p.summary = """Four diseases have broken out in the world and it is up to a team of specialists in various fields to find cures for these diseases before mankind is wiped out. Players must work together playing to their characters' strengths and planning their strategy of eradication before the diseases overwhelm the world with ever-increasing outbreaks. For example the Operation Specialist can build research stations which are needed to find cures for the diseases. The Scientist needs only 4 cards of a particular disease to cure it instead of the normal 5. But the diseases are out breaking fast and time is running out: the team must try to stem the tide of infection in diseased areas while also towards cures. A truly cooperative game where you all win or you all lose."""
p.body = """"""
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
p.summary = """
The EatSmart Precision Pro Digital Kitchen Scale is a versatile multifunction home appliance. Designed to be highly accurate and aesthetically pleasing, the Precision Pro is manufactured to the highest quality specifications. Weigh items up to 11 lbs quickly and accurately, with results displayed in four different units: grams / ounces / pounds / kilograms.
For cooks - Weigh food items directly on the scale platform or utilize the scale's tare (zero) function, which eliminates the weight of a plate or bowl and makes cleanup a snap. The high resolution screen provides easy viewing angles on any kitchen counter and the five rubber feet eliminate sliding. Additionally the three minute auto-turnoff feature ensures that you will never again lose your measurement in the middle of your recipe prep!

For Weight Loss Goals / Disease Management - The Precision Pro is ultra accurate, precise to .05 ounce / 1 gram increments and perfect for calorie or carbohydrate counting. The scale now includes a FREE EatSmart Calorie Factors book for easy calorie counting (simply multiply the grams of food by the calorie factor in the book)! Stop guessing about portion sizes and start living a healthier lifestyle today.
"""
p.body = """
While it's possible to use the EatSmart Precision Pro Scale for dieting, I like to use it to measure the dry weight of ingredients for baking. Bread in particular is sensitive to the amounts of ingredients since almost every bread is made frome the same four primary ingredients: flour, water, yeast, and salt.

Flour, and salt in particular can be difficult to measure because how well it's packed can influence cause a different amounts to fit into the same volume. Measuring the mass of ingredients fixes this problem, making a digital scale an essential tool for anyone pursuing baking as a hobby.

While there are scales with more features or more impressive designs, the EatSmart Precision Pro Digital Kitchen Scale met all my needs at a compact size and an affordable price.
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
p.summary = """
The Twist Whisk by Joseph Joseph is the ultimate 2-in-1 silicone whisk. This innovative product incorporates two essential whisks in one stylish design. Twist begins as a flat whisk, ideal for mixing sauces in low pans or for making gravy in roasting trays. Its silicone-coated steel wires are suitable for non-stick cookware and are perfect for scraping and combining ingredients together, preventing them from burning on the bottom of a pan. Then, with a simple turn of the handle tip, Twist also becomes a highly effective balloon whisk, allowing egg whites to be whipped into peaks of perfection. Twist is heat-resistant up to 520 degrees F. All the parts can be easily separated for cleaning and Twist is dishwasher safe. Twist can also be closed flat for convenient storage in a drawer, unlike any other balloon whisk. By Joseph Joseph, masters of form and function.
"""
p.body = """
The worst parts of whisking are cleaning, storing, and actually using the whisk. While the Twist 2-in-1 Silicone Whisk won't help with the whisking, it will help with the cleaning and storage.

By twisiting the knob, the tines of the whisk lay flat which makes it easy to store in the same cupboard or drawer as your other utensils. The silicone coating helps prevent things from sticking, and the flattened shape is also a lot easier to go over with a sponge.

The tradeoff is that the whisk is slightly heaver, but overall the Twist-2-in-1 Silicone Whisk is an excellent tool or gift for anyone pursuing cooking or baking as a hobby.
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
p.summary = """Instead of lubricating your baking sheet with oil & fat, make it nonstick with Velesco Silicone Baking Mat!

Not only does it eliminate potentially dangerous elements from your diet, but it also makes your life a bit easier and more enjoyable. Because once you finish baking, all you need to do is to rinse the mat in warm soapy water, roll it up & store.

And most of the time, you don't even have to wash your sheet."""
p.body = """"""
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
p.summary = """Add a measure of consistency to your kitchen with the Pyrex 2-Cup Measuring Cup that is sturdy and easy-to-read. Measurement indicators and the easy to grab handle are designed to make it easy to mix, measure and pour. Whether you are preparing a multi-course meal or simply a snack for one, Pyrex offers products which make food preparation a little easier, from beginning to end. There's no substitute for Pyrex, the original glass bakeware. Introduced 90 years ago and made of a durable, high temperature material, Pyrex remains the ideal medium for safe, dependable food preparation. Use and care: Avoid sudden temperature changes. No stovetop or broiler use. Do not overheat oil or butter. Microwave and dishwasher safe."""
p.body = """"""
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
p.summary = """When a man with a pistol meets a man with a Winchester, you might say that the one with the pistol is a dead man, unless his pistol is a Volcanic, In the wild west, the Outlaws hunt the Sheriff, the Sheriff hunts the Outlaws, and the Renegade plots in secret, ready to join one side or the other. Before long, bullets start to fly, Which gunmen are Deputies, ready to sacrifice themselves for the Sheriff? And which are the merciless Outlaws, looking to gun him down? The world's best-selling wild west card game is back in a new, richer format. Easier to learn and play than ever before, Game Contents: 7 Role Cards (1 Sheriff, 2 Deputies, 3 Outlaws, 1 Renegade), 16 Characters, 80 Playing Cards, 7 Summary Cards, 7 Player Board, 30 Bullet Tokens, Rulebook in Full Color."""
p.body = """"""
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
p.summary = """"""
p.body = """"""
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
p.summary = """"""
p.body = """"""
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
p.summary = """
An epic adventure that began with one simple question: Why does my foot hurt?

Isolated by Mexico's deadly Copper Canyons, the blissful Tarahumara Indians have honed the ability to run hundreds of miles without rest or injury. In a riveting narrative, award-winning journalist and often-injured runner Christopher McDougall sets out to discover their secrets. In the process, he takes his readers from science labs at Harvard to the sun-baked valleys and freezing peaks across North America, where ever-growing numbers of ultra-runners are pushing their bodies to the limit, and, finally, to a climactic race in the Copper Canyons that pits America’s best ultra-runners against the tribe. McDougall’s incredible story will not only engage your mind but inspire your body when you realize that you, indeed all of us, were born to run.
"""
p.body = """"""
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
p.summary = """
Thomas Keller shares family-style recipes that you can make any or every day. In the book every home cook has been waiting for, the revered Thomas Keller turns his imagination to the American comfort foods closest to his heart—flaky biscuits, chicken pot pies, New England clam bakes, and cherry pies so delicious and redolent of childhood that they give Proust's madeleines a run for their money. Keller, whose restaurants The French Laundry in Yountville, California, and Per Se in New York have revolutionized American haute cuisine, is equally adept at turning out simpler fare. 
"""
p.body = """"""
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
p.summary = """
The Kreg Jig is the perfect choice for DIY'ers and anyone new to pocket-screw joinery. Whether you're building your first set of garage storage shelves or making simple repairs around the house, the Kreg Jig can help you finish the job in less time and with far less effort than you ever thought possible. Its simple design gives you the confidence to start the project and with joints as easy as \"Drill. Drive. Done!\" You'll actually want to finish it. The Kreg Jig makes every joint you build faster and stronger, but perhaps more importantly, it makes them easier. Simple two-step operation, combined with easy thickness adjustments, built-in depth-setting-gauges, a large clamping recess and our patented 3-hole drill guide, make this the most easy-to-use Kreg Jig we've ever made. Includes everything you need to get started with pocket-screw joinery, including Kreg Jig, stepped drill bit, 6-inch square driver, dust collection shroud, starter screw set, starter plug set, skill builder DVD and quick-start guide, all inside a compact and durable carrying case.
"""
p.body = """"""
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
p.summary = """
Small World is a zany, light-hearted civilization game in which 2-5 players vie for conquest and control of a board that is simply too small to accommodate them all. Picking the right combination of fantasy races and unique special powers, players must rush to expand their empires - often at the expense of weaker neighbors. Yet they must also know when to push their own over-extended civilization into decline and ride a new one to victory. Designed by Philippe Keyaerts, as the fantasy follow-up to his award-winning Vinci, Small World is inhabited by a cast of characters such as dwarves, wizards, amazons, giants, orcs and even humans; who use their troops to occupy territory and conquer adjacent lands in order to push the other races off the face of the earth. Small World marks the return of the Days of Wonder line of heavily-themed, big-box sized games featuring evocative illustrations, high-quality European components and a compelling, fun theme. Game Contents: Two double-sided game boards (One for each of four possible player configurations), 14 Fantasy Races with matching banners & tokens, 20 Special Power badges, A variety of Troll Lairs, Mountains. Fortresses, Encampments, Holes-in-the-ground, 2 Heroes, A Dragon, Along with Victory Coins, 6 Player Summary Sheets, A Reinforcement Die, Rules Booklet and A Days of Wonder Online Access Number.
"""
p.body = """Think Risk, but with mini objectives and superpowers. A big part of the game is in picking the right combination of creature and powers. Flying Wizards? Dipomatic Ghouls? It's pretty simple once you've learned the rules, but the number of pieces and tokens can be overwhelming for a beginner. The easiest way to learn the game is by playing. One of my favorite boardgames."""
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
p.summary = """
October 2, 1900 - it's 28 years to the day that noted London eccentric, Phileas Fogg accepted and then won a bet that he could travel \"Around the World in 80 Days.\" Now, at the dawn of the century, some old friends have gathered to celebrate Fogg's impetuous and lucrative gamble - and to propose a new wager of their own. The stakes: $1 million in a winner-takes-all competition. The objective: to see the most cities in North America - in just 7 days. Ticket to Ride is a cross-country train adventure game. Players collect train cards that enable them to claim railway routes connecting cities throughout North America. The longer the routes, the more points they earn. Additional points come to those who can fulfill their Destination Tickets by connecting two distant cities, and to the player who builds the longest continuous railway. For 2 to 5 players ages 8 and older. Playing time: 30-60 minutes. Comes with: 1 Board map of North American train routes, 240 Colored Train Cars, 110 Train Car cards, 30 Destination Tickets, 5 Wooden Scoring Markers, 1 Days of Wonder Online access number, and a Rules booklet.
"""
p.body = """This game plays like Connect 4 or Go. A lot of the strategy comes from trying to play ambiguous moves that let you control territory without letting people know where you're going so they can't block you. It actually works pretty well as a two-player game too."""
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
p.summary = """
Fletch new arrows or repair damaged ones with a Fletching Jig that can do it all. Package comes complete with universal hook shaft holder, index shaft holder, nock receiver, crossbow bolt receiver and Right Helical Clamp.
"""
p.body = """There are more expensive jigs out there, but this one is cheap, accurate, and gets the job done. I've fletches hundreds of arrows with this jig. The only upkeep is in wiping off extra glue from the clamp so glue doesn't dry on it."""
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
  :title=>'DeWalt DWE575SB Circular Saw',
  :user=>User.first,
)
p.summary = """
The Dewalt DWE575SB 7-1/4-inch lightweight circular saw with electric brake is designed to be one of the lightest and well balanced saw in its class at only 8.8 pounds, with an electric brake that stops the blade after the trigger is released. A ball bearing lower guard provides a durable design — even against dust contamination for smooth retraction — along with the high grade stamped aluminum shoe that provides the user with a durable and smooth base for accurate cutting. Advanced lower guard geometry for bevel cuts with integrated dust blower allows the user to clear the sightline while cutting. A patented tough cord protection system provides 3x durability against cord pull-out. On-board blade wrench storage allows for easy storage and convenience for blade changes. It also includes a handy carrying case for easy portability.
"""
p.body = """A simple circular saw lets you build an incredible number of things. If you need to cut a straight line you can clamp a rule or a board down, then use it to guide the saw."""
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
p.summary = """
All of the eligible young men (and many of the not-so-young) seek to woo the princess of Tempest. Unfortunately, she has locked herself in the palace, and you must rely on others to bring your romantic letters to her. Will yours reach her first? Love Letter is a game of risk, deduction, and luck for 2 to 4 players. Your goal is to get your love letter into Princess Annette's hands while deflecting the letters from competing suitors. From a deck with only sixteen cards, each player starts with only one card in hand; one card is removed from play. On a turn, you draw one card, and play one card, trying to expose others and knock them from the game. Powerful cards lead to early gains, but make you a target. Rely on weaker cards for too long, however, and your letter may be tossed in the fire.
"""
p.body = """This game is easy to learn and has really quick rounds which makes it ideal for if you're waiting for something or aren't sure how long you'll be able to play. It's ridiculously satisfying to be a Guard and knock someone else out before they even have a chance to make a move."""
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
p.summary = """
Cards Against Humanity is a party game for horrible people. Unlike most of the party games you've played before, Cards Against Humanity is as despicable and awkward as you and your friends. 

The game is simple. Each round, one player asks a question from a Black Card, and everyone else answers with their funniest White Card. 
"""
p.body = """This game is like NSFW Apples to Apples. It's a great party game that scales to large groups, but use discretion. I like to play the Rando Cardrissian modification, where you deal cards to an imaginary player and randomly pick one every round. It's great fun to talk trash to people who are worse than chance. Another house rule that can speed up the game is that the last card that a person tries to play in a round is ignored."""
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
p.summary = """Pack light and take in bright views through the fully multi-coated optics of the redesigned Vortex Solo monocular. Once you see the viewing power Vortex has packed into this 5.6 ounce monocular, you won't leave home without it! Protected by waterproofing, fogproofing, and the Vortex VIP warranty, customers are guaranteed a monocular that will last for generations."""
p.body = """
You can always have a quality optic close at hand with the Solo Monocular. This compact, easy-to-carry monocular delivers quality viewing for outdoor enthusiasts who wish to bring nature a bit closer. Fully multi-coated glass surfaces deliver bright images in a compact, lightweight, easy to handle unit. Waterproof, fogproof and shockproof. It also has a BAK-4 prisms, which have a higher refractive index than BAK-7, and multi-coated glare resistant lenses. From bowhunters to backpackers the Solo makes a great addition to any gear list.
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
p.summary = """
Throughout human history, certain drinks have done much more than just quench thirst. As Tom Standage relates with authority and charm, six of them have had a surprisingly pervasive influence on the course of history, becoming the defining drink during a pivotal historical period.

A History of the World in 6 Glasses tells the story of humanity from the Stone Age to the 21st century through the lens of beer, wine, spirits, coffee, tea, and cola. Beer was first made in the Fertile Crescent and by 3000 B.C.E. was so important to Mesopotamia and Egypt that it was used to pay wages. In ancient Greece wine became the main export of her vast seaborne trade, helping spread Greek culture abroad. Spirits such as brandy and rum fueled the Age of Exploration, fortifying seamen on long voyages and oiling the pernicious slave trade. Although coffee originated in the Arab world, it stoked revolutionary thought in Europe during the Age of Reason, when coffeehouses became centers of intellectual exchange. And hundreds of years after the Chinese began drinking tea, it became especially popular in Britain, with far-reaching effects on British foreign policy. Finally, though carbonated drinks were invented in 18th-century Europe they became a 20th-century phenomenon, and Coca-Cola in particular is the leading symbol of globalization.
"""
p.body = """
Tom Standage's \"A History of the World in 6 Glasses\" is a compelling guide through human history told through six beverages that changed the world.

Standage covers everything from the development of beer as a mystic beverage used in religious ceremonies, through the cultivation of wine as a status symbol in ancient Greece, coffee as the drink of the Enlightenment, and the consumption of purified water in the modern age.the role of tea as a driver for British colonialism, and the spirits that powered the settling of the new world. I found this to be a fascinating read that enriched the ritual of a morning coffee or a beer after work that many of us now take for granted.
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
  :user=>User.first
)
p.summary = """
The riveting first-person narrative of a young man who grows to be the most notorious magician his world has ever seen. From his childhood in a troupe of traveling players, to years spent as a near-feral orphan in a crime- ridden city, to his daringly brazen yet successful bid to enter a legendary school of magic, The Name of the Wind is a masterpiece that transports readers into the body and mind of a wizard. It is a high-action novel written with a poet's hand, a powerful coming-of-age story of a magically gifted young man, told through his eyes: to read this book is to be the hero.
"""
p.body = """"""
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
p.summary = """
This beautifully crafted folding knife is an extremely handsome accessory, whether carried as a tasteful pocketknife or a personal steak knife. First manufactured in 1896 in Meiji-era Japan, this style of knife is considered to be the first Japanese pocketknife. One of the key characteristics of the traditional Higo-No Kami is that when the knife is closed, part of the blade tang protrudes and can be used like a small lever to open the knife with one hand.
"""
p.body = """This knife is not robust enough for an outdoorsman, and at this price point not one that I'd rather use my Opinel for rough tasks where it might get damaged. It's beautfully crafted though, and fits easily into a suit pocket for the gentleman on the go."""
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
p.summary = """
Easton Hip Quiver keeps extra arrows close - at - hand. Always have an arrow ready! This Easton Hip Quiver keeps arrows handy and protected. The fine points: Sturdy nylon and molded foam body is lightweight yet durable; Oversized compartments with zippered external pocket and internal pocket dividers; Molded arrow separators hold arrows securely; Top pocket for releases, pens, smart phone, etc.; Bow square slot and D-rings. Measures 46' l. x 10\" w. x 8\" h.
"""
p.body = """My buddy has used this quiver for the last two years, and I've been impressed by the quality of construction. The main compartment is subdivided into smaller pockets, which lets him organize his arrows by different tips (blunts vs field) which is extremely useful."""
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
p.summary = """
Known as a pristine coffeemaker, Chemex employs all of the chemically correct methods for brewing. Its hourglass shaped flask is made entirely of glass, a chemically inert material that does not absorb odors or chemical residues. The Chemex Glass Coffee Maker has no moving parts and will work forever, unless it is dropped or in some other way demolished.
"""
p.body = """Fancy and hipster coffee drinkers in my office swear by the Chemex. I needed someone to teach me how to use it, but once you go through it it's a pretty simple process and you can use whatever filters you want on it. Recommended as an alternative to a french press for people who only need 1-2 cups at a time. Just don't confuse it with a vase"""
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
p.summary = """
Saunders Combo Points feature a patented design that produces a smaller entry hole with less penetration, making it easier to pull the arrow from the target, earning the endorsement of major foam 3-D target manufacturers. Also allows for less drag, greater speed and accuracy. Made of Tellurium steel alloy with black oxide finish. 
"""
p.body = """
Saunders Combo Points are an excellent alternative to field tips for your arrows and are suitable for target shooting or for hunting small game.

They have a black zinc coating which resists rust, and a shape that makes them easy to pull out of embedded into had surfaces like wood. I've had Saunders Combo Points strike nails hidden in a bale of hay with only minimal damage.

It's important that your arrows and tips match the spine of your bow, so Three Rivers Archery offers a convenient <a href='http://www.3riversarchery.com/dynamic-spine-arrow-calculator-from-3rivers-archery.html'>dynamic spine calculator</a> which you can use to find the right arrows for you.
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
p.summary = """
Let your music motivate you with sound that stays put. TwistLock® technology and FlexSoft® comfort fit guarantee these sweat-proof in-the-ear sport earphones will never hurt or fall out. yurbuds® Inspire® 100 allows ambient sound to ensure you hear everything you need to stay safe. Made to move, just like you.
"""
p.body = """
Yurbuds Inspire 100 In-Ear Headphones are excellent for runners because the headphone shape allows them to snap onto your ears and stay in without any hooks or other devices. They're suprisingly comfortable, and allow enough sound to leak in that I'm able to hear cars coming when running on the road or in the city.

The silicon for the tips will eventually loosed a bit with use, which happened for me after about 2-3 years of daily use, but Yurbuds also has an excellent replacement program for the ear cups and after losing one of the earcups (my cord got snagged against a bollard and the earphone were pulled out of my head) I was able to buy another pair for about $2. Highly recommended.
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
p.summary = """
LifeStraw is ideal for hiking, backpacking, camping, travel, and emergency preparedness. The straw-style filter design lets you turn up to 1,000 liters of contaminated water into safe drinking water.
"""
p.body = """
The Lifestraw Water Filter is a compact water purification system capable of removing 99.9999% or waterborn pathogens. At only 2oz it's an excellent choice for situations where fresh water's required but weight and space are at a premium.

These qualities earned Lifestraw a Time Magazine \"Invention of the Year\" award and the perfect gift or purchase for ultralight backpackers, travelers, boy scouts, hunters, and outdoor enthusiasts all over the world. I like to use it by filing up my regular water bottle then drinking out of it with the LifeStraw, although they also sell a water bottle with a filter integrated into the mouth piece.
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
  :title=>'Swedish FireSteel 2.0',
  :user=>User.first,
)
p.summary = """
Originally developed for the Swedish Department of Defense, our legendary Swedish FireSteel® is the original magnesium fire starter. Our second generation Swedish FireSteel 2.0® comes with an improved striker that makes it even easier to build a fire in any weather and at any altitude. It has a new design, a flexible cord and a built-in emergency whistle.
"""
p.body = """
Swedish Fireseel is capable of generating a 3,000° C spark and starting fires in difficult conditions like damp and humid environments. good for over 12,000 strikes, and has been approved by the International Survival Instructors Association. This makes it a great gift or purchase for anyone interested in outdoor hobbies or for people who just like playing with fire. My buddies and I like to use it to start wood fires in our firepit.
"""
p.url = "http://amzn.to/1PUBSZQ"
p.cost = 13
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
p.summary = """
Paulo Coelho's masterpiece tells the mystical story of Santiago, an Andalusian shepherd boy who yearns to travel in search of a worldly treasure. His quest will lead him to riches far different—and far more satisfying—than he ever imagined. Santiago's journey teaches us about the essential wisdom of listening to our hearts, of recognizing opportunity and learning to read the omens strewn along life's path, and, most importantly, to follow our dreams.
"""
p.body = """
Paulo Coelho's masterpiece has won over 115 international awards and sold over 150 million copies. I found the story of the shepherd's search for his personal legend to be an inspiring call to pursue your passions instead of following the path of least resistance.
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
p.summary = """
The Samick Sage is the most bow for your buck! Everything you need in a bow at an unbelievable price. The 62\" AMO length allows for stable, smooth shooting for almost any draw length. The no-tools takedown is one of the easiest to use methods on the market, and allows for easy exchange of Sage limbs for different draw weights. The Sage recurve is a great beginners bow or even as a back up bow for those traveling to hunt big game.
"""
p.body = """
Samick is a Korean company which manufactures a variety of bows for sport and competition. The Samick Sage is an excellent entry-level recurve bow for any beginner who is interested in archery as a hobby.

It's a takedown recurve, which means that the limbs of the bow can be removed for easier transportation or replaced if damaged or when you're ready for a more powerful bow. Reinforced limb tips mean that it's capable of using strings made of FastFlight and other modern materials.

Archery uses a specific set of back muscles, and it's common for beginners to attempt to use bows with draw weights that are too high. A good thing to remember is that Olympic archers shoot 50# bows, and it is perfectly respectible for a new archer to start with a bow in the 20#-30# range to learn good form.

The type of bow you choose (right or left) is determined by your dominant eye rather than your dominant hand. To determine your eye dominance, pick something far away and use both of your hands to form a ring around it. Slowly bring your hands toward your face. Which ever eye you bring your hands toward is your dominant eye.
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
p.summary = """
With the same great construction as the XT and Pro Hunters, the Expedition Hunter is a very popular shaft for the budget conscious bowhunter that still expects the ultimate in durability.
"""
p.body = """
Gold Tip Expedition Hunters are an economical choice for archers interested in using carbon arrows. Carbon is an extremely stiff and light material and offers a number of advantages when compared to other arrow types. It is more durable than wood so is capable of surviving strikes against harder objects and is lighter than aluminum which gives it superior speed and improved accuracy over long distances.

In terms of drawbacks, carbon arrows can develop small cracks if strke hard objects like rocks. If a cracked arrow is shot, it could break and potentially cause injury. Fortunately arrows can be easily checked for cracks by <a href='http://www.eastonarchery.com/warning-use'>flexing them</a>. In practice though it is an incredibly strong and reliable material to build arrows out of.

The 3555 arrows are suited for bows with draw weights from 35#-55#. 5575 arrows are suited for bows with draw weights from #55-#75, but you should use Gold Tip's spine weight chart to find the right shafts for you.
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

p = Post.find_or_initialize_by(
  :title=>"Guides | Beginner Archery Gear",
  :user=>User.first,
)
p.summary = """
This guide will walk you through all the gear you need to get started with archery as a hobby.
"""
p.body = """
Archery is a great hobby for men and women that gets you outdoors and teaches strength, focus, and consistency.  When I was just getting started I read a lot of book, guides, and, blogs, so I decided to collect some of the most useful information into one spot.  One of the most important things to learn as an archer is never to dry fire your bow, meaning to pull back the string and release it without shooting an arrow.  This can severely damage or destroy your bow since the energy that would have been used to shoot an arrow gets absorbed by the bow instead.  Bows that are dry fired often explode, and even those that don't may develop microscopic cracks that may not be immediately visible but will shortens theirs lives significantly.  It's important to keep this in mind when buying a used bow or a bow online.  With that warning out of the way, here we go!

Bows

As a beginning archer, your first decision will be what kind of bow you want to shoot: Traditional, Compound, or Olympic.

Traditional
Traditional bows are what most people think of when they imagine archery. Traditional bows are usually made of dense flexible woods like ash or maple, although many modern bows also use fiberglass for strength and safety.  There are many types of traditional bow from cultures around the world, but the bows that you are most likely to see on the range are the longbow and the recurve bow.  Longbows are the more primitive of the two and are usually over 62\" long and form a C shape when strung.  They get most of their strength from their length, and are usually quieter than recurves because the strings don't touch the bow when shot.  Recurve bows have an extra curve toward their tips where the string touches the limbs of the bow.  This shape act like a lever which allow the same power to be generated in a shorter bow.  The tradeoff for this mechanical advantage is that recurve bows are slightly louder than longbows since the string touches the limbs when fired.  This can be mitigated by string silencers, which quiet the string by reducing the speed that they hits the limbs at.  Longbows and recurve bows can be found made as takedown bows, which means that the limbs can be removed from the riser for easier transportation and storage.  Modern manufacturing techniques have minimized these differences, and you should pick whatever bow you like the most.  My first bow was the Martin Mamba and to is one of my favorite bows to shoot to this day.  While exception shooters can be accurate at longer distances, most traditional hunters not using sights or stabilizers should try to limit their shots to 20 to 30 yards.

Compound
Compound bows are the height of modern bow technology and use a system of cables and pulleys (called cams) to produce a more powerful bow.  Compound bows can be as short as 30\" and easily shoot arrows at over 300 feet/sec, whereas even the most powerful traditional bows rarely exceed these speeds.  With traditional bows, the further back you draw the string the more weight you are pulling, so if you are shooting a 40# bow you are holding 40# at full draw.  With a compound you start by pulling the full weight of the bow, but partway through the cams kick in and the bow becomes easier to pull.  This is called letoff, and the decrease in draw weight can be as much as 75-80%.  This means that at full draw a 70# compound bow will feel like 14#, which makes aiming at a target much easier.  These advantages make compound bows a favorite for bowhunters, who often spend hours hiding in trees or blinds waiting for the perfect shot.  Compound bow shooters often utilize sights and stabilizers, and setting up a compound bow can be significantly more expensive than a traditional to buy and maintain.  Skilled hunters using compound bows can make accurate shots as far as 60 yards.  There are several styles of cams for compound bows (single, twin, binary, hybrid) with various strengths and weaknesses.  Single cams were the earliest type and are usually the least expensive and most reliable.  Dual cams generate power with both cams, but require more maintenance to keep the cams synchronized.  Hybrid cams utilize a control and a power cam to combine the best of both worlds without requiring synchronization like twin cams.  Binary cams connect the cams directly to one another so they rotate together to get the advantages of twin cams without the timing issues, although they can be more expensive than other options.

Olympic
Olympic bows sit somewhere between traditional and compound bows.  They are often made of advanced materials like carbon fiber and are as long as 66\" to increase stability.  Olympic shooters also utilize tools like stabilizers, sights, and clickers (ensures consistent draw length) to ensure to maximize accuracy.  Olympic bows are generally unsuitable for hunting because their large size, weight, and stabilizers make them impractical to maneuver in wooded environments.  Olympic archers also shoot at extreme distances as far as 70 to 90 yards, and use correspondingly light arrows which also are not well suited for taking game.

Arrows

Once you've picked your style of bow, your next decision as an archer will be what kind of arrows you shoot.  You can find premade arrows online, but longer term you'll get better results by making your own arrows with a fletching jig, which is actually pretty easy.  While modern arrows sometimes combine multiple materials, the most common materials for arrows are wood, aluminum, carbon, and fiberglass.  Arrow weight is measured in grains, and most bows have a minimum grain weight of arrow they have to shoot to avoid damaging the bow, so make sure to keep this in mind when choosing your arrows.

Wood
There are many woods that are suitable for arrows, but one of the most popular for its strength and price is Port Orford Cedar.  Cedar arrows tend to be heavier than aluminum or carbon and come in standard widths like 5/16\", 11/23\", and 23/63\" so make sure your nocks and points match.  Bamboo is another natural material that is popular among traditional archers since it is lighter and stronger than cedar.  Both of these materials are less durable than carbon or aluminum, and many archers to shoot them long term find it more economical to make their own arrows.  Wood arrows should never be shot from a compound bow, as the way their apply force will cause the arrow to explode and also damage the bow.

Carbon
Carbon fiber has gained a reputation as a strong and lightweight material, and those characterstics extend to their use in arrows.  Carbon arrows are both lighter and faster than any natural material, and are a popular choice for compound shooters since the faster the arrow the less it's impacted by gravity.  That means that for longer shots are easier since you don't have to compensate as much for gravity, which also helps when you're shooting at unmarked distances.  Carbon arrow are incredibly strong and can ofter survive impacts with metal, wood, or rocks that would destroy wooden arrows, but if this happens it's important to check your arrow for cracks and perform a flex test.  Take the arrow and flex it, listening for a crackling sound that sounds like fiber rubbing together.  If a carbon arrow with a crack is fired, it could potentially break and injure the shooter.  This is an even bigger danger for compound bows since their aggressive acceleration puts arrows under greater stress than a traditional bows.  Carbon arrows usually have inserts which allow you to switch out your points, allowing the same arrows to be used for target shooting or hunting.  Nocks can also be easily pulled out and replaced if damaged.  Unlike wooden or aluminum arrows, carbon arrows are stiff so never need to be straightened.  Most Olympic archers use carbon arrows.

Aluminum
Aluminum arrows have many of the same advantages as carbon arrows and were the preferred choice of Olympic archers before carbon arrows were invented.  They are more durable that wooden arrows and use inserts that allow the tips to be swapped.  Aluminum arrows that hit hard surfaces don't crack so won't explode, but they will sometimes bend which will require the arrow to be straightened.  Aluminum arrows are heavier, which makes judging distance more important, but their increased mass also helps in penetration relative to diameter which can be beneficial for hunters, although aluminum arrow also tend to be thicker than carbon arrows.  Many youth arrows are made of aluminum.

Fiberglass
Fiberglass arrows are only really used for low poundage beginner bows.  They are inexpensive and virtually indestructible, which can make them a good choice for younger archers.

After you've chosen your arrow material you'll need to match the spine of the arrow to the bow.  I found this to be really intimidating when I first started out, but it's really not that bad.  Let's get started.

The spine of an arrow is the amount that it flexes when shot.  If you imagine taking a think piece of wood like a skewer and pushing on both ends, the wood will bend and then spring back into shape when you let go.  The same thing happens with an arrow when it's shot from a bow.  There's an ideal amount of flexibility in order for the arrow to be pointing straight after it's done flexing.  If the arrow is too stiff (overspined), the arrow won't bend enough to get and it will end up striking the target to the left.  If the arrow isn't stiff enough (underspined), then the arrow will flex too much and you'll end up missing to the right.  The earliest bows didn't have a shelf, so the spine was even more important because the arrow needed to flex arond the bow in order to shoot straight.  Modern recurves often have a shelf that is cut to center or past it, which means that the arrow doesn't have to bend around the riser anymore.  This allows the bows to shoot a slightly wider range of spines, although you still want to match the two as closely as possible for the most accuracy.

If you're going the traditional route, 3RiversArchery offers a convenient <a href='http://www.3riversarchery.com/dynamic-spine-arrow-calculator-from-3rivers-archery.html'>dynamic spine calculator</a>.  All you need to do is enter in your bow, arrow, and physical measurements and it will tell you whether your arrows are the right spine.  If you are shooting a compound bow, every major manufacturer (Easton, Gold Tip, Carbon Express, etc) has an arrow chart you can reference to determine the kind of shafts that match your bow, although more hand tuning will be required.

Fletching
Traditional archers tend to shoot their arrows off the shelf, but compound and Olympic archers almost always use a device called a rest.  A rest holds up the arrow and minimizes contact between the arrow and the bow, improving accuracy.  If you are planning to shoot off the shelf, you should always use feathers to fletch your arrow with feathers since they will bend out of the way.  Plastic vanes can be more durable, but require a rest otherwise they will deflect the arrow and ruin your shot if they touch the riser.

Releasess

The last thing you'll need to choose is your release.  If you're shooting traditional or Olympic archery, you will probably be shooting using your fingers, which means that you will be using either a shooting glove or a tab.  Tabs tend to be thicker, more durable, and ensure more consistent pressure across your fingers.  Gloves allow you to feel the string more.  The difference between the two comes mostly down to personal preference.  I shoot with a glove, but a good friend of mine shoots with a tab.  Asian style bows are shot with a thumb ring, although this is far less common.  If you are shooting a compound, the short length of the bow makes it difficult to shoot with your fingers since the string makes a sharper angle at full draw which can pinch your fingers.  Compound bow shooters tend to use mechanical releases, which are devices that hold onto the string and let go when a button or trigger is pushed.  These can come in hook or caliper styles and are also a matter of personal preference.

Arm Guard
Arms guards/bracers are technically not necessary if you have perfect form, but I would highly recommend them for a beginner archer.  If your form is even slightly off can end up hitting the forearm of your bow hand with the string when you shoot, leaving large and painful bruises.  I definitely happened to me.

Congratulations!  You now know everything you need to begin looking for your perfect bow and arrow.
"""
p.tag_list.add("gear", "guides", "archery")
p.active = true
p.save
# p.photos.find_or_create_by(
#   :name=>"",
#   :internal_url=>""
# )
p.save

Post.all.each do |x|
  if (not x.body or x.body.length == 0) or (not x.summary or x.summary.length == 0)
    x.active = false
    x.save
  end
end