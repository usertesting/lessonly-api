require 'roar/json'

module Lessonly
  module Api
    module Representers
      module LessonRepresenter
        include Roar::JSON

        property :id
        property :title

      end
    end
  end
end
