module Lessonly
  module Api
    module Nullable
      def self.included(base)
        base.extend(ClassMethods)
      end
      
      module ClassMethods
        def null
          @@null ||= Naught.build do |config| 
            config.black_hole
          end
        end
      end
    end
  end
end
