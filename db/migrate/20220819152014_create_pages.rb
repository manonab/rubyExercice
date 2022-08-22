class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages do |t|
      t.integer "topic_id"
      t.string "name"
      t.string "weblink"
      t.integer "position"
      t.boolean "visible", :default => false
      t.timestamps null: false
    end
    add_index("pages", "topic_id")
    add_index("pages", "weblink")
  end
end
