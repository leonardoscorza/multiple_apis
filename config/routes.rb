Apis::Application.routes.draw do
  get 'translate' => 'translate#index'
  get 'comicStripsRamdom' => 'comicStrips#ramdom'
end
