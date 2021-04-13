class VotesController < ApplicationController
  def create
    @vote = current_user.votes.new(article_id: params[:article_id])
    if @vote.save
      redirect_to articles_path, notice: 'Thanks for voting.'
    else
      redirect_to articles_path, alert: 'You are not allowed to vote.'
    end
  end

  def destroy
    vote = Vote.find_by(id: params[:id], user: current_user, article_id: params[:article_id])
    if vote
    vote.destroy
      redirect_to articles_path, notice: "You have unvoted."
    else
      redirect_to articles_path, alert: 'You cannot unvote an article you did not vote.'
    end
  end
end
