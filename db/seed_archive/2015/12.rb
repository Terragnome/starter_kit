p = Post.find_or_initialize_by(
  :title=>'Vortex Optics Solo 10x25 Monocular',
)
p.summary = """Pack light and take in bright views through the fully multi-coated optics of the redesigned Vortex Solo monocular. Once you see the viewing power Vortex has packed into this 5.6 ounce monocular, you won't leave home without it! Protected by waterproofing, fogproofing, and the Vortex VIP warranty, customers are guaranteed a monocular that will last for generations."""
p.body = """
You can always have a quality optic close at hand with the Solo Monocular. This compact, easy-to-carry monocular delivers quality viewing for outdoor enthusiasts who wish to bring nature a bit closer. Fully multi-coated glass surfaces deliver bright images in a compact, lightweight, easy to handle unit. Waterproof, fogproof and shockproof. It also has a BAK-4 prisms, which have a higher refractive index than BAK-7, and multi-coated glare resistant lenses. From bowhunters to backpackers the Solo makes a great addition to any gear list.
"""
p.url = "http://amzn.to/1S3KtZ5"
p.cost = 52
p.tag_list.add(TagType::GEAR, TagType::BACKPACKING, TagType::CAMPING, TagType::ARCHERY, TagType::OUTDOORS)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"vortex_optics_solo.jpg"
)
p.posted_at = "2015-12-01"
p.save

p = Post.find_or_initialize_by(
  :title=>'Samick Sage',
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
p.tag_list.add(TagType::GEAR, TagType::ARCHERY)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"samick_sage.jpg"
)
p.posted_at = "2015-12-01"
p.save

p = Post.find_or_initialize_by(
  :title=>'Gold Tip Expedition Hunter',
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
p.tag_list.add(TagType::GEAR, TagType::ARCHERY)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"goldtip_expedition_hunter.jpg"
)
p.posted_at = "2015-12-01"
p.save

