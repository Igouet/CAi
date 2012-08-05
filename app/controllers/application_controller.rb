# encoding: UTF-8
class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  include ApplicationHelper

  before_filter :buscar_posts_populares
  before_filter :buscar_proximos_eventos
end
