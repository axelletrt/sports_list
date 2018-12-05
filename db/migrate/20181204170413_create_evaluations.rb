class CreateEvaluations < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluations do |t|
      t.text :comment
      t.integer :eval
      t.belongs_to :card, index: true
      t.timestamps
    end
  end
end
