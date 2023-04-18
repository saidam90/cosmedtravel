class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone
      t.string :address
      t.string :city
      t.string :country
      t.date :payment_date
      t.integer :payment_amount
      t.references :package, null: false, foreign_key: true

      t.timestamps
    end
  end
end
