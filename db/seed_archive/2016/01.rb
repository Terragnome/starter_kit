p = Post.find_or_initialize_by(
  :title=>"Emile Henry Flame Top Pizza Stone",
)
p.summary = '''
For five generations, Emile Henry has been making bakeware, cookware and tableware in Marcigny, France. True to tradition, all Emile Henry pieces are carefully hand-crafted from Burgundy clay which is found naturally in the region. The mineral-rich clay is combined with 100-percent natural ingredients to create Flame Top, an innovative line of ceramic cookware that is lightweight, versatile, and unsurpassed for even heat distribution. The Emile Henry Pizza Stone features the superior heat properties of Burgundy clay with Flame Top technology turning your grill into an outdoor pizza oven. This pizza stone is designed to be used on grills; gas, charcoal and natural wood; in ovens; conventional and convection; can also be used under the broiler over an open flame. The stone heats very quickly and evenly, can withstand high temperatures and is resistant to mechanical or thermal shock. The Emile Henry Pizza stone is lighter than other stones and has integrated handles for easy transportation. A unique micro-crazed glazing makes a crispy, well-baked crust and is stain resistant. It will not become sticky or stained over time and you can cut directly on the stone without cutting or scratching the surface. Clean up is easy with soap and water and unlike non-glazed stones-it is also dishwasher safe. The stone can also be used as a grilling platter and is ideal for baking breads. Microwave, broiler, convection and conventional oven safe is has a 2 year warranty against manufacturing defects.
'''
p.body = '''
A pizza stone is an essential piece of equipment for all baking enthusiasts.  Pizza stones function by adding thermal mass to the oven, which produces more consistent temperature since more heat is stored in the oven.  This produces a crispier pizza crust.  I keep my pizza stone at the floor of my oven at all times, with the exception of when I actually make pizza when I move it to the top rack and hit the broiler.  Happy baking!
'''
p.asin = "B003UI8B2S"
p.cost = 46
p.tag_list.add(TagType::GEAR, TagType::FOOD, TagType::BAKING, TagType::COOKING)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"emile_henry_pizza_stone.jpg"
)
p.posted_at = "2016-01-01"
p.save

p = Post.find_or_initialize_by(
  :title=>"Culiri Pizza Cutter",
)
p.summary = '''
The Culiri Pizza Rocker Cutter with Natural Wooden Handle is made especially for home made cooks like you. At only 10 ounces - it is easily managed by anyone! You do not have to be a big burly "Pizza Man" to make easy slices.
You no longer need one of those clumsy, heavy and bulky heavy professional grade pizza wheels to slice your small pie. In one easy motion, with one rocking cut, your pizza can be sliced smooth and straight. Your muscles will thank you for saving them the strain of manually slicing through thick crust with a small heavy wheel.
'''
p.body = '''
Why use a tiny spinning pizza cutter when you can use a massive pizza guillotine?!

Unlike spinning cutters, rocker style cutters have no breakable moving parts and their huge size means they cleave through pizzas like an axe in the hands of a barbarian warlord.  Keep on rockin\'!
'''
p.asin = "B018F7GBW0"
p.cost = 10
p.tag_list.add(TagType::GEAR, TagType::FOOD, TagType::BAKING)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"culiri_pizza_cutter.jpg"
)
p.posted_at = "2016-01-01"
p.save

p = Post.find_or_initialize_by(
  :title=>"Sculpey Super Sculpturing Compound",
)
p.summary = '''
SCULPEY-Super Sculpey Polymer Clay. America\'s original oven-bake clay! Sculpey is soft and pliable; works and feels like ceramic clay but will not dry out when exposed to air. The semi-transparent ceramic-like appearance of this clay; once baked makes it perfect for exposed flesh parts of home-made dolls and figurines. Shape; bake and once cool can be sanded; drilled; carved; glued; inked; painted with water based acrylics or Sculpey Brand Glaze.
'''
p.body = '''
Super Sculpey is like regular sculpey only better!  Used is the same way as regular clay, but it doesn\'t dry in air and all you need is a regular oven instead of a kiln!  Once baked it becomes waterproof and extremely durable, so is the perfect material for crafts at home.  While it\'s non-toxic, it hasn\'t been evaluated for food safety, which means it\'s best not to use it for bowls or plates.
'''
p.asin = "B0026C1T8C"
p.cost = 11
p.tag_list.add(TagType::GEAR, TagType::ART)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"super_sculpey.jpg"
)
p.posted_at = "2016-01-04"
p.save