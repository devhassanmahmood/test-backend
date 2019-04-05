class Api::V1::AppsController < ApplicationController

  before_action :requires_login, only: [:index]

 def index
   render json: App.all
 end
end
