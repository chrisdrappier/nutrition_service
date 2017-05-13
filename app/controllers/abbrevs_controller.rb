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
    @abbrevs ||= Abbrev.where(" id > ? ", offset).limit(per_page).to_json
  end

  def abbrev
    @abbrev ||= Abbrev.find_by(ndb_no: params[:id]).to_json
  end

  def page
    params[:page] ||= 0
  end

  def per_page
    100
  end

  def offset
    page.to_i * per_page
  end
end
