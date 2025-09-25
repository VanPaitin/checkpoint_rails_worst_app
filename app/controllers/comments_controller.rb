class CommentsController < ApplicationController
  def new
    @article = Article.find(params[:article_id])

    @comment = @article.comments.new
  end

  def create
    article = Article.find(params[:comment][:article_id])
    article.comments.create(author: params[:comment][:author], body: params[:comment][:body])

    redirect_to article_path(article)
  end
end
