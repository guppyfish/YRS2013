class QuestionsController < ApplicationController
	respond_to :html, :json

	def index 
		@questions = Question.all
	end

	def show
		@question = Question.find(params[:id])
		respond_with @question
	end

end 