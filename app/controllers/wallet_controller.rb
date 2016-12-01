class WalletController < ApplicationController
	def index 
		@wallet= Money.all
	end
	def create
	end
end
