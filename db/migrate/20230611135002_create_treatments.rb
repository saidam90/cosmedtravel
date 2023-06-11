class CreateTreatments < ActiveRecord::Migration[7.0]
  def change
    create_table :treatments do |t|
      t.references :face_treatment, foreign_key: true
      t.references :body_treatment, foreign_key: true
      t.references :hair_treatment, foreign_key: true
      t.timestamps
    end
  end
end
