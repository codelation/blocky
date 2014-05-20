module Blocky
  class ContentBlocksController < Blocky::ApplicationController
    before_action :set_content_block, only: [:edit, :update]
    layout "blocky/application"

    def edit
    end

    def index
      @global_content_blocks = Blocky::ContentBlock.global
      @content_blocks = Blocky::ContentBlock.per_page
    end

    def update
      if @content_block.update(content_block_params)
        redirect_to content_blocks_path, notice: "Content was updated successfully."
      else
        render action: :edit
      end
    end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_content_block
      @content_block = Blocky::ContentBlock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def content_block_params
      params.require(:content_block).permit(:content)
    end

  end
end
