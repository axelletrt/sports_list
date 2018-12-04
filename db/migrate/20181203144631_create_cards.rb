class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :activity_title
      t.string :short_description, optional: true
      t.text :long_description
      t.integer :organization
      t.string :address, optional: true
      t.integer :city
      t.integer :country, default: 0
      t.decimal :latitude, optional: true
      t.decimal :longitude, optional: true
      t.string :price
      t.time :length
      t.time :opening_hour, optional: true
      t.time :closing_hour, optional: true
      t.string :whatsapp, optional: true
      t.string :website, optional: true
      t.string :facebook, optional: true
      t.string :instagram, optional: true
      t.boolean :status, default: false
      t.belongs_to :professional, index: true
      t.timestamps
    end
  end
end
