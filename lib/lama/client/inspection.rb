module LAMA
  class Client
    module Inspection
      def inspections(num, index=0, options={})
        get("#{num}/inspections/#{index}")
      end
    end
  end
end
