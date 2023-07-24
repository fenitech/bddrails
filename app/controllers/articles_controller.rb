class ArticlesController < ApplicationController
  
  def index
  end
  
  def new
    @article = Article.new 
  end
  
  def create

   @article = Article.new(article_params)
   
     if @article.save
      flash[:success] = "Article has benn created"
      redirect_to articles_path
      
    else
        flash[:danger] = "Article has not benn created"
        render :new
      
      end


  end


 private

  def article_params  

    params.require(:article).permit(:title, :body)
end

end
