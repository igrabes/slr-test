class HooksController < ApplicationController
  require 'json'

  def receiver

    @data_json = JSON.parse(request.body.read)

    respond_to do |format|
      format.html
      format.json
    end
  end
end
