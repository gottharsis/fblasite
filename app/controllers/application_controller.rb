class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :setup_vars
  def setup_vars
    @links = %w(openings resume application interview)
    @link_text = %w(openings r&eacute;sum&eacute; application interview)
  end
end
