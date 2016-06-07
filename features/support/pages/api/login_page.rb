module Pages
	module Api
	  class LoginPage < BaseApi
      attr_reader :session_response
      attr_reader :session_code
      def request_login_sessions(username,pwd)
        url = "#{API_HOST_NAME}/api/v2/sessions"
        params ={
          "device":
          {
            "device_id": DEVICE_ID,"registration_id": REGISTRATION_ID,"device_email":"nitish291991@gmail.com\n"
          },
          "user":
          {
           "login": username ,"password": pwd
          }
        }  
        begin
          @session_response = RestClient.post(url,params, :content_type=>:json, :accept => :json)
        rescue Exception => e
          #binding.pry
          @session_response = JSON.parse(e.response)
          @session_response = @session_response['info']
          @session_code = e.http_code
          puts @session_code
        end
      end
	  end
	end
end