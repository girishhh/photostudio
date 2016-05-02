class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.attachment :image
      t.integer :customer_id

      t.timestamps null: false
    end
  end
end
