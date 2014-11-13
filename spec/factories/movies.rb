require "jani/from_json/movie"

FactoryGirl.define do
  factory :movie, class: Jani::FromJson::Movie do
    uuid "cfcce0c6-e046-429f-89c0-8a24202ecf89"
    frame_height 360
    frame_width 640
    fps 13
    pixel_ratio 2
    loading_banner nil
    postroll_banner nil
    strips []
    tracking_events []
    conversion_status Jani::FromJson::Movie::CONVERTED_STATUS
  end
end

