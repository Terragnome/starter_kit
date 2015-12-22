p = Post.find_or_initialize_by(
  :title=>'Gateway 4" Feathers',
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
p.posted_at = "2015-10-01"
p.save

p = Post.find_or_initialize_by(
  :title=>'Born To Run',
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
p.posted_at = "2015-10-08"
p.save

p = Post.find_or_initialize_by(
  :title=>'Ad Hoc at Home',
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
p.posted_at = "2015-10-15"
p.save

p = Post.find_or_initialize_by(
  :title=>'Kreg Jig K4 Pocket Jig',
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
p.posted_at = "2015-10-22"
p.save

p = Post.find_or_initialize_by(
  :title=>'Smallworld',
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
p.posted_at = "2015-10-29"
p.save