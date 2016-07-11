module Pages
	module Api
		class DrawerPage < BaseApi
			attr_reader :session_code
			def request_help_page_api
				url = "#{API_HOST_NAME}/json_files/faq.json"
        params = {params: {lat: 19.12528, lon: 72.9184, consumer_version: 14 , consumer: 'android'}, content_type: :json, accept: :json, authorization: AUTHORIZATION_TOKEN}
        begin
          @session_response = RestClient.get(url,params)
          @session_code = @session_response.code
          puts @session_code
        rescue Exception => e
          @session_response = JSON.parse(e.response)
          @session_response = @session_response['info']
          @session_code = e.http_code
          puts @session_code
        end
			end

			def request_my_reviews_approved_api
				url = "#{API_HOST_NAME}/api/v2/reviews"
        params = {params: {lat: 19.12528, lon: 72.9184, consumer_version: 14 , consumer: 'android', filter: 'approved'}, content_type: :json, accept: :json, authorization: AUTHORIZATION_TOKEN }
        begin
          @session_response = RestClient.get(url, params)
          @session_code = @session_response.code
          puts @session_code
        rescue Exception => e
          @session_response = JSON.parse(e.response)
          @session_response = @session_response['info']
          @session_code = e.http_code
          puts @session_code
        end
      end
       
    	def request_my_reviews_unapproved_api
				url = "#{API_HOST_NAME}/api/v2/reviews"
      	params = {params: {lat: 19.12528, lon: 72.9184, consumer_version: 14 , consumer: 'android', filter: 'unapproved'},  content_type: :json, accept: :json, authorization: AUTHORIZATION_TOKEN}
      	begin
        	@session_response = RestClient.get(url, params)
        	@session_code = @session_response.code
        	puts @session_code
      	rescue Exception => e
        	@session_response = JSON.parse(e.response)
        	@session_response = @session_response['info']
        	@session_code = e.http_code
        	puts @session_code
      	end
     	end

    	def request_privacy_api
    		url = "#{API_HOST_NAME}/json_files/privacy.json"
      	params = {params: {lat: 19.12528, lon: 72.9184, consumer_version: 14 , consumer: 'android'},  content_type: :json, accept: :json, authorization: AUTHORIZATION_TOKEN}
      	begin
        	@session_response = RestClient.get(url, params)
        	@session_code = @session_response.code
        	puts @session_code
      	rescue Exception => e
        	@session_response = JSON.parse(e.response)
        	@session_response = @session_response['info']
        	@session_code = e.http_code
        	puts @session_code
      	end
    	end

    	def request_t_and_c_api
    		url = "#{API_HOST_NAME}/json_files/terms.json"
      	params = {params: {lat: 19.12528, lon: 72.9184, consumer_version: 14 , consumer: 'android'},  content_type: :json, accept: :json, authorization: AUTHORIZATION_TOKEN}
      	begin
        	@session_response = RestClient.get(url, params)
        	@session_code = @session_response.code
        	puts @session_code
      	rescue Exception => e
        	@session_response = JSON.parse(e.response)
        	@session_response = @session_response['info']
        	@session_code = e.http_code
        	puts @session_code
      	end
    	end

    	def request_contact_us_api
    		url = "#{API_HOST_NAME}/api/v1/contactusdetail"
      	params = {params: {lat: 19.12528, lon: 72.9184, consumer_version: 14 , consumer: 'android', email: "nehatandon.vit@gmail.com", message: "hshhsus", name: "Neha Tandon", phone: "9494854554" },  content_type: :json, accept: :json, authorization: AUTHORIZATION_TOKEN}
      	begin
        	@session_response = RestClient.post(url, params)
        	@session_code = @session_response.code
        	puts @session_code
      	rescue Exception => e
        	@session_response = JSON.parse(e.response)
        	@session_response = @session_response['info']
        	@session_code = e.http_code
        	puts @session_code
      	end
    	end
		end
	end
end