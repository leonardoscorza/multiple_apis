class ComicStripsController < ApplicationController
	require 'nokogiri'
	require 'open-uri'

	def ramdom
		doc = Nokogiri::HTML(open('http://c.xkcd.com/random/comic/'))
		doc.encoding = 'utf-8'
		send_file( open(doc.xpath("//img")[1].attributes['src'].value.sub! '//', '//' ),
      	:disposition => 'inline',
      	:type => 'image/jpeg',
      	:x_sendfile => true )
	end
end
