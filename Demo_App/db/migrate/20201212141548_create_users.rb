

class CreateUsers < ActiveRecord::Migration[6.0]
  def up
    create_table :users do |t|

     t.column "first_name", :string,:limit => 25
     t.string "last_name",:limit => 25
     t.string "email",:null => false,:default => ''
     t.string "password",:limimt=>25
     t.timestamps
    end
  end

  def def down 
    drop_table :users
  end
end
