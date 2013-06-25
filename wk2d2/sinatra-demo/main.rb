require 'sinatra'
require 'sinatra/reloader'


get '/name/:first/:last' do
	@first_name = params[:first]
	@last_name = params[:last]
	"Hello #{@first_name} #{@last_name}"
end

get '/' do
	"first page"
end
