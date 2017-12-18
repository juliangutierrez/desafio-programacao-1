require 'ParseFileService'
class UploadsController < ApplicationController
  def new
  end

  def create
  	if params[:file]
		  @purchases = ParseFileService.new.fire!(params[:file].tempfile)
		end
  end
end
