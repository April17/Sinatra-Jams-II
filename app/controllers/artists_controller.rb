class ArtistsController < ApplicationController

  get '/artists' do
    @artists = Artist.all
    erb :"artists/index"
  end

  get '/artists/:id' do
    # binding.pry
    @artist = Artist.find_by(id: params[:id])
    @instruments = @artist.instruments
    erb :"artists/show"
  end

  get '/artists/:id/edit' do
    # binding.pry
    @artist = Artist.find_by(id: params[:id])
    @instruments = Instrument.all
    erb :"artists/edit"
  end

  patch '/artists/:id' do
    @artist = Artist.find_by(id: params[:id])
    # binding.pry
    params["artist"]["instrument_ids"].each do |instrument_id|
      Artinst.create(artist_id: @artist.id, instrument_id: instrument_id)
    end
    redirect "/artists/#{@artist.id}"

  end
end
