class CreateFaceTreatments < ActiveRecord::Migration[7.0]
  def change
    create_table :face_treatments do |t|
      t.string :face_treatment_name
      t.text :face_treatment_description

      t.timestamps
    end
  end
end
