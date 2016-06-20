module Pages
	module Api
	  class HomePage < BaseApi
      attr_reader :session_response
      attr_reader :session_code
      def request_near_by_consultation_doctors
        url = "#{API_HOST_NAME}/api/v2/doctors?lat=19.1238956451416&lon=72.91744995117188&type=point&column=distance&flow=consultation&rad=5000.0&consumer_version=14&consumer=android"
  
        begin
          @session_response = RestClient.get(url,:content_type=>:json, :accept => :json)
          @session_code = @session_response.code
          puts @session_code
        rescue Exception => e
          #binding.pry
          @session_response = JSON.parse(e.response)
          @session_response = @session_response['info']
          @session_code = e.http_code
          puts @session_code
        end
      end

      def request_near_by_consultation_hospitals
      	url = "#{API_HOST_NAME}/api/v2/hospitals?lat=19.1238956451416&lon=72.91744995117188&type=point&column=distance&flow=consultation&rad=5000.0&consumer_version=14&consumer=android"
        begin
          @session_response = RestClient.get(url,:content_type=>:json, :accept => :json)
          @session_code = @session_response.code
          puts @session_code
        rescue Exception => e
          #binding.pry
          @session_response = JSON.parse(e.response)
          @session_response = @session_response['info']
          @session_code = e.http_code
          puts @session_code
        end
      end

      def request_near_by_surgery_hospitals
      	url = "#{API_HOST_NAME}/api/v2/hospitals?lat=19.1238956451416&lon=72.91744995117188&type=point&column=distance&flow=surgery&rad=5000.0&consumer_version=14&consumer=android"
        begin
          @session_response = RestClient.get(url,:content_type=>:json, :accept => :json)
          @session_code = @session_response.code
          puts @session_code
        rescue Exception => e
          #binding.pry
          @session_response = JSON.parse(e.response)
          @session_response = @session_response['info']
          @session_code = e.http_code
          puts @session_code
        end
      end

      def request_near_by_surgery_doctors
      	url = "#{API_HOST_NAME}/api/v2/doctors?lat=19.1238956451416&lon=72.91744995117188&type=point&column=distance&flow=surgery&rad=5000.0&consumer_version=14&consumer=android"
        begin
          @session_response = RestClient.get(url,:content_type=>:json, :accept => :json)
          @session_code = @session_response.code
          puts @session_code
        rescue Exception => e
          #binding.pry
          @session_response = JSON.parse(e.response)
          @session_response = @session_response['info']
          @session_code = e.http_code
          puts @session_code
        end
      end

      def request_near_by_diagnostic_hospitals
      	url = "#{API_HOST_NAME}/api/v2/hospitals?lat=19.1238956451416&lon=72.91744995117188&type=point&column=distance&flow=surgery&rad=5000.0&consumer_version=14&consumer=android"
        begin
          @session_response = RestClient.get(url,:content_type=>:json, :accept => :json)
          @session_code = @session_response.code
          puts @session_code
        rescue Exception => e
          #binding.pry
          @session_response = JSON.parse(e.response)
          @session_response = @session_response['info']
          @session_code = e.http_code
          puts @session_code
        end
      end

      def request_diagnostic_tests
      	url = "#{API_HOST_NAME}/api/v2/diagnostic_tests?consumer_version=14&consumer=android&lat=19.123895645141600&lon=72.917449951171900"
        begin
          @session_response = RestClient.get(url,:content_type=>:json, :accept => :json)
          @session_code = @session_response.code
          puts @session_code
        rescue Exception => e
          #binding.pry
          @session_response = JSON.parse(e.response)
          @session_response = @session_response['info']
          @session_code = e.http_code
          puts @session_code
        end 
      end

      def request_suggestions_specialities
      	url = "#{API_HOST_NAME}/api/v2/suggestions/specialities?consumer_version=14&consumer=android&lat=19.123895645141600&lon=72.917449951171900"
        begin
          @session_response = RestClient.get(url,:content_type=>:json, :accept => :json)
          @session_code = @session_response.code
          puts @session_code
        rescue Exception => e
          #binding.pry
          @session_response = JSON.parse(e.response)
          @session_response = @session_response['info']
          @session_code = e.http_code
          puts @session_code
        end
      end

      def request_suggestions_ailments
      	url = "#{API_HOST_NAME}/api/v2/suggestions/ailments?consumer_version=14&consumer=android&lat=19.123895645141600&lon=72.917449951171900"
        begin
          @session_response = RestClient.get(url,:content_type=>:json, :accept => :json)
          @session_code = @session_response.code
          puts @session_code
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