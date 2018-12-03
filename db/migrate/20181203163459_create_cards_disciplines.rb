class CreateCardsDisciplines < ActiveRecord::Migration[5.2]
  def change
    create_table :cards_disciplines do |t|
      t.belongs_to :card, index: true
      t.belongs_to :discipline, index: true
      t.timestamps
    end
  end
end
