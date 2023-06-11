class CreateHairTreatments < ActiveRecord::Migration[7.0]
  def change
    create_table :hair_treatments do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
