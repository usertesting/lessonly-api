module Lessonly
  module Api
    class LessonCompletion < Struct.new(:lesson, 
                                        :candidate,
                                        :score, 
                                        :report_card_url, 
                                        :completed_at,
                                        :started_at,
                                        :assigned_at )
    end
  end
end
