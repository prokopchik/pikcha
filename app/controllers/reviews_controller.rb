class ReviewsController < ApplicationController
    def new
      @review = Review.new
    end
  
    def create
       @review = Review.new(review_params)
  
      if @review.save

        ReviewMailer.new_review(@review).deliver
        flash.notice = 'Ваш отзыв успешно добавлен'
        redirect_to root_path
      else
        render :new
      end
    end
   
    private
  
    def review_params
      params.require(:review).permit(:name, :email,
        :discription)
    end
  end