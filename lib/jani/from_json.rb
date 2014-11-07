require "jani/from_json/version"
require "jani/from_json/builder"

module Jani
  module FromJson
    def self.to_movie(json_data)
      Jani::FromJson::Builder.new(json_data: json_data).new_movie
    end
  end
end
