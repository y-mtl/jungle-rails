class Admin::DashboardController < ApplicationController
  def show
    basic
  end

  private
  def basic
    authenticate_or_request_with_http_basic do |user, pass|
      user == Rails.configuration.admin[:user] && pass == Rails.configuration.admin[:password]
    end
  end

end
