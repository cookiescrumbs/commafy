class CommafyController < ApplicationController

  respond_to :json

  def index
    @original = string
    @interval = interval
    @commafied = CommaService::commafied(string: string, interval: interval)
  end

  private

  def string
    params[:string]
  end

  def interval
    params[:interval]
  end

end
