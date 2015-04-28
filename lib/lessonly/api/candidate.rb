require 'naught'

module Lessonly
  module Api
    class Candidate
      attr_accessor :id, :ext_uid, :name, :email

      def self.null
        @@null ||= Naught.build do |config| 
          config.mimic Candidate
        end
      end
    end
  end
end
