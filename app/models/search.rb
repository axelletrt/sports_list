# frozen_string_literal: true

class Search < ApplicationRecord
  def self.search(keywords, discipline_id)
    table_of_ids_title = []
    table_of_ids_cats = []
    merged_table_of_cards_ids = []
    results = []
    i = 0

    cards_by_keyword = Card.where(['title LIKE?', keywords]) if keywords.present?
    cards_by_cat = Discipline.where(['id = :id', { id: category_id }]) if discipline_id.present?
    cards_by_keyword&.each do |card|
      card.id
      table_of_ids_title << card.id
    end
    unless cards_by_cat.nil?
      Discipline.find(cards_by_cat[0].id).cards.each do |card|
        table_of_ids_cats << card.id
      end
    end
    merged_table_of_cards_ids = [table_of_ids_title, table_of_ids_cats].flatten
    merged_table_of_uniq_cards_ids = merged_table_of_cards_ids.uniq

    merged_table_of_uniq_cards_ids.each do |card|
      result = Card.find(card)
      results << result
    end

    results
  end
end
