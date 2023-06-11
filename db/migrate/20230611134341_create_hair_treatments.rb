class CreateHairTreatments < ActiveRecord::Migration[7.0]
  def change
    create_table :hair_treatments do |t|
      t.string :hair_treatment_name
      t.text :hair_treatment_description

      t.timestamps
    end
  end
end
