p = Post.find_or_initialize_by(
  :title=>'Ticket to Ride',
)
p.summary = """
October 2, 1900 - it's 28 years to the day that noted London eccentric, Phileas Fogg accepted and then won a bet that he could travel \"Around the World in 80 Days.\" Now, at the dawn of the century, some old friends have gathered to celebrate Fogg's impetuous and lucrative gamble - and to propose a new wager of their own. The stakes: $1 million in a winner-takes-all competition. The objective: to see the most cities in North America - in just 7 days. Ticket to Ride is a cross-country train adventure game. Players collect train cards that enable them to claim railway routes connecting cities throughout North America. The longer the routes, the more points they earn. Additional points come to those who can fulfill their Destination Tickets by connecting two distant cities, and to the player who builds the longest continuous railway. For 2 to 5 players ages 8 and older. Playing time: 30-60 minutes. Comes with: 1 Board map of North American train routes, 240 Colored Train Cars, 110 Train Car cards, 30 Destination Tickets, 5 Wooden Scoring Markers, 1 Days of Wonder Online access number, and a Rules booklet.
"""
p.body = """
This game plays like Connect 4 or Go. A lot of the strategy comes from trying to play ambiguous moves that let you control territory without letting people know where you're going so they can't block you. It actually works pretty well as a two-player game too.
"""
p.url = "http://amzn.to/1MoxQb5"
p.cost = 32
p.tag_list.add("toys", "boardgames")
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"ticket_to_ride.jpg"
)
p.posted_at = "2015-11-01"
p.save

p = Post.find_or_initialize_by(
  :title=>'Grayling Fletching Jig',
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
p.posted_at = "2015-11-08"
p.save

p = Post.find_or_initialize_by(
  :title=>'DeWalt DWE575SB Circular Saw',
)
p.summary = """
The Dewalt DWE575SB 7-1/4-inch lightweight circular saw with electric brake is designed to be one of the lightest and well balanced saw in its class at only 8.8 pounds, with an electric brake that stops the blade after the trigger is released. A ball bearing lower guard provides a durable design — even against dust contamination for smooth retraction — along with the high grade stamped aluminum shoe that provides the user with a durable and smooth base for accurate cutting. Advanced lower guard geometry for bevel cuts with integrated dust blower allows the user to clear the sightline while cutting. A patented tough cord protection system provides 3x durability against cord pull-out. On-board blade wrench storage allows for easy storage and convenience for blade changes. It also includes a handy carrying case for easy portability.
"""
p.body = """A simple circular saw lets you build an incredible number of things. If you need to cut a straight line you can clamp a rule or a board down, then use it to guide the saw."""
p.url = "http://amzn.to/1PsX6xQ"
p.cost = 129
p.tag_list.add("tools", "woodworking", "diy")
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"dewalt_dwe575sb.jpg"
)
p.posted_at = "2015-11-15"
p.save

p = Post.find_or_initialize_by(
  :title=>'Love Letter',
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
p.posted_at = "2015-11-22"
p.save

p = Post.find_or_initialize_by(
  :title=>'Cards Against Humanity',
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
p.posted_at = "2015-11-29"
p.save