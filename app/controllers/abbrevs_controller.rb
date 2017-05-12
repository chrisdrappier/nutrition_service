class AbbrevsController < ApplicationController
  def show
    render json: Abbrev.find(params[:id]).to_json
  end

  def index
    render json: Abbrev.all.limit(100).to_json
  end
end
