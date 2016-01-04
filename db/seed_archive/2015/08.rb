p = Post.find_or_initialize_by(
  :title=>"Glencairn Whiskey Tasting Glass",
)
p.summary = """Savor whisky in glasses fit for royalty! After winning the 2006 Queen's Award for Innovation the Glencairn whisky glass has earned its place on the bar. Considered the 'official whisky glass' by the experts Glencairn offers aficionados of Scotch whisky a special vessel to appreciate its nuances. Comfortable in the hand it has a full bowl that tapers at the rim to enhance color body aroma taste and finish. Machine made from fine lead-free crystal by Glencairn Crystal in Europe. Dishwasher safe. Size: 4-1/2'H 6 oz."""
p.body = """
The Glencairn Whiskey Tasting Glass was designed by Raymond Davidson of Glencairn Crystal in Scotland and came into production in 2001.

Its pear shaped design is based on the nosing copitas used in whiskey laboratories all over the world and was made with the help of master blenders from the largest whiskey makers in Scotland.

While the snifter is a popular vessel, the curves shape of the Glencairn Whiskey Tasting Glass concentrates the aroma of the whiskey while minimizing evaporation, and it's fun to have a special glass to use when cracking open a Glenfarclas 25 or Taketsuru 21.
"""
p.asin = "B003TMCNI8"
p.cost = 12
p.tag_list.add(TagType::GEAR, TagType::MIXOLOGY)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"glencairn_whiskey_glass.jpg"
)
p.posted_at = "2015-08-01"
p.save

p = Post.find_or_initialize_by(
  :title=>"Lodge Cast Iron Skillet",
)
p.summary = """The Lodge Cast Iron 8-inch Skillet and Red Mini Silicone Hot Handle Holder is a multi-functional cookware that works wonders with slow-cooking recipes and all your favorite foods. This pre-seasoned Skillet works like a charm right out of the box. Pancakes, eggs, and bacon somehow taste extra hearty when cooked in a heavy cast-iron skillet. Cast iron creates superior heat retention, heats evenly, and loves a campfire, unlike flimsier pans. Fry up a mess of catfish, roast chicken, or bake an apple crisp in this 8-inch pan that features a sturdy handle for heavy lifting, and two subtle side lips for pouring. While the skillet comes pre-seasoned to prevent food from sticking, it works best when sprayed or lightly coated with vegetable oil before use. The Lodge seasoning procedure is a multiple-step process in which the seasoning oil is applied via an electrostatic spray system that coats the cookware, then it's baked in commercial ovens at very high temperatures. This allows the oil to penetrate deeply into the pores of the iron."""
p.body = """
Cast iron is impossible to beat for heat retention, and Lodge has been making them since 1896. The Lodge Cast Iron Skillet is the perfect tool for recipes that start on the stove and end up in the oven, and is my weapon of choice for a ribeye steak.

Cast iron is the original non-stick surface since its high specific heat allows it to maintain high temperatures that vaporize liquids on contact, preventing them from sticking. The Lodge Cast Iron Skillet is preseasoned, but in the event it's damaged it can be reapplied simply by wiping down with oil and baking upside down at high temperatures.

Cast iron does rust if left in contact with water, but can be cleaned by scrubbing down with salt and wiping clean with oil.
"""
p.asin = "B00008GKDG"
p.cost = 33
p.tag_list.add(TagType::GEAR, TagType::FOOD, TagType::COOKING)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"lodge_cast_iron_skillet.jpg"
)
p.posted_at = "2015-08-08"
p.save

p = Post.find_or_initialize_by(
  :title=>"Microplane Classic Zester/Grater",
)
p.summary = """Classic Zester Grater. Black. Blade made of surgical grade stainless steel. Plastic handle. Originally a woodworking tool, this best seller grates even the hardest Parmesan Reggiano as well as other hard cheeses into fine lacy wisps. Ideal for topping your favorite spaghetti and meatballs or a Caesar salad. Its also wonderful for. effortless citrus zesting to add natural flavors to a lemon crème brulee or a basic vinaigrette."""
p.body = """
Want to impress the love of your life? Try grating an orange and 2-3 lemons worth of zest into your favorite waffle or pancake recipe with the Microplane Classic Zester/Grater for some serious brownie points.

The Microplane is solidly build with a rubber handle and plastic sheath that prevents the tines from getting caught. Since receiving one for Christmas a few years back this has been one of my favorite tools for adding some zest to everyday dishes.
"""
p.asin = "B00004S7V8"
p.cost = 11
p.tag_list.add(TagType::GEAR, TagType::FOOD, TagType::COOKING)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"microplane_classic_zester.jpg"
)
p.posted_at = "2015-08-15"
p.save

p = Post.find_or_initialize_by(
  :title=>"Pandemic",
)
p.summary = """Four diseases have broken out in the world and it is up to a team of specialists in various fields to find cures for these diseases before mankind is wiped out. Players must work together playing to their characters' strengths and planning their strategy of eradication before the diseases overwhelm the world with ever-increasing outbreaks. For example the Operation Specialist can build research stations which are needed to find cures for the diseases. The Scientist needs only 4 cards of a particular disease to cure it instead of the normal 5. But the diseases are out breaking fast and time is running out: the team must try to stem the tide of infection in diseased areas while also towards cures. A truly cooperative game where you all win or you all lose."""
p.body = """
Pandemic is a great alternative for traditional boardgames since it's cooperative.  Everyone is on the same team trying to prevent the spread of global disease and each role is different and important, so it really forces some fun strategization.  Great for game nights when you want to want to stay friends with the people you play with (unlike Settlers of Catan).
"""
p.asin = "B00A2HD40E"
p.cost = 26
p.tag_list.add(TagType::BOARDGAMES, TagType::TOYS)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"pandemic.jpg"
)
p.posted_at = "2015-08-22"
p.save

p = Post.find_or_initialize_by(
  :title=>"EatSmart Precision Pro Digital Kitchen Scale",
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
p.asin = "B001N07KUE"
p.cost = 15
p.tag_list.add(TagType::GEAR, TagType::FOOD, TagType::COOKING, TagType::BAKING)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"eatsmart_precision_pro_scale.jpg"
)
p.posted_at = "2015-08-29"
p.save