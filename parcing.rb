class TakeInfo

	require 'open-uri'
	require 'nokogiri'

	def temp_scrap
		url = 'http://pogoda-v-gorode.ru/pogoda-onlajn-v-dubaj'
		html = open(url)

		doc = Nokogiri::HTML(open(html))
		temp = doc.css('div.pvg-factbox p.pvg-facttemp').text.to_s

		puts temp
	end

	def sun_cond
		url = 'http://pogoda-v-gorode.ru/pogoda-onlajn-v-dubaj'
		html = open(url)

		doc = Nokogiri::HTML(open(html))
		bright = doc.css('div.pvg-factbox p.pvg-factcontent').text.to_s

		puts bright
		
	end
	def indicators
		url = 'http://pogoda-v-gorode.ru/pogoda-onlajn-v-dubaj'
		html = open(url)

		doc = Nokogiri::HTML(open(html))
		sunrise = doc.css('div.pvg-daycounters-center p')[0].text.to_s
		sunset = doc.css('div.pvg-daycounters-center p.pvg-sunset').text.to_s
		wind = doc.css('div.pvg-daycounters-center p')[2].text.to_s
		humidity = doc.css('div.pvg-daycounters-center p')[3].text.to_s
		pressure = doc.css('div.pvg-daycounters-center p')[4].text.to_s
		puts sunrise.split(' ').join(' ').to_s
		puts sunset.split(' ').join(' ').to_s
		puts wind.split(' ').join(' ').to_s
		puts humidity.split(' ').join(' ').to_s
		puts pressure.split(' ').join(' ').to_s
	end

end

