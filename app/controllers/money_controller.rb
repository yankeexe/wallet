class MoneyController < ApplicationController
	def index
		@money= Money.all
		@balance = Money.balance
		@debt = Money.debt
		@total = Money.total
	end
	
	def create
		@money= Money.create(money_params)
		if @money.valid?
			flash[:success]="Your transaction has been posted!"
		else 
			flash[:alert]= "Sorry, Something is Wrong, Try Again!"
		end
		redirect_to root_path
	end

	def edit
		@money= Money.find(params[:id]) 
	end

	def update
		@money= Money.find(params[:id])
		if @money.update(money_params)
			flash[:success]="Transaction Updated"
			redirect_to root_path
		else 
			flash[:alert]="Sorry, Something is Wrong, Try Again!"
			redirect_to edit_money_path(params[:id])
		end 
	end

	def destroy
		@money= Money.find(params[:id])
		@money.destroy
		flash[:success]="Idea Destroyed"
		redirect_to root_path
	end 

	
	private
	def money_params
    	params.require(:money).permit(:title, :amount, :date)
  	end
end
