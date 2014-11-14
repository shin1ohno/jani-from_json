require "jani/from_json/builder"

FactoryGirl.define do
  factory :builder, class: Jani::FromJson::Builder do
    json_data '{
                    "uuid": "cfcce0c6-e046-429f-89c0-8a24202ecf89",
                    "frame_width": 640,
                    "frame_height": 360,
                    "fps": 13,
                    "source_url": "http://example.com/uploads/production/movies/cfcce0c6-e046-429f-89c0-8a24202ecf89/video_1280_720_30fps.mp4",
                    "pixel_ratio": 2,
                    "conversion_status": "converted",
                    "loading_banner": {
                      "image_url": "http://example.com/strips/cfcce0c6-e046-429f-89c0-8a24202ecf89/640_360_1.jpg"
                    },
                    "postroll_banner": {
                      "image_url": "http://example.com/strips/cfcce0c6-e046-429f-89c0-8a24202ecf89/640_360_5.jpg",
                      "url": "http://example.com"
                    },
                    "tracking_events": [
                      {
                        "label": "creative_view",
                        "url": "/track?event=creative_view",
                        "track_on":null,
                        "request_type":"xhr"
                      },
                      {
                        "label":"complete",
                        "url":"/track?event=complete",
                        "track_on":30,
                        "request_type":"img"
                      }
                    ],
                    "strips": [
                      {
                        "index": 1,
                        "image_url": "http://example.com/strips/cfcce0c6-e046-429f-89c0-8a24202ecf89/0001.jpg",
                        "frames_count": 13
                      },
                      {
                        "index": 2,
                        "image_url": "http://example.com/strips/cfcce0c6-e046-429f-89c0-8a24202ecf89/0002.jpg",
                        "frames_count": 13
                      },
                      {
                        "index": 3,
                        "image_url": "http://example.com/strips/cfcce0c6-e046-429f-89c0-8a24202ecf89/0003.jpg",
                        "frames_count": 13
                      },
                      {
                        "index": 4,
                        "image_url": "http://example.com/strips/cfcce0c6-e046-429f-89c0-8a24202ecf89/0004.jpg",
                        "frames_count": 13
                      },
                      {
                        "index": 5,
                        "image_url": "http://example.com/strips/cfcce0c6-e046-429f-89c0-8a24202ecf89/0005.jpg",
                        "frames_count": 13
                      },
                      {
                        "index": 6,
                        "image_url": "http://example.com/strips/cfcce0c6-e046-429f-89c0-8a24202ecf89/0006.jpg",
                        "frames_count": 13
                      },
                      {
                        "index": 7,
                        "image_url": "http://example.com/strips/cfcce0c6-e046-429f-89c0-8a24202ecf89/0007.jpg",
                        "frames_count": 13
                      },
                      {
                        "index": 8,
                        "image_url": "http://example.com/strips/cfcce0c6-e046-429f-89c0-8a24202ecf89/0008.jpg",
                        "frames_count": 13
                      },
                      {
                        "index": 9,
                        "image_url": "http://example.com/strips/cfcce0c6-e046-429f-89c0-8a24202ecf89/0009.jpg",
                        "frames_count": 13
                      },
                      {
                        "index": 10,
                        "image_url": "http://example.com/strips/cfcce0c6-e046-429f-89c0-8a24202ecf89/0010.jpg",
                        "frames_count": 13
                      },
                      {
                        "index": 11,
                        "image_url": "http://example.com/strips/cfcce0c6-e046-429f-89c0-8a24202ecf89/0011.jpg",
                        "frames_count": 13
                      },
                      {
                        "index": 12,
                        "image_url": "http://example.com/strips/cfcce0c6-e046-429f-89c0-8a24202ecf89/0012.jpg",
                        "frames_count": 13
                      },
                      {
                        "index": 13,
                        "image_url": "http://example.com/strips/cfcce0c6-e046-429f-89c0-8a24202ecf89/0013.jpg",
                        "frames_count": 13
                      },
                      {
                        "index": 14,
                        "image_url": "http://example.com/strips/cfcce0c6-e046-429f-89c0-8a24202ecf89/0014.jpg",
                        "frames_count": 13
                      },
                      {
                        "index": 15,
                        "image_url": "http://example.com/strips/cfcce0c6-e046-429f-89c0-8a24202ecf89/0015.jpg",
                        "frames_count": 13
                      },
                      {
                        "index": 16,
                        "image_url": "http://example.com/strips/cfcce0c6-e046-429f-89c0-8a24202ecf89/0016.jpg",
                        "frames_count": 3
                      }
                    ]
                  }'
  end
end
