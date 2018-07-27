class SearchController < ApplicationController

  def index
    @search_presenter = Presenter.new(params)
  end

end