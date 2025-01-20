module LenelSDK
  class Instance
    attr_accessor :version, :property_value_map

    def initialize(attributes = {})
      attributes.each do |key, value|
        send("#{key}=", value) if respond_to?("#{key}=")
      end
    end
  end
end
