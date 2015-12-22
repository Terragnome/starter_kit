# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#  cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#  Mayor.create(name: 'Emanuel', city: cities.first)

def recursive_seed(folder, extension="*.rb")
  Dir[File.join(folder, extension)].sort.each{ |seed|
    # puts seed
    load seed
  }
  Dir.glob("#{folder}/*").select{ |entry|
    recursive_seed(entry) if File.directory?(entry)
  }
end

Post.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('posts')

Photo.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('photos')

PostPhoto.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('post_photos')

Dir.chdir(File.join(Rails.root, 'db', 'seed_archive'))

# Load seed files
recursive_seed( File.join(Rails.root, 'db', 'seed_archive') )

Post.all.each do |x|
  if (not x.body or x.body.length == 0) or (not x.summary or x.summary.length == 0)
    x.active = false
    x.save
  end
end