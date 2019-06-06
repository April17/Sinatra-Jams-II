class InstrumentsController < ApplicationController

  get '/instruments/:id' do
    @instrument = Instrument.find_by(id: params[:id])
    @artists = @instrument.artists
    erb :"instruments/show"
  end

end
