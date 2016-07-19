module Pages
	module Api
		class SummaryPage < BaseApi
			attr_reader :session_response, :session_code
			
      def request_summary_for_hospital
				url = "#{API_HOST_NAME}/api/v2/hospitals/370/summary"
        params = {:params =>{:lat => 19.12528, :lon => 72.9184, :consumer_version => 14 , :consumer => 'android'}, :content_type=>:json, :accept => :json}
        @session_code = make_get_request(url,params)
			end

			def request_summary_for_doctor
				url = "#{API_HOST_NAME}/api/v2/doctors/4/summary"
				params = {:params =>{:lat => 19.12528, :lon => 72.9184, :consumer_version => 14 , :consumer => 'android'}, :content_type=>:json, :accept => :json}
				@session_code = make_get_request(url, params)
			end

      def request_H2D_doctors_list
        url = "#{API_HOST_NAME}/api/v2/hospitals/322/doctors"
        params = {:params =>{:lat => 19.12528, :lon => 72.9184, :consumer_version => 14 , :consumer => 'android', :page => 1, :speciality_ids => '', :surgery_id => ''}, :content_type=>:json, :accept => :json}
        @session_code = make_get_request(url, params)
      end

			def request_summary_for_D2H
				url = "#{API_HOST_NAME}/api/v2/doctors/200/hospitals/196"
				params = {:params =>{:lat => 19.12528, :lon => 72.9184, :consumer_version => 14 , :consumer => 'android'}, :content_type=>:json, :accept => :json}
				@session_code = make_get_request(url, params)
			end

			def request_summary_for_H2D
				url = "#{API_HOST_NAME}/api/v2/hospitals/322/doctors/2"
				params = {:params =>{:lat => 19.12528, :lon => 72.9184, :consumer_version => 14 , :consumer => 'android'}, :content_type=>:json, :accept => :json}
				@session_code = make_get_request(url, params)
			end

      def request_opdtimings_for_appointment
        url = "#{API_HOST_NAME}/api/v2/hospitals/128/doctors/14/opd_timings"
        params = {:params =>{:lat => 19.12528, :lon => 72.9184, :consumer_version => 14 , :consumer => 'android'}, :content_type=>:json, :accept => :json}
        @session_code = make_get_request(url, params)
      end

      def request_surgery_service_results
        url = "#{API_HOST_NAME}/api/v2/doctors/14/hospitals/128"
        params = {:params =>{:lat => 19.12528, :lon => 72.9184, :consumer_version => 14 , :consumer => 'android', :surgery_id => '182'}, :content_type=>:json, :accept => :json}
        @session_code = make_get_request(url, params)
      end
		end
	end 
end