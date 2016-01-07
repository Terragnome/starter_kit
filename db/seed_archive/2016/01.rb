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

p = Post.find_or_initialize_by(
  :title=>"Vivobarefoot Men's EVO Pure Running Shoe",
)
p.summary = '''
There\'s nothing holding you back, it\'s just you and the Evo Pure working together. This road running shoe will let your feet perform, as if they were barefoot. They\'re stripped back to ensure it�s your feet that are in control.
'''
p.body = '''
I believe strongly in the benefits of minimalist, neutral ride running shoes and have covered well over 5,000 miles in my Vivobarefoot EVO Pures and Vibram Fivefingers.  There\'s nothing magical about minimalist shoes and wearing them won\'t instantly make you a better runner, but they will teach you proper form which will protect you from injuries in long term.  Shoes like the Vivoebarefoot EVO Pure discourage heel striking (because it hurts), and promote a healthier mid to forefoot strike which is healthier on your joints which are not protected by padding of conventional shoes.  The one caveat is that minimalist shoes like these are better for paved streets than trails since the thin soles mean you definitely feel it if you step on a rock.
'''
p.asin = "B00XD51L66"
p.cost = 95
p.tag_list.add(TagType::GEAR, TagType::RUNNING, TagType::FITNESS, TagType::OUTDOORS)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"vivobarefoot_evo_pure.jpg"
)
p.posted_at = "2016-01-06"
p.save

p = Post.find_or_initialize_by(
  :title=>"Iron Gym Upper Body Workout",
)
p.summary = '''
The highly engineered yet lightweight, pro-quality steel IRON GYM™ exercise bar is instantly attached to any standard door frame at home or in a hotel room when on vacation. By utilizing your own body’s resistance across a number of possible exercises it works with you to strengthen and tone your arms, chest, back, shoulders and abs.

When you’ve finished your workout, it takes just seconds to simply detach IRON GYM™ and pack it away until your next session.
'''
p.body = '''
The Iron Gym Upper Body Workout pullup bar allows you to safetly and comfortably do pullups at home.  Whereas many other bars rely on friction to keep them attached to a doorway, the Iron Gym utilizes its own rotation to keep it in place without damaging your doorframe.  It\'s a great way to get a quick upper body workout at a low price.
'''
p.asin = "B001EJMS6K"
p.cost = 23
p.tag_list.add(TagType::GEAR, TagType::FITNESS)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"iron_gym_pullup_bar.jpg"
)
p.posted_at = "2016-01-06"
p.save

p = Post.find_or_initialize_by(
  :title=>"Obenauf's LP Boot Preservative",
)
p.summary = '''
With regular use, boots last noticeably longer and stay comfortable even in extreme conditions.  This preservative is made in the US, and proven excellent quality since 1986.  Great for boots, car leather interior, or really any leather product!  Obenauf\'s Heavy-duty LP preservative is a blend of leather oils that gradually seep into the leather lubricating it continuously.
'''
p.body = '''
Protect your leather shoes from water, dirt, and grime withe Obenauf\'s LP Boot Preservative.  It\'s super effective and has a strangely pleasant cinnamon you wouldn\'t expect from a product that does such a good job.
'''
p.asin = "B0002X520S"
p.cost = 18
p.tag_list.add(TagType::GEAR, TagType::OUTDOORS)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"obenaufs_leather_preservative.jpg"
)
p.posted_at = "2016-01-06"
p.save


