class WalletController < ApplicationController
	def index 
		@wallet= Money.all
	end
end
