class HooksController < ApplicationController
  require 'json'

  def receiver

    @data = request.body.read
    # @data_json = JSON.parse(request.body.read)

    # respond_to do |format|
      # format.html
      # format.json
    # end
  end
end
