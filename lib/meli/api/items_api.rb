=begin
#MELI Markeplace SDK

#This is a the codebase to generate a SDK for Open Platform Marketplace

The version of the OpenAPI document: 3.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module Meli
  class ItemsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Return a Item.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def items_id_get(id, opts = {})
      data, _status_code, _headers = items_id_get_with_http_info(id, opts)
      data
    end

    # Return a Item.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def items_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ItemsApi.items_id_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ItemsApi.items_id_get"
      end
      # resource path
      local_var_path = '/items/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Object' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ItemsApi#items_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a Item.
    # @param id [String] 
    # @param access_token [String] 
    # @param item [Item] 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def items_id_put(id, access_token, item, opts = {})
      data, _status_code, _headers = items_id_put_with_http_info(id, access_token, item, opts)
      data
    end

    # Update a Item.
    # @param id [String] 
    # @param access_token [String] 
    # @param item [Item] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def items_id_put_with_http_info(id, access_token, item, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ItemsApi.items_id_put ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ItemsApi.items_id_put"
      end
      # verify the required parameter 'access_token' is set
      if @api_client.config.client_side_validation && access_token.nil?
        fail ArgumentError, "Missing the required parameter 'access_token' when calling ItemsApi.items_id_put"
      end
      # verify the required parameter 'item' is set
      if @api_client.config.client_side_validation && item.nil?
        fail ArgumentError, "Missing the required parameter 'item' when calling ItemsApi.items_id_put"
      end
      # resource path
      local_var_path = '/items/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'access_token'] = access_token

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(item) 

      # return_type
      return_type = opts[:return_type] || 'Object' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ItemsApi#items_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a Item.
    # @param access_token [String] 
    # @param item [Item] 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def items_post(access_token, item, opts = {})
      data, _status_code, _headers = items_post_with_http_info(access_token, item, opts)
      data
    end

    # Create a Item.
    # @param access_token [String] 
    # @param item [Item] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def items_post_with_http_info(access_token, item, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ItemsApi.items_post ...'
      end
      # verify the required parameter 'access_token' is set
      if @api_client.config.client_side_validation && access_token.nil?
        fail ArgumentError, "Missing the required parameter 'access_token' when calling ItemsApi.items_post"
      end
      # verify the required parameter 'item' is set
      if @api_client.config.client_side_validation && item.nil?
        fail ArgumentError, "Missing the required parameter 'item' when calling ItemsApi.items_post"
      end
      # resource path
      local_var_path = '/items'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'access_token'] = access_token

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(item) 

      # return_type
      return_type = opts[:return_type] || 'Object' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ItemsApi#items_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
