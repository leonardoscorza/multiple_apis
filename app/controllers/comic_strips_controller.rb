require 'open-uri'

class ComicStripsController < ApplicationController

	def ramdom
		doc = Nokogiri::HTML(open('http://c.xkcd.com/random/comic/'))
		doc.encoding = 'utf-8'
		render json: {ramdomUrl: doc.xpath("//img")[2].attributes['src'].value }
	end
end
