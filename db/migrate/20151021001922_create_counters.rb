class CreateCounters < ActiveRecord::Migration
  def change
    create_table :counters do |t|
      t.string :countable_type
      t.integer :countable_id
      t.string :key
      t.integer :counter, :default=>0
      t.timestamps
    end
    add_index :counters, [:countable_type, :countable_id, :key]
  end
end
