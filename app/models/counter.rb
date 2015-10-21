class Counter < ActiveRecord::Base
   belongs_to :countable, polymorphic: true

   def create(countable)
    self.countable_type = countable.class
    self.countable_id = countable.id
    self.save()
   end

   def increment()
    self.counter += 1
   end

   def decrement()
    self.counter = self.counter <= 1 ? 0 : self.counter-1
   end
end