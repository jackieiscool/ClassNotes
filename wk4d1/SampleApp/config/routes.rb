SampleApp::Application.routes.draw do
  
  root to: 'home#start'

  get '/start' => 'home#start'
  get '/a' => 'home#a'
  get '/b' => 'home#b'
  get '/1' => 'home#one'
  get '/2' => 'home#two'
  get '/door' => 'home#door'

end
