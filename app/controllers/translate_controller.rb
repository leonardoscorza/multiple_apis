class TranslateController < ApplicationController
load 'lib/translate.rb'
 

  def index
  	begin
  		textTralated = $translate.convertText(params['languageConverted'], params['languageToConvert'], params['text'])
  	rescue
  		textTralated = -1
  	end
  	render json:{answer: textTralated}
  end

end
