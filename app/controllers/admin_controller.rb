class AdminController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "pasword"

  def index

  end

  def new
    @admin = Admin.new
  end

  def show

  end
end
