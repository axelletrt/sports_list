# frozen_string_literal: true

class EvaluationsController < ApplicationController
  
    def index 
      @evaluation = Evaluation.all 
    end 

    def show 
      @evaluations = Evaluation.find(params[id])
    end 

    def new 
      @evaluation = Evaluation.new 
    end 

    def create
      p_eval = params[:evaluation]
      # search in the database Evaluations if the user has already done a comment on this card
      # (Evaluation.where(user_id: current_user.id, card_id: params[:id]).empty?)
        @evaluation = Evaluation.create(comment: p_eval[:content], eval: p_eval[:eval], card_id: params[:id], user_id: current_user.id)
        redirect_to "/cards/#{params[:id]}"
        
        if @evaluation.save
          respond_to do |format|
             format.js   ## cela va rendre create.js.erb
          end
        end
    end
end
