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
There\'s nothing holding you back, it\'s just you and the Evo Pure working together. This road running shoe will let your feet perform, as if they were barefoot. They\'re stripped back to ensure it\'s your feet that are in control.
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

p = Post.find_or_initialize_by(
  :title=>"DeWalt DWS709 Slide Compound Miter Saw",
)
p.summary = '''
The DEWALT DWS709 12" Slide Compound Miter Saw features a powerful 15 Amp, 3,800 rpm motor that delivers extended power and durability. It has tall sliding fences that support crown molding up to 5-1/2" nested and base molding up to 4-1/2" vertically against the fence, while easily sliding out of the way for bevel cuts. An exclusive back fence design cuts up to 2x14 dimensional lumber at 90 degrees, and 2x10 at 45 degrees. This saw offers an adjustable stainless steel miter detent plate with 13 positive stops which improves productivity and ensures cutting accuracy. Miters 60 degrees to the right and 50 degrees to the left providing increased capacity. The oversized bevel scale makes bevel angle adjustments accurate and easy. This saw also features a compact, lightweight design (51 lbs.) that allows for easy transport and storage. It has dual horizontal steel rails with linear ball bearings that deliver an accurate, durable and compact saw. The precise miter system and machined base fence support optimize it\'s durability and cutting accuracy. Includes: Carbide Blade, Blade Wrench, Dust Bag, Users Guide, Material Clamp.
'''
p.body = '''
A DeWalt DWS709 Miter Saw makes cutting angled boards even faster, easier, and safer than a circular saw.  My buddy and I built a <a href="http://www.ana-white.com/2013/05/plans/husky-farmhouse-table">Farmhouse Table</a> over the course of a Saturday using only this saw.  A great purchase for your home workshop.
'''
p.asin = "B00S4OQ9A4"
p.cost = 399
p.tag_list.add(TagType::TOOLS, TagType::DIY)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"dewalt_dws709_miter_saw.jpg"
)
p.posted_at = "2016-01-07"
p.save

p = Post.find_or_initialize_by(
  :title=>"Coronado French Style Easel",
)
p.summary = '''
The Coronado is the perfect easel for painting at home or on the go! It is great for small apartments or large studios. You will enjoy the many uses this great easel provides due to it\'s compact size.

The Coronado Sketch Box is a fully adjustable field easel and storage unit all in one!

Made of hand-sanded beech wood and finished with brass hardware and a durable leather handle.

It features a 12" Wide sliding drawer with divided compartments, a 11" x 18" removable wooden palette, adjustable shoulder strap.

Fully extendable to 71" - It is small enough to store in a closet, yet large enough to hold a 34" canvas.

It has brass hooks that allow for the transport of wet canvas

Fully adjustable easel orientation
'''
p.body = '''
Paint in the glory of the great outdoors!  An easel makes it much easier to bring your paints outside or to location for landscapes.  I used one of these for oil painting in college and was impressed by the solid construction and ease of use.
'''
p.asin = "B00EUJK8PO"
p.cost = 90
p.tag_list.add(TagType::GEAR, TagType::ART)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"coronado_french_style_easel.jpg"
)
p.posted_at = "2016-01-07"
p.save

