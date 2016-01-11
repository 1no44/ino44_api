class ApplicationController < ActionController::Base
  after_filter :set_default_headers
  protect_from_forgery
  private
  DEFAULT_HEADERS = {
    'Access-Control-Allow-Origin' => '*'
  }.freeze

  def set_default_headers
    DEFAULT_HEADERS.each_pair do |key, val|
      response.headers[key] = val
    end
  end
end
