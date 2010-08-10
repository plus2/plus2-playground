class PlaygroundController < ApplicationController
  def index
    @playground = Playground::Pages.new
    if params['other'].blank?
      render :listing, :layout => Playground.listing_layout
    else
      file = @playground.file_at(params[:other])
      render file.template, :layout => file.layout
    end
  end
end
