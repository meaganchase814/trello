class TrelloController < ApplicationController
  
  def index
    @trello = Posit.new
    @trello.title = params["title"] 
    @trello.body = params["body"] 
    @trello.save
    redirect_to trello_sticky_url
  end
  def sticky
    @trello = Posit.all
  end
  def destroy
    @trello = Posit.find(params[:id])
    @trello.destroy
 
    redirect_to trello_sticky_url
  end

  #organize stickys into the right column

  
end
