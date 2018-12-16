# frozen_string_literal: true

class CreateProfessionals < ActiveRecord::Migration[5.2]
  def change
    create_table :professionals do |t|
      t.belongs_to :user, index: { unique: true }
      t.timestamps
    end
  end
end
