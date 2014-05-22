module Blocky
  class ImageController < Blocky::ApplicationController

    def create
      ap "          HERE!!!!!!!!        "
      @file = params.original_filename
      ap @file
      #handle image upload
    end
  end
end