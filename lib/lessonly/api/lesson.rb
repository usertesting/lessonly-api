require 'naught'

module Lessonly
  module Api
    class Lesson
      attr_accessor :id, :title

      def self.null
        @@null ||= Naught.build do |config| 
          config.mimic Lesson
        end
      end
    end
  end
end
