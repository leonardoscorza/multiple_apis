require 'open-uri'

class ComicStripsController < ApplicationController

	def ramdom
		doc = Nokogiri::HTML(open('http://c.xkcd.com/random/comic/'))
		doc.encoding = 'utf-8'
		send_file( open(doc.xpath("//img")[2].attributes['src'].value),
      	:disposition => 'inline',
      	:type => 'image/jpeg',
      	:x_sendfile => true )
	end
end
