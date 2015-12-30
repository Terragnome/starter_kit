p = Post.find_or_initialize_by(
  :title=>"Twist 2-in-1 Silicone Whisk",
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
p.tag_list.add(TagType::GEAR, TagType::FOOD, TagType::COOKING, TagType::BAKING)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"twist_silicon_whisk.jpeg"
)
p.posted_at = "2015-09-01"
p.save

p = Post.find_or_initialize_by(
  :title=>"Velesco Silicone Baking Mat",
)
p.summary = """Instead of lubricating your baking sheet with oil & fat, make it nonstick with Velesco Silicone Baking Mat!

Not only does it eliminate potentially dangerous elements from your diet, but it also makes your life a bit easier and more enjoyable. Because once you finish baking, all you need to do is to rinse the mat in warm soapy water, roll it up & store.

And most of the time, you don't even have to wash your sheet."""
p.body = """
I always feel a bit guilty about using parchment paper once and throwing it away immediately after, but with the Velesco Silicone Baking Mat you get almost all the benefits of parchment paper but are able to reuse it.  It also prevents you from needing to smear butter or oil over your cookware which can get messy.

Highly recommended for anyone who loves to bake, with the caveat that silicone is usually only rated to withstand temperatures of 425F, so don't try to use this for super high temperature recipes like pizzas.
"""
p.url = "http://amzn.to/1Moykhs"
p.cost = 20
p.tag_list.add(TagType::GEAR, TagType::FOOD, TagType::BAKING)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"velesco_silicon_bake_mat.jpg"
)
p.posted_at = "2015-09-08"
p.save

p = Post.find_or_initialize_by(
  :title=>"Pyrex 2-Cup Glass Measuring Cup",
)
p.summary = """Add a measure of consistency to your kitchen with the Pyrex 2-Cup Measuring Cup that is sturdy and easy-to-read. Measurement indicators and the easy to grab handle are designed to make it easy to mix, measure and pour. Whether you are preparing a multi-course meal or simply a snack for one, Pyrex offers products which make food preparation a little easier, from beginning to end. There's no substitute for Pyrex, the original glass bakeware. Introduced 90 years ago and made of a durable, high temperature material, Pyrex remains the ideal medium for safe, dependable food preparation. Use and care: Avoid sudden temperature changes. No stovetop or broiler use. Do not overheat oil or butter. Microwave and dishwasher safe."""
p.body = """
Pyrex liquid measuring cups are microwave and dishwasher safe and make measuring and pouring out liquids a lot more convenient because they have a spout and clearly maked lines.  I will sometimes use the same measuring cup to do all the liquids for a recipe like a cake since you can use the lines to pour a half cup of honey onto a cup of oil.  I've used the same measuring cup for years without any signs of wear so they're very durable.
"""
p.url = "http://amzn.to/1Moympu"
p.cost = 8
p.tag_list.add(TagType::GEAR, TagType::FOOD, TagType::COOKING, TagType::BAKING)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"pyrex_2_cup_glass.jpg"
)
p.posted_at = "2015-09-15"
p.save

p = Post.find_or_initialize_by(
  :title=>"Bang!",
)
p.summary = """When a man with a pistol meets a man with a Winchester, you might say that the one with the pistol is a dead man, unless his pistol is a Volcanic, In the wild west, the Outlaws hunt the Sheriff, the Sheriff hunts the Outlaws, and the Renegade plots in secret, ready to join one side or the other. Before long, bullets start to fly, Which gunmen are Deputies, ready to sacrifice themselves for the Sheriff? And which are the merciless Outlaws, looking to gun him down? The world's best-selling wild west card game is back in a new, richer format. Easier to learn and play than ever before, Game Contents: 7 Role Cards (1 Sheriff, 2 Deputies, 3 Outlaws, 1 Renegade), 16 Characters, 80 Playing Cards, 7 Summary Cards, 7 Player Board, 30 Bullet Tokens, Rulebook in Full Color."""
p.body = """
Bang! is like Magic the Gathering combined with Mafia.  It's a great game because the randomization of hidden roles and character cards make it unique everytime.  It's best suited for around 4 players, and is easy enough to learn that people usually get the hang of it by the end of the first game.  Good for casual boardgame players.
"""
p.url = "http://amzn.to/1kzaDrY"
p.cost = 17
p.tag_list.add(TagType::TOYS, TagType::BOARDGAMES)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"bang.jpg"
)
p.posted_at = "2015-09-22"
p.save

p = Post.find_or_initialize_by(
  :title=>"Bohning Tex-Tite Bow String Wax",
)
p.summary = """Bohning's Tex-Tite Bow String Wax is a natural based wax designed especially for synthetic fiber bowstrings. This wax will lubricate and lengthen the life of your string. Tex-Tite will remain tack under all weather conditions!"""
p.body = """
These days pretty much all bowstrings are made of synthetic fibers like Dacron or FastFlight.  In order to protect the string from abrasive substances like dirt and dust and to extend the lifetime of the browstring, you should make sure to wax your bow string regularly.  Bohning Tex-Tite is a great buy because it is a soft wax, so when you're working it into your bowstring it doesn't require and much rubbing to get it into the fibers, which helps with string stretching.  There is also a silicone version that comes in green, although I haven't tried it personally yet.
"""
p.url = "http://amzn.to/1OlXLTC"
p.cost = 4
p.tag_list.add(TagType::GEAR, TagType::ARCHERY)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"bohning_textite_bowstring_wax.jpg"
)
p.posted_at = "2015-09-29"
p.save