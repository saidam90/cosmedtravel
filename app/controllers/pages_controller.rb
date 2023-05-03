class PagesController < ApplicationController
  def home
    @packages = Package.all
  end

  def about
  end

  def contact
  end
end
