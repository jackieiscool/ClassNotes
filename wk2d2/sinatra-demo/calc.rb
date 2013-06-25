require 'sinatra'
require 'sinatra/reloader'


get '/multiply/:num1/:num2' do
	answer = params[:num1] * params[:num2]
	'#{answer}'
end

get '/divide/:num1/:num2' do
	answer = params[:num1] / params[:num2]
	'#{answer}'
end

get '/add/:num1/:num2' do
	answer = params[:num1] + params[:num2]
	'#{answer}'
end

get '/subtract/:num1/:num2' do
	answer = params[:num1] - params[:num2]
	'#{answer}'
end