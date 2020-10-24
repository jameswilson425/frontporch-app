class Api::UsersController < ApplicationController
  def test
    @message = "Yay"
    render "test.json.jb"
  end
end
