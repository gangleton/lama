module LAMA
  class Client
   module Property
     #Get properties associated with a particular incident
     #
     #@param [String] A LAMA identifier for an incident
     #@return [Hashie] Property information
     def properties(num, options={})
        index = options[:index]
        if index.nil?
          get("#{num}/props")
        else
          get("#{num}/props/#{index}")
        end
      end
    end
  end
end
