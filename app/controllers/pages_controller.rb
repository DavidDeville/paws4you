class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :conditions ]

  def home
  end
  def conditions
  end
end
