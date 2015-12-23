p = Post.find_or_initialize_by(
  :title=>"I'm Just Here for the Food: Version 2.0",
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
p.posted_at = "2015-07-01"
p.save

p = Post.find_or_initialize_by(
  :title=>"Plenty More",
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
p.posted_at = "2015-07-08"
p.save

p = Post.find_or_initialize_by(
  :title=>"Shun Classic 8-Inch Chef's Knife",
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
p.posted_at = "2015-07-15"
p.save

p = Post.find_or_initialize_by(
  :title=>"KitchenAid 5 Quart Stand Mixer",
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
p.posted_at = "2015-07-22"
p.save

p = Post.find_or_initialize_by(
  :title=>"Lego Star Wars Ewok Village",
)
p.summary = """Travel to Endor and visit the treetop home of the Ewoks. Just like in Star Wars: Episode VI Return of the Jedi, this recreation of the Ewoks' forest dwelling is packed with cool functions, including the tree-trunk hideout, secret Lightsaber stash, spider web, net traps, slide, catapults and an elevating throne. Use the rammer function to take out the Scout Trooper's speeder − just like in the movie! Realistic details include rope walkways, vine and leaf elements, kitchen, food storage area, bedroom and a planning room. The Ewok Village set is the perfect addition to your LEGO Star Wars collection. Includes R2-D2and 16 minifigures with weapons: Luke Skywalker, Princess Leia, Han Solo, Chewbacca, C-3PO, 2 Rebel soldiers, 5 Ewoks (including Wicket, Teebo, Chief Chirpa and Logray), 2 Scout Troopers and 2 Stormtroopers."""
p.body = """
The Lego Star Wars Ewok Village combines one of the most iconic toys in the world with one of the most iconic film franchises. The set itself includes a great set of minifigs, with characters like R2-D2, Luke Skywalker, Princess Leia, Han Solo, Chewbacca, C-3PO, Rebel soldiers, Ewoks, Scout Troopers and Stormtroopers.

At 1,990 pieces this is a huge set that towers at over 13\" high, and the organic shapes make this set a joy to build. Nets and traps allow you to act out some of your favorite scenes from d Episode VI. I found this to be an incredibly fun set to build. Highly recommended for any Lego fan.
"""
p.url = "http://amzn.to/1PsXY5q"
p.cost = 250
p.tag_list.add("gear", "lego", "toys", "fun")
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"lego_star_wars_ewok_village.jpg"
)
p.posted_at = "2015-07-29"
p.save