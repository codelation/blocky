module Blocky
  class ApplicationController < ActionController::Base
    helper Blocky::ApplicationHelper
    layout "blocky/application"
  end
end
