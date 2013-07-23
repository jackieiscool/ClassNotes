require 'sinatra'

get '/' do
	'Hello world #{ENV[TWITTER_KEY]}'
end