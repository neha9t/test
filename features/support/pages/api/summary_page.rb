module Pages
	module Api
		class SummaryPage < BaseApi
			attr_reader :session_response, :session_code
			def request_summary_for_hospital
				url = "#{API_HOST_NAME}/api/v2/hospitals/370/summary?consumer_version=14&consumer=android&lat=19.125280380249000&lon=72.918403625488300"
        begin
          @session_response = RestClient.get(url,:content_type=>:json, :accept => :json)
          @session_code = @session_response.code
          puts @session_code
        rescue Exception => e
          @session_response = JSON.parse(e.response)
          @session_response = @session_response['info']
          @session_code = e.http_code
          puts @session_code
        end
			end
			def request_summary_for_doctor
				url = "#{API_HOST_NAME}/api/v2/doctors/4/summary"
				params = {:params =>{:lat => 19.12528, :lon => 72.9184, :consumer_version => 14 , :consumer => 'android'}, :content_type=>:json, :accept => :json}
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
			def request_summary_for_D2H
				url = "#{API_HOST_NAME}/api/v2/doctors/200/hospitals/196?consumer_version=14&consumer=android&lat=19.125280380249000&lon=72.918403625488300"
				params = {:params =>{:lat => 19.12528, :lon => 72.9184, :consumer_version => 14 , :consumer => 'android'}, :content_type=>:json, :accept => :json}
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
			def request_summary_for_H2D
				url = "#{API_HOST_NAME}/api/v2/hospitals/322/doctors/2?consumer_version=14&consumer=android&lat=19.125280380249000&lon=72.918403625488300"
				params = {:params =>{:lat => 19.12528, :lon => 72.9184, :consumer_version => 14 , :consumer => 'android'}, :content_type=>:json, :accept => :json}
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