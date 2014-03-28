module Blocky
  class ContentBlocksController < ApplicationController
    layout "blocky/application"

    def index
      @global_content_blocks = Blocky::ContentBlock.global
      @content_blocks = Blocky::ContentBlock.per_page
    end

  end
end
