class CreateContactLists < ActiveRecord::Migration
  def change
    create_table :contact_lists do |t|
      t.string :name, null: false
      t.string :contact_number, null: false

      t.timestamps null: false
    end
  end
end
