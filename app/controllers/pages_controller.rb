class PagesController < ApplicationController

  def home
    
  end

  def services
    @page_title = "JMFreight | Services"
  end

  def about
    @page_title = "JMFreight | About"
  end

  def contact
    @page_title = "JMFreight | Contact"
  end
end
