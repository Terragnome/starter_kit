p = Post.find_or_initialize_by(
  :title=>"Opinel No. 8",
)
p.summary = '''Opinel knives are the traditional French picnic knives made in France since 1890. Rich in history and utility these knives are still a part of everyday culture in France. They are easy to use and they have a safe design. Each knife is made of four components, so the user need not worry about breaking parts - more common to overly complex mechanisms. Knife consists of carbon steel blade, hardwood handle, rivet and a stainless steel locking collar that prevents the knife from accidentally opening or closing. These knives are not only effective and practical; they are also beautiful. Opinel knives have been displayed in Museums and, in 1985, they were ranked as one of the "100 most beautiful products in the world", by the Victoria and Albert Museum in London. Opinel - a simple, beautiful and effective design that has survived and thrived for well over a century. Stamped with the famous Opinel crowned hand logo. 4 1/4 " closed, 3 1/4" inch blade.'''
p.body = '''
I use an Opinel as my everday carry knife because I wanted a knife with a beautiful classic design but that could be easily replaced if I lost it. The high carbon steel blade can be sharpened easily with a whetstone to a razor edge, although it must be treated to avoid rust. One option is to oil it, but I chose to use vinegar to form an black oxidized coat instead and have never had any problems.  And it floats!  There\'s enough wood in the handle that you won\'t lose it if you drop it in a lake!
'''
p.asin = "B002SCUO04"
p.cost = 13
p.tag_list.add(TagType::GEAR, TagType::EDC, TagType::KNIVES)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"opinel_no_8.jpg"
)
p.posted_at = "2015-06-06"
p.save

p = Post.find_or_initialize_by(
  :title=>"Martin Mamba",
)
p.summary = '''The Mamba recurve from Martin Archery is a redesigned Martin Highspeed of old. Traditional Bowhunters have raved about this bow for years. The Mamba is a beautiful and powerful recurve that stores a great amount of energy for FAST shooting. Maneuverable and lightweight (1 lbs 14oz), the Mamba is easy to carry and fits in tight spots. Owner\'s manual and bow stringer included.'''
p.body = '''
Martin Archery prides itself on building custom handmade bows, made one at a time, by the most experienced Bowyers in the world. Since 1938."

Martin Archery is an American bowmaker founded by Gail Martin 1938 and makes some of the finest traditional wood bows in the world. The Martin Mamba is one of its greatest designs and was the bow used to light the torch for the 1992 Summer Olympics in Barcelona.

The Martin Mamba is a 58" recurve bow made of Eastern Hard Maple core and accentuated with a Bubinga stripe lined with Shedua. Like most modern recurves, it has fiberglass laminations along the face and reinforced bow tips allow the use of modern bow strings made of materials such as Fast Flight. The sight window is cut past center which allows it to accept a greater spine range of arrows.

I chose the Martin Mamba as my first recurve because it was a handcrafted American bow with a storied history. It\'s a work of art that I love looking at on my bow rack even when I\'m not at the range. For those just getting into archery as a hobby, the most important thing to remember is never to draw your bow back and release it without an arrow (dry fire). You should also never prop it up vertically, never store it strung, and never leave it in a hot car or in a damp place as all of these things can damage the bow.
'''
p.asin = "B003WHHNE4"
p.cost = 559
p.tag_list.add(TagType::GEAR, TagType::ARCHERY)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"martin_mamba.jpg"
)
p.posted_at = "2015-06-13"
p.save

p = Post.find_or_initialize_by(
  :title=>"Once Upon A Time",
)
p.summary = """Tell your own fantastic tales of brave heroes and daring adventure! Once Upon a Time is the award-winning storytelling card game that encourages creativity and collaborative play. One player is the Storyteller, and begins telling a story using the fairytale elements on her Story cards, guiding the plot toward her Ending Card. The other players use their own cards to interrupt her and become the new Storyteller. The winner is the first player to use all her Story Cards and play her Ending Card. The object of the game, though, isn't just to win, but to have fun telling a story together."""
p.body = """
Once Upon A Time is a cardgame in which players exercise their creativity and storytelling to craft the perfect fairy tale. Players take turns telling a story and playing special cards to take control of the narrative.

The winner is the person who is able to introduce all their story elements and successfully finish it. This is a great game for experienced boardgamers who are looking for something a little different.

I played this in a group of four and found that to be a good group size.
"""
p.asin = "1589781317"
p.cost = 20
p.tag_list.add(TagType::TOYS, TagType::BOARDGAMES)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"once_upon_a_time.jpg"
)
p.posted_at = "2015-06-20"
p.save

p = Post.find_or_initialize_by(
  :title=>"The Bread Bible",
)
p.summary = """Rose Levy Beranbaum's The Cake Bible introduced readers to a newly illuminating baking-book approach--a precisely detailed yet accessible recipe format emphasizing baking science. The Bread Bible follows the same plan, offering 150 recipes, arranged by type, for a great variety of baked goods--from muffins, popovers, and English muffins to sandwich loaves, focaccia, rolls, hearth breads, rye bread, challah, and more, with a particularly vivid (and passionate) stop at sourdough loaves. Instruction is abetted by 32 pages of photos plus 300 step-by-step illustrations that depict, for example, bagel forming, in exact, imitable detail. In addition, an introductory section, \"The Ten Essential Steps of Making Bread,\" includes a particularly lucid discussion on the way yeast works plus an invaluable comparison of kneading methods. Like the book's final look at ingredients, these \"mini-texts\" provide information uncommon to most home bread books, rendered in simple language that allays fears of putting one's hand in the dough."""
p.body = """
Rose Levy Beranbaum's \"The Bread Bible\" is an excellent resource for bakers of all levels and the 2003 winner of the Gourmand World Cookbook Awards in the Best Bread Book Category. Recipes are detailed and contain overviews of the chemistry and recipes often contain a few variants with descriptions of hwo they will influence the final product.

The Basic Hearth Bread is an great recipe for beginners while the Proscuitto Ring is great for those with a little more experience.

This was the book that taught me that kneading the dough is what produces the protein gluten, punching down the dough distributes air bubbles in the crumb, and that professional bakers use scales because they are more precise that measuring cups which can be inprecise if the flour is tightly packed. I trace much of love of baking back to this book and highly recommended it for anyone interested in baking bread as a hobby.
"""
p.asin = "0393057941"
p.cost = 22
p.tag_list.add(TagType::BOOKS, TagType::FOOD, TagType::BAKING)
p.active = true
p.save
p.photos.find_or_create_by(
  :name=>"cover",
  :internal_url=>"the_bread_bible.jpg"
)
p.posted_at = "2015-06-27"
p.save