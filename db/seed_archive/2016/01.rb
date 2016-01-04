# p = Post.find_or_initialize_by(
#   :title=>"Langstroth Hive",
# )
# p.summary = '''Opinel knives are the traditional French picnic knives made in France since 1890. Rich in history and utility these knives are still a part of everyday culture in France. They are easy to use and they have a safe design. Each knife is made of four components, so the user need not worry about breaking parts - more common to overly complex mechanisms. Knife consists of carbon steel blade, hardwood handle, rivet and a stainless steel locking collar that prevents the knife from accidentally opening or closing. These knives are not only effective and practical; they are also beautiful. Opinel knives have been displayed in Museums and, in 1985, they were ranked as one of the "100 most beautiful products in the world", by the Victoria and Albert Museum in London. Opinel - a simple, beautiful and effective design that has survived and thrived for well over a century. Stamped with the famous Opinel crowned hand logo. 4 1/4 " closed, 3 1/4" inch blade.'''
# p.body = '''
# I use an Opinel as my everday carry knife because I wanted a knife with a beautiful classic design but that could be easily replaced if I lost it. The high carbon steel blade can be sharpened easily with a whetstone to a razor edge, although it must be treated to avoid rust. One option is to oil it, but I chose to use vinegar to form an black oxidized coat instead and have never had any problems.  And it floats!  There\'s enough wood in the handle that you won\'t lose it if you drop it in a lake!
# '''
# p.asin = ""
# p.cost = 13
# p.tag_list.add(TagType::GEAR, TagType::EDC, TagType::KNIVES)
# p.active = true
# p.save
# p.photos.find_or_create_by(
#   :name=>"cover",
#   :internal_url=>"opinel_no_8.jpg"
# )
# p.posted_at = "2016-01-01"
# p.save