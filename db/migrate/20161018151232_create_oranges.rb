class CreateOranges < ActiveRecord::Migration
  def change
    create_table :oranges do |t|
      t.integer :vote_id
      t.string :orange_name

      t.timestamps

    end
  end
end
