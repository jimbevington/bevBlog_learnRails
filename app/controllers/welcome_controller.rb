class WelcomeController < ApplicationController
  def index
    @articles = Article.order('created_at DESC').first(4)
  end
end
