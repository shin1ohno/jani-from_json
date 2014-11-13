require "spec_helper"
require "jani/from_json/builder"

RSpec.describe Jani::FromJson::Builder do
  let(:builder) { build(:builder) }

  describe "#new_movie" do
    subject(:movie) { builder.new_movie }

    it "instantiats movie instance" do
      is_expected.to be_a_kind_of Jani::FromJson::Movie
    end

    it "sets metadatas to the instance" do
      expect(movie.uuid).to eq "cfcce0c6-e046-429f-89c0-8a24202ecf89"
      expect(movie.frame_width).to eq 640
      expect(movie.frame_height).to eq 360
      expect(movie.fps).to eq 13
      expect(movie.pixel_ratio).to eq 2
      expect(movie.conversion_status).to eq Jani::FromJson::Movie::CONVERTED_STATUS
    end
  end

  describe "#new_loading_banner" do
    subject(:banner) { builder.new_loading_banner }

    it "instantiats movie instance" do
      is_expected.to be_a_kind_of Jani::FromJson::Banner
    end

    it "sets metadatas to the instance" do
      expect(banner.image_url).to eq "http://example.com/strips/cfcce0c6-e046-429f-89c0-8a24202ecf89/640_360_1.jpg"
      expect(banner.url).to be_nil
    end
  end

  describe "#new_postroll_banner" do
    subject(:banner) { builder.new_postroll_banner }

    it "instantiats movie instance" do
      is_expected.to be_a_kind_of Jani::FromJson::Banner
    end

    it "sets metadatas to the instance" do
      expect(banner.image_url).to eq "http://example.com/strips/cfcce0c6-e046-429f-89c0-8a24202ecf89/640_360_5.jpg"
      expect(banner.url).to eq "http://example.com"
    end
  end

  describe "#new_strips" do
    subject { builder.new_strips }
    let(:first_strip) { subject[0] }
    let(:last_strip) { subject[-1] }

    it "instantiats strip instances" do
      is_expected.to be_a_kind_of Array
      is_expected.to have(16).items
    end

    it "sets metadatas to the instances" do
      expect(first_strip.index).to eq 1
      expect(first_strip.image_url).to eq "http://example.com/strips/cfcce0c6-e046-429f-89c0-8a24202ecf89/0001.jpg"
      expect(first_strip.frames_count).to eq 13

      expect(last_strip.index).to eq 16
      expect(last_strip.image_url).to eq "http://example.com/strips/cfcce0c6-e046-429f-89c0-8a24202ecf89/0016.jpg"
      expect(last_strip.frames_count).to eq 3
    end
  end

  describe "#new_tracking_events" do
    subject { builder.new_tracking_events }
    let(:creative_view) { subject[0] }
    let(:complete) { subject[1] }

    it "instantiats strip instances" do
      is_expected.to be_a_kind_of Array
      is_expected.to have(2).items
    end

    it "sets metadatas to the instances" do
      expect(creative_view.label).to eq "creative_view"
      expect(creative_view.url).to eq "/track?event=creative_view"
      expect(creative_view.request_type).to eq "xhr"
      expect(creative_view.track_on).to be_nil

      expect(complete.label).to eq "complete"
      expect(complete.url).to eq "/track?event=complete"
      expect(complete.request_type).to eq "img"
      expect(complete.track_on).to eq 30
    end
  end
end
