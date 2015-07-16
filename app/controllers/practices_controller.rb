class PracticesController < ApplicationController

	def index
		@practices = Practice.all
	end

	def new
		@practice = Practice.new
	end

	def create
		@practice = Practice.new(practice_params)

    	respond_to do |format|
      		if @practice.save
        		format.html { redirect_to @practice, notice: 'Group was successfully created.' }
        		format.json { render :show, status: :created, location: @practice }
      		else
        		format.html { render :new }
        		format.json { render json: @practice.errors, status: :unprocessable_entity }
      		end
    	end
	end

	def show
		@practice = Practice.find(params[:id])
	end

	private

		def practice_params
			 params.require(:practice).permit(:author, :duration, :notes)
		end

end
