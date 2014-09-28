class MyScraper
	def self.scrape 

		# Use the class methods to get down to business quickly
response = HTTParty.get('http://www.brainyquote.com/quotes/authors/m/mahatma_gandhi.html')
		
		doc = Nokogiri::HTML(response.body)

		# Do funky things with it using Nokogiri::XML::Node methods...

		####
		# Search for nodes by css

		quotes = []
		doc.css('.bqQuoteLink a').each do |quote|
			quotes << quote.inner_html
		end

		quotes.sample
	end


end
