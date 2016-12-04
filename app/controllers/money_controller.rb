class MoneyController < ApplicationController
	def index
		@money= Money.all
	end
	
	def create
		@money= Money.create(money_params)
		if @money.valid?
			#statement
		else 
			#statement
		end
		redirect_to root_path
	end

	def edit
	@money= Money.find(params[:id]) 
	end

		def update
			@money= Money.find(params[:id])
			if @money.update(money_params)
				redirect_to root_path
				else 
				redirect_to edit_money_path(params[:id])
			end 
		end

	def destroy
		@money= Money.find(params[:id])
		@money.destroy
		redirect_to root_path
	end 

	
	def money_params
    	params.require(:money).permit(:title, :amount)
  	end
end
