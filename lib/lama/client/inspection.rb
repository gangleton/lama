module LAMA
  class Client
    module Inspection
      def inspections(options={})
        get("search(from)02-01-2011(to)02-28-2011", options)
      end
    end
  end
end
