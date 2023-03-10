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
  class TemplatesTemplateIDPUTRequest
    attr_accessor :project_id

    attr_accessor :template_title

    attr_accessor :template_status

    attr_accessor :brand_id

    attr_accessor :brand_code

    attr_accessor :primary_template_category_item_id

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
        :'project_id' => :'project_id',
        :'template_title' => :'template_title',
        :'template_status' => :'template_status',
        :'brand_id' => :'brand_id',
        :'brand_code' => :'brand_code',
        :'primary_template_category_item_id' => :'primary_template_category_item_id'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'project_id' => :'String',
        :'template_title' => :'String',
        :'template_status' => :'String',
        :'brand_id' => :'Float',
        :'brand_code' => :'String',
        :'primary_template_category_item_id' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `DesignHuddleAdmin::TemplatesTemplateIDPUTRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DesignHuddleAdmin::TemplatesTemplateIDPUTRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'project_id')
        self.project_id = attributes[:'project_id']
      end

      if attributes.key?(:'template_title')
        self.template_title = attributes[:'template_title']
      end

      if attributes.key?(:'template_status')
        self.template_status = attributes[:'template_status']
      else
        self.template_status = 'active'
      end

      if attributes.key?(:'brand_id')
        self.brand_id = attributes[:'brand_id']
      end

      if attributes.key?(:'brand_code')
        self.brand_code = attributes[:'brand_code']
      end

      if attributes.key?(:'primary_template_category_item_id')
        self.primary_template_category_item_id = attributes[:'primary_template_category_item_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @project_id.nil?
        invalid_properties.push('invalid value for "project_id", project_id cannot be nil.')
      end

      if @template_title.nil?
        invalid_properties.push('invalid value for "template_title", template_title cannot be nil.')
      end

      if @template_title.to_s.length > 50
        invalid_properties.push('invalid value for "template_title", the character length must be smaller than or equal to 50.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @project_id.nil?
      return false if @template_title.nil?
      return false if @template_title.to_s.length > 50
      template_status_validator = EnumAttributeValidator.new('String', ["active", "hidden"])
      return false unless template_status_validator.valid?(@template_status)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] template_title Value to be assigned
    def template_title=(template_title)
      if template_title.nil?
        fail ArgumentError, 'template_title cannot be nil'
      end

      if template_title.to_s.length > 50
        fail ArgumentError, 'invalid value for "template_title", the character length must be smaller than or equal to 50.'
      end

      @template_title = template_title
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] template_status Object to be assigned
    def template_status=(template_status)
      validator = EnumAttributeValidator.new('String', ["active", "hidden"])
      unless validator.valid?(template_status)
        fail ArgumentError, "invalid value for \"template_status\", must be one of #{validator.allowable_values}."
      end
      @template_status = template_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          project_id == o.project_id &&
          template_title == o.template_title &&
          template_status == o.template_status &&
          brand_id == o.brand_id &&
          brand_code == o.brand_code &&
          primary_template_category_item_id == o.primary_template_category_item_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [project_id, template_title, template_status, brand_id, brand_code, primary_template_category_item_id].hash
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
