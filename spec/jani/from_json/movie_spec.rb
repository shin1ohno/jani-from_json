require "spec_helper"
require "jani/from_json/movie"

RSpec.describe Jani::FromJson::Movie do
  let(:movie) { build(:movie) }

  describe "display size" do
    it "returns display size not pixel size" do
      expect(movie.display_width).to eq 320
      expect(movie.display_height).to eq 180
    end
  end

  describe "statuses" do
    subject { movie }

    context "when converted" do
      it { is_expected.to be_ready }
    end

    context "when error" do
      before { movie.conversion_status = Jani::FromJson::Movie::ERROR_STATUS }
      it { is_expected.to be_error }
    end

    context "when converting" do
      before { movie.conversion_status = Jani::FromJson::Movie::CONVERTING_STATUS }
      it { is_expected.to be_converting }
    end
  end
end