p = Post.find_or_initialize_by(
  :title=>"Beginner's Guide to Archery Gear",
)
p.summary = """
This guide will walk you through all the gear you need to get started with archery as a hobby.
"""
p.body = """
Archery is a great hobby for men and women that teaches strength, focus, and consistency.  When I was just getting started I read a lot of books, guides, and, blogs to learn the basics, so I decided to collect some of the most useful information into one spot.  One of the most important things to learn as an archer is never to dry fire your bow, meaning to pull back the string and release it without shooting an arrow.  This can severely damage or destroy your bow since the energy that would have been used to shoot an arrow gets absorbed by the bow instead.  Bows that are dry fired often explode, and even those that don't may develop microscopic cracks that may not be immediately visible but will shortens theirs lives significantly.  It's important to keep this in mind when buying a used bow or a bow online.  With that warning out of the way, here we go!

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
p.tag_list.add(TagType::GEAR, TagType::GUIDES, TagType::ARCHERY)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"guide_beginner_archery_gear.jpg"
)
p.posted_at = "2015-12-01"
p.save

p = Post.find_or_initialize_by(
  :title=>'A History of the World in 6 Glasses',
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
p.tag_list.add(TagType::BOOKS, TagType::FOOD)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"a_history_of_the_world_in_6_glasses.jpg"
)
p.posted_at = "2015-12-03"
p.save

p = Post.find_or_initialize_by(
  :title=>'The Name of the Wind',
)
p.summary = """
The riveting first-person narrative of a young man who grows to be the most notorious magician his world has ever seen. From his childhood in a troupe of traveling players, to years spent as a near-feral orphan in a crime- ridden city, to his daringly brazen yet successful bid to enter a legendary school of magic, The Name of the Wind is a masterpiece that transports readers into the body and mind of a wizard. It is a high-action novel written with a poet's hand, a powerful coming-of-age story of a magically gifted young man, told through his eyes: to read this book is to be the hero.
"""
p.body = """
To be honest I haven't read this book yet, but I've had it recommended to me by four separate people so it's on my list.
"""
p.url = "http://amzn.to/1MCQV5c"
p.cost = 8
p.tag_list.add(TagType::BOOKS)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"the_name_of_the_wind.jpg"
)
p.posted_at = "2015-12-08"
p.save

p = Post.find_or_initialize_by(
  :title=>'Shun Higo Nokami Personal Knife',
)
p.summary = """
This beautifully crafted folding knife is an extremely handsome accessory, whether carried as a tasteful pocketknife or a personal steak knife. First manufactured in 1896 in Meiji-era Japan, this style of knife is considered to be the first Japanese pocketknife. One of the key characteristics of the traditional Higo-No Kami is that when the knife is closed, part of the blade tang protrudes and can be used like a small lever to open the knife with one hand.
"""
p.body = """
This knife is not robust enough for an outdoorsman, and at this price point not one that I'd rather use my Opinel for rough tasks where it might get damaged. It's beautfully crafted though, and fits easily into a suit pocket for the gentleman on the go.
"""
p.url = "http://amzn.to/1MCQW9g"
p.cost = 99
p.tag_list.add(TagType::EDC, TagType::KNIVES, TagType::GEAR)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"shun_higo_nokami.jpg"
)
p.posted_at = "2015-12-11"
p.save

p = Post.find_or_initialize_by(
  :title=>'Easton Hip Quiver',
)
p.summary = """
Easton Hip Quiver keeps extra arrows close - at - hand. Always have an arrow ready! This Easton Hip Quiver keeps arrows handy and protected. The fine points: Sturdy nylon and molded foam body is lightweight yet durable; Oversized compartments with zippered external pocket and internal pocket dividers; Molded arrow separators hold arrows securely; Top pocket for releases, pens, smart phone, etc.; Bow square slot and D-rings. Measures 46' l. x 10\" w. x 8\" h.
"""
p.body = """
My buddy has used this quiver for the last two years, and I've been impressed by the quality of construction. The main compartment is subdivided into smaller pockets, which lets him organize his arrows by different tips (blunts vs field) which is extremely useful.
"""
p.url = "http://amzn.to/1MCQU19"
p.cost = 64
p.tag_list.add(TagType::GEAR, TagType::ARCHERY)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"easton_hip_quiver.jpg"
)
p.posted_at = "2015-12-14"
p.save

p = Post.find_or_initialize_by(
  :title=>'Chemex Glass Coffee Maker',
)
p.summary = """
Known as a pristine coffeemaker, Chemex employs all of the chemically correct methods for brewing. Its hourglass shaped flask is made entirely of glass, a chemically inert material that does not absorb odors or chemical residues. The Chemex Glass Coffee Maker has no moving parts and will work forever, unless it is dropped or in some other way demolished.
"""
p.body = """Fancy and hipster coffee drinkers in my office swear by the Chemex. I needed someone to teach me how to use it, but once you go through it it's a pretty simple process and you can use whatever filters you want on it. Recommended as an alternative to a french press for people who only need 1-2 cups at a time. Just don't confuse it with a vase"""
p.url = "http://amzn.to/1MCQTKz"
p.cost = 45
p.tag_list.add(TagType::TOOLS, TagType::FOOD)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"chemex_8_cup_coffee_maker.jpg"
)
p.posted_at = "2015-12-17"
p.save

p = Post.find_or_initialize_by(
  :title=>'Saunders Combo Points',
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
p.tag_list.add(TagType::GEAR, TagType::ARCHERY)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"saunders_combo_point.jpg"
)
p.posted_at = "2015-12-20"
p.save

p = Post.find_or_initialize_by(
  :title=>'Yurbuds Inspire 100 In-Ear Headphones',
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
p.tag_list.add(TagType::GEAR, TagType::RUNNING, TagType::MUSIC)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"yurbuds_inspire_100.jpg"
)
p.posted_at = "2015-12-20"
p.save

p = Post.find_or_initialize_by(
  :title=>'Lifestraw Water Filter',
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
p.tag_list.add(TagType::GEAR, TagType::BACKPACKING, TagType::HIKING, TagType::OUTDOORS)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"lifestraw.jpg"
)
p.posted_at = "2015-12-21"
p.save

p = Post.find_or_initialize_by(
  :title=>'Swedish FireSteel 2.0'
)
p.summary = """
Originally developed for the Swedish Department of Defense, our legendary Swedish FireSteel® is the original magnesium fire starter. Our second generation Swedish FireSteel 2.0® comes with an improved striker that makes it even easier to build a fire in any weather and at any altitude. It has a new design, a flexible cord and a built-in emergency whistle.
"""
p.body = """
Swedish Fireseel is capable of generating a 3,000° C spark and starting fires in difficult conditions like damp and humid environments. good for over 12,000 strikes, and has been approved by the International Survival Instructors Association. This makes it a great gift or purchase for anyone interested in outdoor hobbies or for people who just like playing with fire. My buddies and I like to use it to start wood fires in our firepit.
"""
p.url = "http://amzn.to/1PUBSZQ"
p.cost = 13
p.tag_list.add(TagType::GEAR, TagType::BACKPACKING, TagType::HIKING, TagType::OUTDOORS)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"swedish_firesteel.jpg"
)
p.posted_at = "2015-12-22"
p.save

p = Post.find_or_initialize_by(
  :title=>'Becoming Batman'
)
p.summary = """
Battling bad guys. High-tech hideouts. The gratitude of the masses. Who at some point in their life hasn't dreamed of being a superhero? Impossible, right? Or is it?

