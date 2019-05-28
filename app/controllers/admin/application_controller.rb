class Admin::ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout "admin_application"
end
