require "spec_helper"
require "jani/from_json"

RSpec.describe Jani::FromJson do
  let(:json_data) { build(:builder).json_data }

  describe ".to_movie" do
    subject { Jani::FromJson.to_movie(json_data) }

    it { is_expected.to be_a_kind_of Jani::FromJson::Movie }
  end

  describe ".empty_movie" do
    subject { Jani::FromJson.empty_movie }

    it "returns empty movie" do
      is_expected.to be_a_kind_of Jani::FromJson::Movie
      expect(subject.strips).to be_empty
      expect(subject.tracking_events).to be_empty
    end
  end
end
