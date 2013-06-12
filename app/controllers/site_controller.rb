class SiteController < ApplicationController
  before_filter :authorize

  def index
    current_user
    gon.rabl "app/views/site/user.json.rabl"
  end

end
