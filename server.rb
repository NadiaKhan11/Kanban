require "sinatra"
require "active_record"
require "sinatra/activerecord"
require "json"

require_relative './app/models/ticket.rb'

class Server < Sinatra::Base
    get '/' do
        erb :index
    end

    get '/tickets' do
        erb :tickets
    end
end