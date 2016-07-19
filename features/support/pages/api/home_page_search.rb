module Pages
	module Api
	  class HomePageSearch < BaseApi
      attr_reader :session_response
      attr_reader :session_code
      
      def request_suggestion_in_consultation
        url = "#{API_HOST_NAME}/api/v2/suggestions/consultation"
        params = {params: { name: 'm', type: 'point' , hospital: 'true', doctor: 'true', speciality: 'true', ailment: 'true', surgery: 'true', diagnostic_test: 'true', nursing_procedure: 'true', lat: 19.12528, lon: 72.9184, consumer_version: 16 , consumer: 'android'}, content_type: :json, accept: :json, authorization: AUTHORIZATION_TOKEN}
        @session_code = make_get_request(url, params)
      end
      def request_search_in_symptom
        url = "#{API_HOST_NAME}/api/v2/ailments/229/specialities"
        params = {params: { flow: 'Consultation', term: 'Meniere Disease', lat: 19.12528, lon: 72.9184, consumer_version: 16 , consumer: 'android'}, content_type: :json, accept: :json, authorization: AUTHORIZATION_TOKEN}
        @session_code = make_get_request(url, params)
      end

      def request_search_in_doctor
        url = "#{API_HOST_NAME}/api/v2/doctors/117/summary"
        params = {params: { flow: 'Consultation', term: 'Dr Kirtu Daxini', lat: 19.12528, lon: 72.9184, consumer_version: 16 , consumer: 'android'}, content_type: :json, accept: :json, authorization: AUTHORIZATION_TOKEN}
        @session_code = make_get_request(url, params)
      end
      def request_search_in_hospital
        url = "#{API_HOST_NAME}/api/v2/hospitals/293/summary"
        params = {params: { flow: 'Consultation', term: 'Deshmukh Clinic', lat: 19.12528, lon: 72.9184, consumer_version: 16 , consumer: 'android'}, content_type: :json, accept: :json, authorization: AUTHORIZATION_TOKEN}
        @session_code = make_get_request(url, params)
      end

      def request_search_in_disease
        url = "#{API_HOST_NAME}/api/v2/ailments/862/specialities"
        params = {params: { flow: 'Consultation', term: 'Kidney Stones', lat: 19.12528, lon: 72.9184, consumer_version: 16 , consumer: 'android'}, content_type: :json, accept: :json, authorization: AUTHORIZATION_TOKEN}  
        @session_code = make_get_request(url, params)
      end        

      def request_search_in_speciality
        url = "#{API_HOST_NAME}/api/v2/ailments/862/specialities"
        params = {params: { flow: 'Consultation', term: 'Kidney Stones', lat: 19.12528, lon: 72.9184, consumer_version: 16 , consumer: 'android'}, content_type: :json, accept: :json, authorization: AUTHORIZATION_TOKEN}  
        @session_code = make_get_request(url, params)
      end
    end
  end
end
