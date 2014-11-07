require "spec_helper"
require "jani/from_json"

RSpec.describe Jani::FromJson do
  let(:json_data) { build(:builder).json_data }

  describe ".to_movie" do
    subject { Jani::FromJson.to_movie(json_data) }

    it { is_expected.to be_a_kind_of Jani::FromJson::Movie }
  end
end
