require 'rest-client'
require 'open-uri'

class Translate
	$translateObj = ''


	def initialize
	end


	def convertText(language_from, language_to, text)
		url = "https://translate.google.com/translate_a/single?client=t&sl=#{language_from}&tl=#{language_to}&hl=en&dt=bd&dt=ex&dt=ld&dt=md&dt=qc&dt=rw&dt=rm&dt=ss&dt=t&ie=UTF-8&oe=UTF-8&oc=1&otf=1&ssel=0&tsel=0&q=#{URI.escape(text)}"
			response = RestClient.get(
			  url, {:user_agent => "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.146 Safari/537.36", :cookies => {:_ga => "GA1.3.1669895849.1402852165", :PREF => "ID=89af926e087cbbb0:U=3c40bca583a91f52:TM=1402852153:LM=1402852222:S=zIfzdZo1mCEwYqLu", :NID => "67=RP6Ux3LZBWb2cma8fAP9Xjh9RbLawvZ3-Wj7cuyaL4Ow2ex4JPi5cSQwEKy4IfZSMoGNOrvi4GU9aZLaKzH3jpIWmoz-rTpDubtIrmNgIOA1w2dUusiJiOd7nytHP89H"}}
		)
	    response.scan(/"([^"]*)"/)[0][0]	
	end


end

$translate = Translate.new