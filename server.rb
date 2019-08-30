require "sinatra"
require "sinatra/activerecord"
require "json"

require_relative './app/models/ticket.rb'

class Server < Sinatra::Base
    get '/' do
        erb :index
    end

    get '/columns' do
        columns = Ticket.all.group_by { |ticket| ticket.column }
        columns = columns.map { |col| [col.first.column, col] }.to_h
        column.to_json
    end
end