class AddImageToPackages < ActiveRecord::Migration[7.0]
  def change
    add_column :packages, :image, :string
  end
end
