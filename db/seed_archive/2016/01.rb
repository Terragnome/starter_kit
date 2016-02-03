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
A DeWalt DWS709 Miter Saw makes cutting angled boards even faster, easier, and safer than a circular saw.  My buddy and I built a <a href="http://www.diypete.com/how-to-build-a-farmhouse-style-coffee-table/">Farmhouse Table</a> over the course of a Saturday using only this saw.  A great purchase for your home workshop.
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

p = Post.find_or_initialize_by(
  :title=>"Fermin Bone In Jamon Serrano",
)
p.summary = '''
Jamones Y Embutidos bring you a very special product from the medieval mountain town of La Alberca. This Jamón Serrano comes from animals that were born in the region of Salamanca in western Spain. They were raised humanely in the mountains, and spent much of their lives outdoors on Spanish pasture land. Jamón Serrano literally means \'mountain ham\' in Spanish and, of all the hams available in the U.S., these are the most authentic from this standpoint. Each ham is hung to dry in the cool, clean mountain air where it ages for 18 to 20 months. The curing process which results in the Fermín Jamón Serrano is completely traditional. The hams are cured in drying rooms with open screened windows, caressed by mountain air as it wafts through the area where the hams are hung. The result is a flavorful, dark red jamon with a complex flavor and a mild saltiness. Mount this ham in a special holder and it will be a centerpiece of any gathering. Serve this quality serrano to your guests and they will rave about its flavor - the flavor of the mountains of Spain
'''
p.body = '''
Jamón is a billion industry in Spain, and these jamóns have been traditionally dry-cured to deliciously preserve them for centuries.  This 16-18 lbs bone in jamon serrano makes an elegant and delicious centerpiece for your table.  Keep it away from heat and moisture and it\'ll keep for months.  For an extra treat, Jamón Iberico is twice the cost as Serrano but is made from which is made from Black Iberian pigs that put on more fat and are fed a diet of acorns.
'''
p.asin = "B0015QSGVI"
p.cost = 250
p.tag_list.add(TagType::FOOD)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"fermin_jamon_serrano.jpg"
)
p.posted_at = "2016-01-07"
p.save

p = Post.find_or_initialize_by(
  :title=>"Wusthof Classic 2 Piece 200 Anniversary Set",
)
p.summary = '''
The Wusthof classic 2 Piece Anniversary Set features a 9" cook\'s knife and a 3.5" paring knife. This incredible set is made from precision forged high-carbon steel using traditional methods and a 50 plus step process. Each knife has Wusthof\'s signature bolster/finger guard at the base of the blade to give the knives heft and a solid, balanced feel. The 200th anniversary set is distinguished by dark purplish-brown rosewood handles with triple brass rivets. The set comes in a gift box with care instructions, additional information and special oil for maintaining the blades. Made in Germany. Hand-washing recommended.
'''
p.body = '''
In all honesty other knives will probably cut just fine, but these knives are beautiful and I want them for no good reason.  Forged high carbon steel you\'d expect from a premium knife, with beautiful rosewood handles.  Comes with a 9 inch chef\'s and a 3.5", which is all you need for most tasks.
'''
p.asin = "B00ICSX5UO"
p.cost = 200
p.tag_list.add(TagType::GEAR, TagType::COOKING, TagType::FOOD)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"wusthof_200_anniversary.jpg"
)
p.posted_at = "2016-01-07"
p.save

p = Post.find_or_initialize_by(
  :title=>"Wusthof 10\" Honing Steel",
)
p.summary = '''
When that time comes that you need to touch up the sharp edge of your Wusthof knife the 10" steel is a good option. The Wusthof 10" inch steel can realign your knife edge quickly and easily. Honing steels are often confused as sharpeners. Your honing steel will realaign your knife edge but will not put a new edge on it. In trying to explain what a honing steel does try to imaging your sharpening steel and your toothbrush. It is a maintaince tool that you use everyday. In the case of your knife this would be maintaining the knifes edge. Now eventually you would need to see your dentist. That would be a sharpener. This would be a more detailed and agressive action and they would actually remove metal from the edge of the knife. Much like a dentist would do to your teeth. Now to maintain healthy teeth you brush everyday. To maintain a sharp knife you should steel your knife everyday. And remember only go to the Dentist(sharpener) once or twice a year.
'''
p.body = '''
Show your knives a little TLC.  While sharpening steels remove actual material from the blade, honing steels microscopically straighten and align the cutting edge of the blade to restore sharpness.  While Amazon calls this item a sharpening steel, this is really a honing steel and it\'s the one I use at home.  Quality knives should be honed everytime the are used, and a good strategy is to pretend you\'re trying to slicing a thing piece off of the steel with both sides of the knife.  I usually start with three swipes of the steel on each side, then two, then one.  The Wusthof honing steel has a nice big bolster to help protect your hands and is solidly constructed.  The bolster and handle are made from a dense composite material, so it won\'t damage your blade if you accidentally make contact.
'''
p.asin = "B00009WDT8"
p.cost = 25
p.tag_list.add(TagType::GEAR, TagType::COOKING, TagType::FOOD)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"wusthof_10_honing_steel.jpg"
)
p.posted_at = "2016-01-07"
p.save

