require 'roar/json'
require 'naught'

module Lessonly
  module Api
    module Representers
      module LessonCompletedRepresenter
        include Roar::JSON

        property :lesson, class: Lesson, default: Lesson.null.new
        property :score, class: Score, default: Score.null.new
        property :report_card, class: ReportCard, default: ReportCard.null.new
        property :candidate, class: Candidate, default: Candidate.null.new
        property :completed_at
        property :started_at
        property :assigned_at

      end
    end
  end
end
