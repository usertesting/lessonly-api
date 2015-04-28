module Lessonly
  module Api
    class Lesson
      attr_accessor :id


      def self.null
        @@null ||= Naught.build do |config| 
          config.black_hole
        end
      end
    end
  end
end
