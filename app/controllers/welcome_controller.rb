class WelcomeController < ApplicationController

  layout 'welcome'


  def index

  end

  def news
    @articles = Article.paginate(:page => params[:page], :per_page => 3)
  end

  def ruby
  end

  def java
  end

  def php
  end

  def contact
  end
end
