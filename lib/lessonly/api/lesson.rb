require 'naught'

module Lessonly
  module Api
    class Lesson < Struct.new(:id,:title)
      def self.null
        @@null ||= Naught.build do |config| 
          config.mimic Lesson
        end
      end
    end
  end
end
