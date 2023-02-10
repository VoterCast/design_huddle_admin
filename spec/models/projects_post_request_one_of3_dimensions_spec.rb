=begin
#Admin API

#The Admin API represents all functionality that a Design Huddle client administrator may perform. Most API methods do not require a specific user context and can be accessed using an App Access Token for authorization, but some methods must run on behalf of a specific user and therefore must use a User Access Token. The most common integration use cases consist of template management/synchronization and updating/approving/exporting user-created design projects. Read more about authentication <a target=\"_parent\" href=\"https://api.designhuddle.com#authentication\">here</a> and embedding the Design Huddle editor <a target=\"_parent\" href=\"https://api.designhuddle.com#embedding\">here</a>.

The version of the OpenAPI document: 2023-02-02T22:12:58Z
Contact: support@designhuddle.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.3.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for DesignHuddleAdmin::ProjectsPOSTRequestOneOf3Dimensions
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe DesignHuddleAdmin::ProjectsPOSTRequestOneOf3Dimensions do
  let(:instance) { DesignHuddleAdmin::ProjectsPOSTRequestOneOf3Dimensions.new }

  describe 'test an instance of ProjectsPOSTRequestOneOf3Dimensions' do
    it 'should create an instance of ProjectsPOSTRequestOneOf3Dimensions' do
      expect(instance).to be_instance_of(DesignHuddleAdmin::ProjectsPOSTRequestOneOf3Dimensions)
    end
  end
  describe 'test attribute "width"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "height"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "unit_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["px", "in", "mm"])
      # validator.allowable_values.each do |value|
      #   expect { instance.unit_type = value }.not_to raise_error
      # end
    end
  end

end
