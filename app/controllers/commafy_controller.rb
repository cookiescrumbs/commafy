class CommafyController < ApplicationController

  respond_to :json

  def index
    @original = "12334567"
    @commafied = "123,567"
  end

end