p = Post.find_or_initialize_by(
  :title=>"Nixon Sentry SS Star Wars Watch",
)
p.summary = '''
Nixon takes their classic Sentry SS SW Watch to the Dark Side and back to bring you this epic Star Wars collaboration. It features a stainless steel case, a superlum seconds hand, and a custom brass dial embrossed with the Imperial logo.
'''
p.body = '''
Nixon\'s stylish Star Wars watches let you wear your nerdiness with pride.  The designs are subtle and benefit from Nixon\'s strong aesthetic and manufacturing standards.  Know the true power of the Dark Side.
'''
p.asin = "B013VNWAZU"
p.cost = 275
p.tag_list.add(TagType::GEAR, TagType::EDC)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"nixon_sentry_ss_star_wars.jpg"
)
p.posted_at = "2016-01-17"
p.save

p = Post.find_or_initialize_by(
  :title=>"Sphero BB-8 App-Enabled Droid",
)
p.summary = '''
Over the years, the magic of Star War has always lived on screen and in our imaginations. Thanks to our advancements in technology, we’ve made it possible to bring a new part of Star Wars: The Force Awaken into your home. 

Meet BB-8 - the app-enabled Droid that\'s as authentic as it is advanced. BB-8 has something unlike any other robot - an adaptive personality that changes as you play. Based on your interactions, BB-8 will show a range of expressions and even perk up when you give voice commands. Set it to patrol and watch your Droid explore autonomously, make up your own adventure and guide BB-8 yourself, or create and view holographic recordings. 

It’s now possible to explore the galaxy with your own trusty Astromech Droid by your side. BB-8 is more than a toy - it’s your companion.
'''
p.body = '''
Own a BB-8 of your very own!  The Sphero BB-8 is not only adorable, but its bundled companion app and patrol make him feel more like a pet than just a toy.
'''
p.asin = "B0107H5FJ6"
p.cost = 136
p.tag_list.add(TagType::TOYS)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"sphero_bb8.jpg"
)
p.posted_at = "2016-02-02"
p.save

p = Post.find_or_initialize_by(
  :title=>"LEGO Ideas WALL E 21303 Building Kit",
)
p.summary = '''
Build, display and role play with WALL-E! Construct the LEGO Ideas version of WALL-E with posable neck, adjustable head and arms, gripping hands, opening trunk and rolling tracks. Build a beautifully detailed LEGO version of WALL-E -the last robot left on Earth! Created by Angus MacLane, an animator and director at Pixar Animation Studios, and selected by LEGO Ideas members, the development of this model began alongside the making of the lovable animated character for the classic Pixar feature film. It has taken almost a decade to perfect the LEGO version, which incorporates many authentic WALL-E characteristics, including a posable neck, adjustable head, arms that move up and down and side to side, plus gripping hands and rolling tracks. With a trunk that opens and closes, you can tidy up the planet one pile of garbage at a time! This set also includes a booklet about the designer and the animated Pixar movie.
'''
p.body = '''
Lego Ideas is a great program where fans can have their projects turned into real sets, and Lego WALLE is an incredible model from creator Angus MacLane.  Lego WALL E reflects years of skillful design, with fully poseabable arms and head and a compartment on his body that opens just like the movie.  A great gift for any Lego or Pixar fan.
'''
p.asin = "B00ZSJMPLU"
p.cost = 60
p.tag_list.add(TagType::TOYS, TagType::LEGO)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"lego_walle.jpg"
)
p.posted_at = "2016-02-02"
p.save



