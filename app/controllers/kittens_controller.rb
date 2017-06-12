class KittensController < ApplicationController
	def new
		@kitten = Kitten.new
	end

	def create 
		@kitten = Kitten.create(kitten_params)
		flash[:success] = "Created!"
		redirect_to action: "show", id: @kitten.id
	end

	def show
		@kitten = Kitten.find(params[:id])
		respond_to do |format|
			format.html
			format.json {render json: @kitten}
		end
	end

	def index
		@kittens = Kitten.all
		respond_to do |format|
			format.html
			format.json {render json: @kittens}
		end
	end

	def edit
		@kitten = Kitten.find(params[:id])
	end

	def update
		@kitten = Kitten.find(params[:id])
		@kitten.update_attributes(kitten_params)
		flash[:success] = "Updated!"
		redirect_to action: "show", id: @kitten.id
	end

	def destroy
		Kitten.find(params[:id]).destroy
		flash[:success] = "Deleted!"
		redirect_to root_path
	end

	private

		def kitten_params
			params.require(:kitten).permit(:name, :age, :cuteness, :softness)
		end
end
