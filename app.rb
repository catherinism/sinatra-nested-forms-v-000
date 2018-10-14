require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      let's navigate to the '/new'
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/new' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
      @ships = Ship.all
      erb :"pirates/new"
    end

  end
end
