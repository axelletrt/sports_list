class EvaluationsController < ApplicationController
  def create
    p_eval = params[:evaluation]
    Evaluation.create(comment: p_eval[:content], eval: p_eval[:eval], card_id: params[:id])
    redirect_to "/cards/#{params[:id]}"
  end
end
