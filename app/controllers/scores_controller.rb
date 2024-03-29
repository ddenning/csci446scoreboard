class ScoresController < ApplicationController

	def index
		@scores = Score.order(:score)
		respond_to do |format|
			#format.js
			format.json { render json: @scores }
		end

	end

	def create
		@score = Score.new(name: params[:name], score: params[:score])

		if @score.save
			render json: @score, status: :created, location: @score
		else
			render json: @score.errors, status: :unprocessable_entity
		end
	end

end