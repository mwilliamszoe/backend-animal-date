class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.string :species_availability
      t.string :ownership
      t.string :image
      t.string :diet
      t.integer :user_id
      t.integer :likes

      t.timestamps
    end
  end
end
