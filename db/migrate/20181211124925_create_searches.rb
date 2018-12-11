class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.integer :discipline_id
   	  t.string :name

      t.timestamps
    end
  end
end
