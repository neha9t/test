module Pages
	module Api
	  class LoginPage < BaseApi
      attr_reader :session_response, :session_code

      def request_login_sessions(username,pwd)
        url = "#{API_HOST_NAME}/api/v2/sessions"
        params = {params: {lat: 19.12528, lon: 72.9184, consumer_version: 14 , consumer: 'android', device: { device_id: DEVICE_ID, registration_id: REGISTRATION_ID, device_email: 'nitish291991@gmail.com\n' },user: { login: 'username', password: 'pwd' }}, content_type: :json, accept: :json, authorization: AUTHORIZATION_TOKEN}
        make_post_request(url,params)
      end
	  end
	end
end