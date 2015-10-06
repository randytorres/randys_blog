class LikesController < ApplicationController
  def create
    @like = Like.new(like_params)

    if @like.save
      redirect_to @like.post, notice: 'Liked that post'
    else
      redirect_to root_url, notice: 'Had an issue creating that like'
    end
   end

   private

     def like_params
      params.require(:like).permit(:post_id)
    end
  end
