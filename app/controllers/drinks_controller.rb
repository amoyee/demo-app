class DrinksController < ApplicationController

	def index
		# will have a template
	end

	def show
		# will have a template
	end

	def new # display for the new record
		# will have a template
		@drink = Drink.new
	end

	def create
		# will save and redirect
		@drink = Drink.new(allowed_params)

		if @drink.save
			redirect_to drinks_path
		else
			redender 'new'
		end
	end

	def edit # display form for existig record
		# will have a template
	end

	def update
		# will save and redirect
	end

	def destroy
		# will destroy and redirect
	end

	private
		def allowed_params
		params.require(:drink).permit(:name, :size)
		end
	
end
