u = User.find_or_initialize_by(:email=>"terragnome@gmail.com")
u.nickname = "Michael"
u.name = "Michael Lin"
u.password=u.password_confirmation = "junkp4ss"
u.save