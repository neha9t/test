
module Pages
	module Api
		class ViewMore < BaseApi
			attr_reader :session_response, :session_code

			def request_view_more_hospitals
				url = "#{API_HOST_NAME}/api/v2/search/hospitals"
				params = {params: { lat: 19.125280380249023, lon: 72.91840362548828,rad: 5000.0,page: 1,type: 'point',flow:'consultation',consumer_version: 14,consumer: 'android'}, content_type: :json, accept: :json}
				@session_code = make_get_request(url, params)
			end

			def request_view_more_doctors
				url = "#{API_HOST_NAME}/api/v2/search/doctors"
				params = {params: { lat: 19.125280380249023,lon: 72.91840362548828,rad: 5000.0,page: 1,type: 'point',flow: 'consultation',consumer_version: 14,consumer: 'android'}, content_type: :json, accept: :json}
				@session_code = make_get_request(url, params)				
			end
		end
	end
end