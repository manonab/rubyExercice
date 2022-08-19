class CreateUsers < ActiveRecord::Migration[6.0]
  def up
    create_table :users do |t|
      t.column "first_name", :string, :limit => 30
      t.string "last_name", :limit => 30
      t.string "email", :default => "", :null => false
      t.string "password", :limit => 50
      # t.datetime "created_at"
      # t.datetime "updated_at"
      t.timestamps null: false
    end

    def down 
      drop_table :users
    end
  end
end
