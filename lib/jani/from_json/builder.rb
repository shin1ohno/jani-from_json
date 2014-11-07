require "json"
require "jani/from_json/movie"
require "jani/from_json/banner"
require "jani/from_json/strip"
require "jani/from_json/tracking_event"

class Jani::FromJson::Builder
  attr_accessor :json_data

  def initialize(json_data: json_data)
    @json_data = json_data
  end

  def new_movie
    Jani::FromJson::Movie.new.tap do |m|
      m.uuid = hashed_data["uuid"]
      m.frame_width = hashed_data["frame_width"]
      m.frame_height = hashed_data["frame_height"]
      m.fps = hashed_data["fps"]
      m.pixel_ratio = hashed_data["pixel_ratio"]
      m.loading_banner = new_loading_banner
      m.postroll_banner = new_postroll_banner
      m.strips = new_strips
      m.tracking_events = new_tracking_events
    end
  end

  def new_loading_banner
    return Jani::FromJson::Banner.new unless hashed_data["loading_banner"]
    Jani::FromJson::Banner.new.tap { |b| b.image_url = hashed_data["loading_banner"]["image_url"] }
  end

  def new_postroll_banner
    return Jani::FromJson::Banner.new unless hashed_data["postroll_banner"]
    Jani::FromJson::Banner.new.tap do |b|
      b.image_url = hashed_data["postroll_banner"]["image_url"]
      b.url = hashed_data["postroll_banner"]["url"]
    end
  end

  def new_strips
    return [] unless hashed_data["strips"]
    hashed_data["strips"].map do |strip_data|
      Jani::FromJson::Strip.new.tap do |s|
        s.index = strip_data["index"]
        s.image_url = strip_data["image_url"]
        s.frames_count = strip_data["frames_count"]
      end
    end
  end

  def new_tracking_events
    return [] unless hashed_data["tracking_events"]
    hashed_data["tracking_events"].map do |strip_data|
      Jani::FromJson::TrackingEvent.new.tap do |t|
        t.label = strip_data["label"]
        t.url = strip_data["url"]
        t.track_on = strip_data["track_on"]
        t.request_type = strip_data["request_type"]
      end
    end
  end

  private

  def hashed_data
    @hashed_data ||= JSON.parse(@json_data)
  end
end
