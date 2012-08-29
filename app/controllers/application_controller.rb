# encoding: UTF-8
class ApplicationController < ActionController::Base
  protect_from_forgery
  helper :all
  include SessionsHelper
  include ApplicationHelper

  before_filter :buscar_posts_populares
  before_filter :buscar_proximos_eventos

  private
  def mobile_device?
    request.user_agent =~ /Mobile|webOS/
  end
  helper_method :mobile_device?

end
