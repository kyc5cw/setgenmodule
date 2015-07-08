class DrillsController < ApplicationController

	def index
		@drills = Drill.all
	end

	def new
		@drill = Drill.new
	end

	def create
		@drill = Drill.new(drill_params)

    	respond_to do |format|
      		if @drill.save
        		format.html { redirect_to @drill, notice: 'Group was successfully created.' }
        		format.json { render :show, status: :created, location: @drill }
      		else
        		format.html { render :new }
        		format.json { render json: @drill.errors, status: :unprocessable_entity }
      		end
    	end
	end

	def show
		@drill = Drill.find(params[:id])
	end

	private

		def drill_params
			 params.require(:drill).permit(:name, :distance, :unit, :description)
		end

end
