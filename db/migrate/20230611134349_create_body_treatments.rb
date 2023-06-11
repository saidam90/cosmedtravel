class CreateBodyTreatments < ActiveRecord::Migration[7.0]
  def change
    create_table :body_treatments do |t|
      t.string :body_treatment_name
      t.text :body_treatment_description

      t.timestamps
    end
  end
end
