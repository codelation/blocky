require "spec_helper"

module Blocky

  describe ContentBlock, ".global" do
    it "returns global content blocks" do
      create(:content_block)
      global_content_block = create(:global_content_block)

      ContentBlock.count.should eq(2)
      ContentBlock.global.should eq([global_content_block])
    end
  end

  describe ContentBlock, ".per_page" do
    it "returns content blocks assigned to specific pages" do
      create(:global_content_block)
      content_block = create(:content_block)

      ContentBlock.count.should eq(2)
      ContentBlock.per_page.should eq([content_block])
    end
  end

  describe ContentBlock, "#global?" do
    it "returns true if there is no controller/action assigned" do
      content_block = build_stubbed(:content_block)
      content_block.global?.should eq(false)
    end

    it "returns false if the content block is assigned to a controller/action" do
      content_block = build_stubbed(:global_content_block)
      content_block.global?.should eq(true)
    end
  end

end
