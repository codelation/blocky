module Blocky
  class ContentBlocksController < Blocky::ApplicationController
    layout "blocky/application"

    def edit
      @content_block = Blocky::ContentBlock.find(params[:id])
    end

    def index
      @global_content_blocks = Blocky::ContentBlock.global
      @content_blocks = Blocky::ContentBlock.per_page
    end

  end
end
