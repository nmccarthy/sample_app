class PagesController < ApplicationController
  def home
    @title_tag = "Home"
  end

  def contact
    @title_tag = "Contact"
  end
  
  def about
    @title_tag = "About"
  end

  def help
    @title_tag = "Help"
  end

end
