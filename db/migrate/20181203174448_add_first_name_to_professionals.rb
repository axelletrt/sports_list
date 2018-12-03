class AddFirstNameToProfessionals < ActiveRecord::Migration[5.2]
  def change
    add_column :professionals, :first_name, :string
  end
end
