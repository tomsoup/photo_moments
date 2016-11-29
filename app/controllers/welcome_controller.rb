class WelcomeController < ApplicationController
  #skip auth only for index
  skip_before_action :authenticate_user!, only: [:index]
  def index
  end
end
