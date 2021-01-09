class CreateMyusers < ActiveRecord::Migration[6.0]
  def up
    create_table :myusers do |t|
      t.string :FirstName
      t.string :LastName
      t.string :Country
      t.timestamps
    end
  end

  def def down 
    drop_table :myusers
  end
end
