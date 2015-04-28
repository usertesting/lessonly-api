require 'roar/json'

module Lessonly
  module Api
    module Representers
      module LessonCompletedRepresenter
        include Roar::JSON

        property :lesson, class: Lesson, extend: LessonRepresenter, default: Lesson.null.new
        property :score
        property :report_card_url
        property :candidate, as: :user, class: Candidate, extend: CandidateRepresenter, default: Candidate.null.new
        property :completed_at
        property :started_at
        property :assigned_at

      end
    end
  end
end
