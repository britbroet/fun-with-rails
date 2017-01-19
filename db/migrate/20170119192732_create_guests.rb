class CreateGuests < ActiveRecord::Migration[5.0]
  def change
    create_table :guests do |t|
      t.string :first
      t.string :last
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
