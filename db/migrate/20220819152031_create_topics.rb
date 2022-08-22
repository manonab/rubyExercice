class CreateTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :topics do |t|
      t.string "name"
      t.integer "position"
      t.boolean "visible", :default => false
      t.timestamps null: false
    end
  end
end
