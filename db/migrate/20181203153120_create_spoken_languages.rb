# frozen_string_literal: true

class CreateSpokenLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :spoken_languages do |t|
      t.string :name
      t.timestamps
    end
  end
end
