class Api::InstrumentsController < ApplicationController
  def index
    @instruments = Instrument.all
    render "index.json.jb"
  end
end
