require 'sinatra'
require_relative 'roman_numerals.rb'
enable :sessions

get '/' do 
  erb :first_page, locals:{answer: " "}
end
post '/convert' do
  number = params[:number].to_i
  answer = roman_converter(number)
  session[:answer] = answer
  erb :first_page, locals:{answer: session[:answer]}
end   