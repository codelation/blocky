module Blocky
  class ApplicationController < ActionController::Base
    include Blocky::Auth
    helper Blocky::ApplicationHelper
    layout "blocky/application"
  end
end