Possessing no supernatural powers, Batman is the most realistic of all the superheroes. His feats are achieved through rigorous training and mental discipline, and with the aid of fantastic gadgets. Drawing on his training as a neuroscientist, kinesiologist, and martial artist, E. Paul Zehr explores the question: Could a mortal ever become Batman?
"""
p.body = """
Becoming Batman is really a physiology book discuised as a comic book.  While it gues the extra mile of citing comic books for Batman's various feats of strength, this is a book geared more toward biology nerds and covers things like the mechanism by which a martial artist's bones become harder and the effects of late night exercise on performance.  A thoughtful exploration of a fun premise and a good gift for Batman, Biology, or comic fans.
"""
p.url = "http://amzn.to/1OlYXq7"
p.cost = 17
p.tag_list.add(TagType::BOOKS, TagType::FITNESS, TagType::COMICS, TagType::SCIENCE)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"becoming_batman.jpg"
)
p.posted_at = "2015-12-22"
p.save

p = Post.find_or_initialize_by(
  :title=>'Scott Rhino XT Release'
)
p.summary = """
The Rhino XT is an open hook, single sear release designed for the serious bow hunter. The XT's spring loaded stainless steel hook creates quick and easy loading of your loop. This release features interchangeable springs for trigger sensitivity adjustment, a forward trigger to maximize draw length and our patented nine-hole length adjustment. Internal components are machined from stainless steel to deliver a lifetime of performance.
"""
p.body = """
I chose the Scott Rhino XT Release since I was looking for a hook-style release with durable construction and a heavier trigger.  The Rhino is extremely customizable and comes with different springs and hooks that you can attach to customize the feel.  I use the velcro version and am happy with it, but others have suggested the buckle version is better for hunting because it is quieter and the use of holes makes the sizing consistent.  Releases are usually used with compound bows since the short axle to axle length (as short as 30\" whereas even short recurve bows are rarely shorter than 58\") causes significant string pinch on your fingers which can affect the shot.  This release is heavy duty and feels like it will last forever.
"""
p.url = "http://amzn.to/1YzBEZj"
p.cost = 79
p.tag_list.add(TagType::GEAR, TagType::ARCHERY)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"scott_rhino_xt.jpg"
)
p.posted_at = "2015-12-22"
p.save

p = Post.find_or_initialize_by(
  :title=>'Axcel 5 Pin .019 Fiber Armortech HD Hunting Sight'
)
p.summary = """
The Armortech Hunting Sight was voted best buy winner, from Inside Archery Magazine, its very first year on the market. The windage knob fetures 20 clicks per revolution adjustability. To move the individual sight pin up or down, turn micro adjustment knob. The sight pin pivot lock is engineered to not vibrate loose. Do not over tighten or damage will result. The engraved partial ring at depth of sight pins, is designed for greater accuracy when viewed slightly off center. The Armor fiber technology provides 100% protection to fibers that are fully enclosed inside tubing. Includes a Mathews(R) Harmonic Damper.
"""
p.body = """
When choosing the sight for my hunting compound, the two most popular options were sights built by Spot Hogg and Armourtech.  While Spott Hogg sights are also excellent, I was impressed by the solid aluminum build quality of the Armortech.  I feels seriously ready to take on the wear and tear of a trek through the woods.  It has micro windage adjustments for 3 axes, as well as individual pin adjustments and is compatible with all standard rheostat lights, although a light is not included.  The fibers in the pins are fully enclosed, but there is a clear plastic window in the front that allows it to gather a lot of light.  In practice, I found the pins to be extremely bright and rarely needed the rheostat light to see the pins.  It also includes threading for adding on a lense if you find that you want additional magnification.  If you plan to mount the sight as far out as it will go, I found a 3/16\" peep to be perfect, whereas a 1/4\" peep is perfect for the second to furthest setting.  I plan to use the 1/4\" for hunting since the larger diameter will allow for more light in low light situations.  The level comes attached at the bottom of the sight, but it's removable so I moved it to the top of the sight so that it would be visible from inside the peep.  This sight works with both left and right handed bows and comes with instructions on how to attach it to either side.
"""
p.url = "http://amzn.to/1QFQ5fz"
p.cost = 169
p.tag_list.add(TagType::GEAR, TagType::ARCHERY)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"axcel_armortech_hd.jpg"
)
p.posted_at = "2015-12-22"
p.save

p = Post.find_or_initialize_by(
  :title=>'Octane Deadlock Pro Bow Quiver'
)
p.summary = """
Octane Deadlock Pro 5 - arrow Quiver stays light 'n' tight! The Deadlock Pro weighs just 0.4 lbs., and with a wide range of adjustability, it holds arrows so close to your bow that you'll barely notice it's there. Constructed of carbon and lightweight components, this is an extremely lightweight, quiet Quiver that doesn't skimp on strength or durability. Draw: 1-Pc. design made from carbon and lightweight components, weighs just 0.4 lbs. Extended gripper will hold all arrow sizes; Quiet quick-detach system with an arm-locking latch for fast removal; Adjustable in and out, so you can get the quiver as close to your riser as possible; Pre-cut foam accepts most popular fixed and mechanical broadheads. Order yours today! Octane Deadlock Pro 5-arrow Quiver
"""
p.body = """
I chose the Octane Deadlock Pro Bow Quiver because it offered most of the features and had a similar design to the TightSpot quiver but at a fraction of the cost.  The quiver is solidly constructed around two carbonfiber rods, and the hood contains high density foam with cutouts for 2, 3, and 4 blade broadhead designs.  Arrows are held in place with flexible metal ridges that are coated in rubber so can grip all types of shafts.  The arrows can be adjusted up, down, and towards the bow which helps tremendously with balance.  If a bow quiver is too far away from the riser, the weight and the torque can make it strenuous to keep the bow from canting.  With the Deadlock Pro, I was able to move it all the way down until it was practically touching my cable slide, which made my shooting more stable and comfortable even with the quiver on.  I was able to test this by moving the quiver to the farthest setting which made the bow feel much top heavier.  An extremely well designed quiver that looks and feels like a quality product.
"""
p.url = "http://amzn.to/1QFRp1W"
p.cost = 90
p.tag_list.add(TagType::GEAR, TagType::ARCHERY)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"octane_deadlock_pro.jpg"
)
p.posted_at = "2015-12-22"
p.save

p = Post.find_or_initialize_by(
  :title=>'Carbon Express String-Loop Nocking Pliers'
)
p.summary = """
The Universal Nocking Plier opens nock sets without damage, two hole size for nock set installation, pre-stretches D-loop, permanently tightens D-loop to string, heavy duty comfortable extra large grip.
"""
p.body = """
Nocking pliers are useful because they allow you to add and remove brass nocks from bowstrings without damaging them.  I originally bought a cheaper set of pliers that could only tighten them, but it was kind of annoying not being able to reuse a nock if I needed to replace the string.  This one also includes tools for tightening D-loops.  A useful tool to have in your archery pack.
"""
p.url = "http://amzn.to/1YzFQIx"
p.cost = 13
p.tag_list.add(TagType::ARCHERY, TagType::GEAR)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"carbon_express_nocking_pliers.jpg"
)
p.posted_at = "2015-12-22"
p.save

p = Post.find_or_initialize_by(
  :title=>'J.A. HENCKELS INTERNATIONAL Classic 8-inch Chef\'s Knife'
)
p.summary = """
J.A Henckels Classic knives are made of high quality German carbon no-stain steel. The one-piece traditional forged construction provides durability and features a full bolster for added weight, comfort, and safety. Traditional three rivet handle with exposed full tang and full bolster provide a comfortable grip with balance and support.
"""
p.body = """
Henckels is one of Germany's oldest knife manufacturers and has been in operation since 1731.  The Henckels Classic series is a great option for aspiring home chefs who are looking for the advantages of forged knives without the high costs associated with other premium brands.  Forged knives have the benefits of being stiffer, heavier, and harder than stamped blades which helps with helps knives hold their edges longer and reduces fatigue while cutting.
"""
p.url = "http://amzn.to/1OVBuq2"
p.cost = 34
p.tag_list.add(TagType::GEAR, TagType::KNIVES, TagType::FOOD)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"henckels_8_inch_chef.jpg"
)
p.posted_at = "2015-12-28"
p.save

p = Post.find_or_initialize_by(
  :title=>'Wusthof Classic 3-1/2-Inch Paring Knife'
)
p.summary = """
Perform all of your small cutting tasks with this Wustof Classic paring knife. Made in Solingen, Germany, it was hand-forged in 38 manufacturing steps by skilled craftsmen. The high-carbon stainless steel blade is hardened to maintain a sharp edge, and its full tang provides perfect balance with a riveted, high-impact composition handle. Wusthof's newest state of the art technology incorporates a new computer controlled method for putting the edge on Classic knives and allows for an exacting edge from the tip of the knife down to the heel. With this newer precision, the knives are made sharper to 14 degrees per side for a total of 28 degrees, doubling the sharpness retention. This knife is backed by a manufacturer's limited lifetime warranty and is the perfect addition to your cutlery collection.
"""
p.body = """
Aside from your chef's knife, your paring knife will probably be your most frequently used knife so it's worth it to pay extra for quality, and Wusthof is one of best.  Treat yo\'self!
"""
p.url = "http://amzn.to/1YNkr4a"
p.cost = 40
p.tag_list.add(TagType::GEAR, TagType::KNIVES, TagType::FOOD)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"wusthof_classic_paring_knife.jpg"
)
p.posted_at = "2015-12-29"
p.save

p = Post.find_or_initialize_by(
  :title=>'Wonder Cup Adjustable Measuring Cup'
)
p.summary = """
Replace all your measuring tools with the handy dandy Wonder Cup! This wonder cup (one cup version) could easily take the place of all of your measuring aids in the kitchen. Measures all scales from teaspoons to to pints. Also provides instant conversion between U.S. measurements and the metric system. Measure an ingredient you need in just 3 easy steps: 1) PRESS to release cup from sleeve 2) TWIST to desired point on scale 3)PUSH to eject contents Measures up to 1 cup of ingredients. Eliminates clean up between ingredients Measures wet or dry ingredients. Great for sticky or solid items like peanut butter and shortening. Provides every measurement from teaspoons to pints. Instant conversion between U.S. and the metric system
"""
p.body = """
The perfect tool for the obsessive compulsive chef.  If you've ever tried to measure exactly 1 cup of honey, you'll see the value in a tool that lets you push it out.  An elegant measuring tool for a more civilized age.
"""
p.url = "http://amzn.to/1krIQJE"
p.cost = 9
p.tag_list.add(TagType::GEAR, TagType::COOKING, TagType::BAKING, TagType::FOOD)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"wonder_cup.jpg"
)
p.posted_at = "2015-12-29"
p.save

p = Post.find_or_initialize_by(
  :title=>'Muzzy Broadheads'
)
p.summary = """
Muzzy Broadheads - 6 Pack are screw in broadheads. Muzzy Broadheads have become legendary for their Bad To The Bone dependability and true flight. It begins with the hollow ground design of Muzzy Trocar tips, which are responsible for the exceptional penetrating power through both flesh and bone. Razor sharp stainless steel blades interlock within the body of Muzzy Broadheads forming a column of steel that adds support to the aircraft aluminum bodies. You can't go wrong with Muzzy Broadheads. Popular ultra-lite Head. 1-3/16 inch cutting diameter and .020 inch thickness. They are BAD TO THE BONE!
"""
p.body = """
Muzzys are cheap, have the reliability of fixed blades, and come razor-sharp straight from the factory.  I've shot these into wood and had them survive with only minimal damage.  Worst case the tip and blades are all replaceable.
"""
p.url = "http://amzn.to/1ZACffO"
p.cost = 39
p.tag_list.add(TagType::GEAR, TagType::ARCHERY, TagType::HUNTING)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"muzzy_broadheads.jpg"
)
p.posted_at = "2015-12-29"
p.save

p = Post.find_or_initialize_by(
  :title=>'Bee Stinger Pro Hunter Maxx Stabilizer'
)
p.summary = """
Bee Stinger Pro Hunter Maxx 10\" Bow Stabilizer. Smooth under pressure. Bad vibes? Put the Pro Hunter Maxx Stabilizer to work on your bow for reduced vibration and better accuracy. Sims Internal Harmonic Dampener and De-Resonator perform double-duty on shot-induced vibration, delivering ultimate control before, during, and after the shot. Even better, 3 removable end weights let you customize it for balance and performance. (Un)Shocking performance: Built around a high-modulus carbon rod, providing superior stiffness; Patented design delivers maximum moment of inertia, providing better shot control; Integrated Sims Harmonic Dampener and De-Resonator control vibration; 3 independently removable end weights for custom balance.
"""
p.body = """
There's a great series of articles by <a href='http://www.fieldandstream.com/blogs/whitetail-365/2013/07/does-short-stabilizer-really-add-stability'>Field & Stream</a> which test common myths for compound bows, and their conclusion was for distances shorter than 40 yards an 8\" stabilizer made no difference but at 60 yards a 10\" decreased the size of their groups by 2\".  The Bee Stinger Pro Hunter Maxx is a top of the line stabilizer with 3 customizable weights and a perfect gift for the bowhunter in your life.
"""
p.url = "http://amzn.to/1SlJWVd"
p.cost = 76
p.tag_list.add(TagType::GEAR, TagType::ARCHERY, TagType::HUNTING)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"bee_stinger_pro_hunter_maxx_10.jpeg"
)
p.posted_at = "2015-12-29"
p.save

p = Post.find_or_initialize_by(
  :title=>'Buck 119 Special Fixed Blade Knife'
)
p.summary = """
For the outdoorsmen who prefer the absolute solid feel of a fixed blade, Buck's best-selling Model 119 Special sets the standard by which others are measured. Hoyt and Al Buck used to build them by hand in their two-man shop. Today, this larger hunting knife with a large clip blade for detail work, piercing and cutting in tight places for added control, is as popular as ever. Engraving is offered on right side (blade facing right). Made in the USA.
"""
p.body = """
The Buck 119 Uses 420HC steel which is an excellent material which resists rust holds a decent edge yet can still be sharpened at home with a common sharpening stone.  Had a fixed blade with a full tang and is strong enough to be used for batoning.  My blade of choice for the outdoors.
"""
p.url = "http://amzn.to/1SlJVk5"
p.cost = 50
p.tag_list.add(TagType::GEAR, TagType::KNIVES, TagType::HUNTING, TagType::OUTDOORS)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"buck_119_knife.jpg"
)
p.posted_at = "2015-12-29"
p.save

p = Post.find_or_initialize_by(
  :title=>'Anova Culinary Bluetooth Precision Cooker'
)
p.summary = """
The Anova Precision Cooker makes it easy to get professional-level cooking results at home. To use the Anova Precision Cooker, you simply attach it to a pot, put your food in a seal-able bag and set the time and temperature. The Precision Cooker circulates water around the pot while ensuring a consistent temperature throughout. The Precision Cooker also connects to your phone, allowing you to cook amazing meals by simply touching a button. The food is amazing, tender, and moist every time.
"""
p.body = """
Sous vide allows for food to stay tender and moist by cooking it at low temperatures for long periods of time.  This is done by immmersing the food in liquid that has its temperature carefully controlled and is constantly circulated.  Wheras professional units cost thousands of dollars, the Anova Precision Cooker attaches to your existing pots and makes sous vide practical at home.  Highly recommended for home chefs.
"""
p.url = "http://amzn.to/1QYQ3zj"
p.cost = 179
p.tag_list.add(TagType::GEAR, TagType::COOKING, TagType::FOOD)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"anova_bluetooth_precision_cooker.jpg"
)
p.posted_at = "2015-12-29"
p.save