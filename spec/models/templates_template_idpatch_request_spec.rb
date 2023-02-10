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

# Unit tests for DesignHuddleAdmin::TemplatesTemplateIDPATCHRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe DesignHuddleAdmin::TemplatesTemplateIDPATCHRequest do
  let(:instance) { DesignHuddleAdmin::TemplatesTemplateIDPATCHRequest.new }

  describe 'test an instance of TemplatesTemplateIDPATCHRequest' do
    it 'should create an instance of TemplatesTemplateIDPATCHRequest' do
      expect(instance).to be_instance_of(DesignHuddleAdmin::TemplatesTemplateIDPATCHRequest)
    end
  end
  describe 'test attribute "template_code"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "template_title"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "template_status"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["active", "hidden"])
      # validator.allowable_values.each do |value|
      #   expect { instance.template_status = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "brand_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "brand_code"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "user_groups_match_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["whitelist", "blacklist"])
      # validator.allowable_values.each do |value|
      #   expect { instance.user_groups_match_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "user_group_ids"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "user_group_codes"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "replace_user_groups"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "primary_template_category_item_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
