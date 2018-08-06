module ApplicationHelper
  def article_preview(article)
    @article = Article.find(article.id)
    truncate(@article.text, length: 100, separator: ' ')
  end
end
