class AbbrevsController < ApplicationController
  def show
    render json: Abbrev.find(params[:id]).to_json
  end

  def index
    render json: Abbrev.all.to_json
  end
end
