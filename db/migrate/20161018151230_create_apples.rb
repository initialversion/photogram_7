class CreateApples < ActiveRecord::Migration
  def change
    create_table :apples do |t|
      t.integer :vote_id
      t.string :apple_name

      t.timestamps

    end
  end
end
