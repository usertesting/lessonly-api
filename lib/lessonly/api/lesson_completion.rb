module Lessonly
  module Api
    class LessonCompletion
      attr_accessor :lesson, 
        :candidate,
        :score, 
        :report_card, 
        :completed_at,
        :started_at,
        :assigned_at
    end
  end
end
