# frozen_string_literal: true

class CreateCardsLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :cards_languages do |t|
      t.belongs_to :card, index: true
      t.belongs_to :spoken_language, index: true
      t.timestamps
    end
  end
end
