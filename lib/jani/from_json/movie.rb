class Jani::FromJson::Movie
  attr_accessor :uuid,
                :frame_height,
                :frame_width,
                :fps,
                :pixel_ratio,
                :loading_banner,
                :postroll_banner,
                :strips,
                :tracking_events,
                :conversion_status

  CONVERTED_STATUS = "converted"
  CONVERTING_STATUS = "converting"
  ERROR_STATUS = "error"

  def initialize
    @strips = []
    @tracking_events =[]
  end

  def display_height
    frame_height / pixel_ratio
  end

  def display_width
    frame_width / pixel_ratio
  end

  def ready?
    conversion_status == CONVERTED_STATUS
  end

  def error?
    conversion_status == ERROR_STATUS
  end

  def converting?
    conversion_status == CONVERTING_STATUS
  end
end
