=begin
#Admin API

#The Admin API represents all functionality that a Design Huddle client administrator may perform. Most API methods do not require a specific user context and can be accessed using an App Access Token for authorization, but some methods must run on behalf of a specific user and therefore must use a User Access Token. The most common integration use cases consist of template management/synchronization and updating/approving/exporting user-created design projects. Read more about authentication <a target=\"_parent\" href=\"https://api.designhuddle.com#authentication\">here</a> and embedding the Design Huddle editor <a target=\"_parent\" href=\"https://api.designhuddle.com#embedding\">here</a>.

The version of the OpenAPI document: 2023-02-02T22:12:58Z
Contact: support@designhuddle.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.3.0

=end

require 'date'
require 'time'

module DesignHuddleAdmin
  class ProjectsProjectIDExportPOSTRequestOneOf1
    attr_accessor :format

    attr_accessor :filename

    attr_accessor :page_id

    attr_accessor :page_ids

    # 300 by default for normal sizes, 150 for large format.
    attr_accessor :dpi

    attr_accessor :bleed

    attr_accessor :notification_url

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'format' => :'format',
        :'filename' => :'filename',
        :'page_id' => :'page_id',
        :'page_ids' => :'page_ids',
        :'dpi' => :'dpi',
        :'bleed' => :'bleed',
        :'notification_url' => :'notification_url'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'format' => :'String',
        :'filename' => :'String',
        :'page_id' => :'String',
        :'page_ids' => :'Array<String>',
        :'dpi' => :'Integer',
        :'bleed' => :'ProjectsProjectIDExportPOSTRequestOneOf1Bleed',
        :'notification_url' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DesignHuddleAdmin::ProjectsProjectIDExportPOSTRequestOneOf1` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DesignHuddleAdmin::ProjectsProjectIDExportPOSTRequestOneOf1`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'format')
        self.format = attributes[:'format']
      end

      if attributes.key?(:'filename')
        self.filename = attributes[:'filename']
      end

      if attributes.key?(:'page_id')
        self.page_id = attributes[:'page_id']
      end

      if attributes.key?(:'page_ids')
        if (value = attributes[:'page_ids']).is_a?(Array)
          self.page_ids = value
        end
      end

      if attributes.key?(:'dpi')
        self.dpi = attributes[:'dpi']
      end

      if attributes.key?(:'bleed')
        self.bleed = attributes[:'bleed']
      end

      if attributes.key?(:'notification_url')
        self.notification_url = attributes[:'notification_url']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @format.nil?
        invalid_properties.push('invalid value for "format", format cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @format.nil?
      format_validator = EnumAttributeValidator.new('String', ["pdf", "png", "jpg"])
      return false unless format_validator.valid?(@format)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] format Object to be assigned
    def format=(format)
      validator = EnumAttributeValidator.new('String', ["pdf", "png", "jpg"])
      unless validator.valid?(format)
        fail ArgumentError, "invalid value for \"format\", must be one of #{validator.allowable_values}."
      end
      @format = format
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          format == o.format &&
          filename == o.filename &&
          page_id == o.page_id &&
          page_ids == o.page_ids &&
          dpi == o.dpi &&
          bleed == o.bleed &&
          notification_url == o.notification_url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [format, filename, page_id, page_ids, dpi, bleed, notification_url].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = DesignHuddleAdmin.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
