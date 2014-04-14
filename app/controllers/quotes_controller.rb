class QuotesController < ApplicationController

	def index
		@quote = MyScraper.scrape 

	end

end
