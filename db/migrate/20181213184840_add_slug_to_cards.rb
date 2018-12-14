class AddSlugToCards < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :slug, :string
    add_index :cards, :slug, unique: true
  end
end
