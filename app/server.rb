require 'sinatra'
require 'aws-record'

get '/' do
  body "hello"
end

get '/:error/:age/*' do
  headers \
    "Cache-Control" => "max-age=#{params[:age]}"
  body "<pre>#{params[:error]} error</pre>\n"
  params[:error].to_i
end

get '/:error/*' do
  body "<pre>#{params[:error]} error</pre>\n"
  params[:error].to_i
end

post '/:error/:age/*' do
  headers \
    "Cache-Control" => "max-age=#{params[:age]}"
  body "<pre>#{params[:error]} error</pre>\n"
  params[:error].to_i
end

post '/:error/*' do
  body "<pre>#{params[:error]} error</pre>\n"
  params[:error].to_i
end
