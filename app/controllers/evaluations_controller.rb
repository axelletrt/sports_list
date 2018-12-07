class EvaluationsController < ApplicationController
  def create
    p_eval = params[:evaluation]
    # search in the database Evaluations if the user has already done a comment on this card
    if (Evaluation.where(user_id: current_user.id, card_id: params[:id]).empty?)
      Evaluation.create(comment: p_eval[:content], eval: p_eval[:eval], card_id: params[:id], user_id: current_user.id)
      redirect_to "/cards/#{params[:id]}"
    else
      puts "you can't"
    end
  end
end
