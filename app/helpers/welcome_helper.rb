module WelcomeHelper
  def article_preview(id)
    @article = Article.find(id)
    truncate(@article.text, length: 100, separator: ' ')
  end
end
