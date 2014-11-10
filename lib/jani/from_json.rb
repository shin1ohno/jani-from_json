require "jani/from_json/version"
require "jani/from_json/builder"
require "jani/from_json/movie"

module Jani
  module FromJson
    def self.to_movie(json_data)
      Jani::FromJson::Builder.new(json_data: json_data).new_movie
    end

    def self.empty_movie
      Jani::FromJson::Movie.new
    end
  end
end
