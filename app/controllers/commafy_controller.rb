class CommafyController < ApplicationController

  respond_to :json

  def index
    @original = string
    @interval = interval
    @commafied = CommaService::commafied({interval: interval, string: string })
  end

  private

  def string
    params[:string]
  end

  def interval
    params[:interval]
  end

end
