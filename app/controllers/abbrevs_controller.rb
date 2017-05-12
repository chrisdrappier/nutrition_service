# controller controller controller
class AbbrevsController < ApplicationController
  def show
    render json: abbrev
  end

  def index
    render json: abbrevs
  end

  private

  def abbrevs
    @abbrevs ||= Abbrev.all.limit(100).to_json
  end

  def abbrev
    @abbrev ||= Abbrev.find_by(ndb_no: params[:id]).to_json
  end
end
