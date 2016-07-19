module Pages
	module Api
	  class HomePage < BaseApi
      attr_reader :session_response, :session_code

      def request_near_by_consultation_doctors
        url = "#{API_HOST_NAME}/api/v2/doctors"
        params = {params: {lat: 19.12528, lon: 72.9184, consumer_version: 14 , consumer: 'android', type: 'point', column: 'distance', flow: 'consultation', rad: '5000.0' }, content_type: :json, accept: :json, authorization: AUTHORIZATION_TOKEN}
        @session_code = make_get_request(url, params)
      end

      def request_near_by_consultation_hospitals
      	url = "#{API_HOST_NAME}/api/v2/hospitals"
        params = {params: {lat: 19.12528, lon: 72.9184, consumer_version: 14 , consumer: 'android', type: 'point', column: 'distance', flow: 'consultation', rad: '5000.0' }, content_type: :json, accept: :json, authorization: AUTHORIZATION_TOKEN}
        @session_code = make_get_request(url, params)
      end

      def request_near_by_surgery_hospitals
      	url = "#{API_HOST_NAME}/api/v2/hospitals"
        params = {params: {lat: 19.12528, lon: 72.9184, consumer_version: 14 , consumer: 'android', type: 'point', column: 'distance', flow: 'surgery', rad: '5000.0' }, content_type: :json, accept: :json, authorization: AUTHORIZATION_TOKEN}
        @session_code = make_get_request(url, params)
      end

      def request_near_by_surgery_doctors
      	url = "#{API_HOST_NAME}/api/v2/doctors"
        params = {params: {lat: 19.12528, lon: 72.9184, consumer_version: 14 , consumer: 'android', type: 'point', column: 'distance', flow: 'surgery', rad: '5000.0' }, content_type: :json, accept: :json, authorization: AUTHORIZATION_TOKEN}
        @session_code = make_get_request(url, params)
      end

      def request_near_by_diagnostic_hospitals
      	url = "#{API_HOST_NAME}/api/v2/hospitals"
        params = {params: {lat: 19.12528, lon: 72.9184, consumer_version: 14 , consumer: 'android', type: 'point', column: 'distance', flow: 'surgery', rad: '5000.0' }, content_type: :json, accept: :json, authorization: AUTHORIZATION_TOKEN}
        @session_code = make_get_request(url, params)
      end

      def request_diagnostic_tests
      	url = "#{API_HOST_NAME}/api/v2/diagnostic_tests"
        params = {params: {lat: 19.12528, lon: 72.9184, consumer_version: 14 , consumer: 'android' }, content_type: :json, accept: :json, authorization: AUTHORIZATION_TOKEN}
        @session_code = make_get_request(url, params) 
      end

      def request_suggestions_specialities
      	url = "#{API_HOST_NAME}/api/v2/suggestions/specialities"
        params = {params: {lat: 19.12528, lon: 72.9184, consumer_version: 14 , consumer: 'android' }, content_type: :json, accept: :json, authorization: AUTHORIZATION_TOKEN}
        @session_code = make_get_request(url, params)
      end

      def request_suggestions_ailments
      	url = "#{API_HOST_NAME}/api/v2/suggestions/ailments"
        params = {params: {lat: 19.12528, lon: 72.9184, consumer_version: 14 , consumer: 'android' }, content_type: :json, accept: :json, authorization: AUTHORIZATION_TOKEN}
        @session_code = make_get_request(url, params)
      end

	  end
	end
end