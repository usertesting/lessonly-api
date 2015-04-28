require 'roar/json'

module Lessonly
  module Api
    module Representers
      module CandidateRepresenter
        include Roar::JSON

        property :id
        property :ext_uid
        property :name
        property :email
      end
    end
  end
end
