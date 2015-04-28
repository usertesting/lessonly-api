module Lessonly
  module Api
    class Candidate
      include Nullable
      attr_accessor :id, :ext_id, :name, :email
    end
  end
end
