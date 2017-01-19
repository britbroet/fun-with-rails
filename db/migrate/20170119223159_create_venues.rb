class CreateVenues < ActiveRecord::Migration[5.0]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :contact
      t.string :link
      t.string :img
      t.string :contact_name
      t.string :contact_email
      t.string :contact_phone
      t.money :cost

      t.timestamps
    end
  end
end
