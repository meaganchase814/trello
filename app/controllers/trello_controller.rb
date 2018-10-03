class TrelloController < ApplicationController
  
  def sticky
    @trello = Posit.all
  end

  def index
    @trello = Posit.new
    @trello.title = params["title"] 
    @trello.body = params["body"] 
    @trello.Category = params["Category"]
    @trello.save
    redirect_to trello_sticky_url
  end
  
  def destroy
    @trello = Posit.find(params[:id])
    @trello.destroy
 
    redirect_to trello_sticky_url
  end

  def update
    
    @trello = Posit.find(params[:id])
    if (@trello.Category == '3')
      @trello.Category = '1'
    elsif (@trello.Category == '1')
      @trello.Category = '2'
    elsif (@trello.Category == '2')
      @trello.Category = '3'
    end
    @trello.save
    redirect_to trello_sticky_url
  end

  
end
