require './environment'
module FormsLab
  class App < Sinatra::Base
    # code other routes/actions here
    get '/' do
      erb :root
    end
    get '/new' do
      erb :"pirates/new"
    end
    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      @ships = []
      # binding.pry
      params[:pirate][:ships].each do |details|
        @ships << Ship.new(details)
      end
      @ships
      erb :"pirates/show"
    end
  end
end
