
module Pages
	module Api
		class ViewMore < BaseApi
			attr_reader :session_response, :session_code

			def request_view_more_hospitals
				url = "#{API_HOST_NAME}/api/v2/search/hospitals"
				
				params = {:params => {
								:lat => 19.125280380249023,
								:lon => 72.91840362548828,
								:rad => 5000.0,
								:page => 1,
								:type => 'point',
								:flow => 'consultation',
								:consumer_version => 14,
								:consumer => 'android'}, 
							:content_type=>:json, 
							:accept => :json}
				#params = URI.encode_www_form({ lat: 19.125280380249023, lon: 72.91840362548828, rad: 5000.0, page: 1,type: 'point', flow: 'consultation', consumer_version: 14, consumer: 'android' })	
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

			def request_view_more_doctors
				url = "#{API_HOST_NAME}/api/v2/search/doctors"
				params = {:params => {
								:lat => 19.125280380249023,
								:lon => 72.91840362548828,
								:rad => 5000.0,
								:page => 1,
								:type => 'point',
								:flow => 'consultation',
								:consumer_version => 14,
								:consumer => 'android'}, 
							:content_type=>:json, 
							:accept => :json}
			
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

		end
	end
end