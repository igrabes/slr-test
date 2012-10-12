class HooksController < ApplicationController
  require 'json'

  def receiver

    @data = request.body.read
    @merge_id = @data['merge_id']
    @file_name = @data['file_name']
    @file = @data['file_contents']
    # @data_json = JSON.parse(request.body.read)

    # respond_to do |format|
      # format.html
      # format.json
    # end
  end
end
