require 'roar/json'
require 'naught'

module Lessonly
  module Api
    module Representers
      module LessonCompletedRepresenter
        include Roar::JSON

        property :lesson, class: Lesson, default: Lesson.null.new

      end
    end
  end
end