p = Post.find_or_initialize_by(
  :title=>"RedWing Heritage Blacksmith Boot",
)
p.summary = '''
Famous for its clean lines, simple construction and classic round toe styling, a Nitrile Cork outsole, triple stitched quality and Goodyear welt construction.

For almost a century, Red Wing Shoes has been producing top-quality work boots and shoes. It started with a corner store in the quiet river town of Red Wing, Minn. Today, Red Wing Shoes produces thousands of handmade shoes every day, making their legendary quality available worldwide. A true American success story, Red Wing Shoes provided footwear for the U.S. Military in both World Wars. Norman Rockwell created artwork for the company during the 1960s. And in the new global economy, Red Wing Shoes continues to evolve to meet the needs of a new generation, with more than 150 styles perfect for work or play. Red Wing Shoes is legendary for producing tough, durable footwear that can handle any challenge. Their shoes and boots are created with four principles in mind: quality, durability, comfort, and craftsmanship. Each is given a hand inspection before being sent out the door, to ensure that it meets Red Wing Shoes\' exacting standards. And the quality of their footwear is guaranteed. So look to Red Wing Shoes first for footwear that lasts.
'''
p.body = '''
American soldiers in WWI wore Red Wing boots, which are legendary for their solid leather construction.  While there\'s a premium for quality American construction, these are boots that will last a lifetime and can be resoled when they start to wear out.  I\'ve worn mine regularly for the last 5 years and they\'ve kept my feet warm and dry even on rainy days at the archery range.  With a bit of Obenauf\'s leather polish they\'ve only improved with age.
'''
p.asin = "B00BTPU98S"
p.cost = 300
p.tag_list.add(TagType::GEAR, TagType::OUTDOORS)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"redwing_heritage_blacksmith_boot.jpg"
)
p.posted_at = "2016-01-07"
p.save

p = Post.find_or_initialize_by(
  :title=>"RedWing Heritage Blacksmith Boot",
)
p.summary = '''
Famous for its clean lines, simple construction and classic round toe styling, a Nitrile Cork outsole, triple stitched quality and Goodyear welt construction.

For almost a century, Red Wing Shoes has been producing top-quality work boots and shoes. It started with a corner store in the quiet river town of Red Wing, Minn. Today, Red Wing Shoes produces thousands of handmade shoes every day, making their legendary quality available worldwide. A true American success story, Red Wing Shoes provided footwear for the U.S. Military in both World Wars. Norman Rockwell created artwork for the company during the 1960s. And in the new global economy, Red Wing Shoes continues to evolve to meet the needs of a new generation, with more than 150 styles perfect for work or play. Red Wing Shoes is legendary for producing tough, durable footwear that can handle any challenge. Their shoes and boots are created with four principles in mind: quality, durability, comfort, and craftsmanship. Each is given a hand inspection before being sent out the door, to ensure that it meets Red Wing Shoes\' exacting standards. And the quality of their footwear is guaranteed. So look to Red Wing Shoes first for footwear that lasts.
'''
p.body = '''
American soldiers in WWI wore Red Wing boots, which are legendary for their solid leather construction.  While there\'s a premium for quality American construction, these are boots that will last a lifetime and can be resoled when they start to wear out.  I\'ve worn mine regularly for the last 5 years and they\'ve kept my feet warm and dry even on rainy days at the archery range.  With a bit of Obenauf\'s leather polish they\'ve only improved with age.
'''
p.asin = "B00BTPU98S"
p.cost = 300
p.tag_list.add(TagType::GEAR, TagType::OUTDOORS)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"redwing_heritage_blacksmith_boot.jpg"
)
p.posted_at = "2016-01-07"
p.save

p = Post.find_or_initialize_by(
  :title=>"Blink: The Power of Thinking Without Thinking",
)
p.summary = '''
In his landmark bestseller The Tipping Point, Malcolm Gladwell redefined how we understand the world around us. Now, in Blink, he revolutionizes the way we understand the world within. 

Blink is a book about how we think without thinking, about choices that seem to be made in an instant-in the blink of an eye-that actually aren\'t as simple as they seem. Why are some people brilliant decision makers, while others are consistently inept? Why do some people follow their instincts and win, while others end up stumbling into error? How do our brains really work-in the office, in the classroom, in the kitchen, and in the bedroom? And why are the best decisions often those that are impossible to explain to others?
'''
p.body = '''
I\'m a big fan of Malcom Glawell and his books do a great job of revealing the hidden complexity of everyday things.  Blink deals with split second decisions, and how the subconscious can allow experts to detect counterfeits that even laboratories can\'t and also expose our deepest prejudices.
'''
p.asin = "0316010669"
p.cost = 10
p.tag_list.add(TagType::BOOKS)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"blink.jpg"
)
p.posted_at = "2016-01-07"
p.save




