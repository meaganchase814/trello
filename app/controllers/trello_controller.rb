class TrelloController < ApplicationController
  
  def index
    @trello = Posit.new
    @trello.body = params["title"] + params["body"]
    @trello.save
    redirect_to trello_sticky_url
  end
  def sticky
    @trello = Posit.all
  end


  
end
