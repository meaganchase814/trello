class TrelloController < ApplicationController
  
  def sticky
    @trello = posit.new
    @trello.posit = params["notes"]
    @trello.save
  end
end
