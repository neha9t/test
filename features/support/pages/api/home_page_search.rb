module Pages
	module Api
	  class HomePageSearch < BaseApi
      attr_reader :session_response
      attr_reader :session_code
      
      def request_suggestion_in_consultation
        url = "#{API_HOST_NAME}/api/v2/suggestions/consultation?lat=19.123896&lon=72.91745&page=1&type=point&name=m&hospital=true&doctor=true&speciality=true&ailment=true&surgery=true&diagnostic_test=true&nursing_procedure=true&consumer_version=14&consumer=android"
  
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
      def request_search_in_symptom
        url = "#{API_HOST_NAME}/api/v2/ailments/229/specialities?term=Meniere%27s+Disease&flow=Consultation&consumer_version=14&consumer=android&lat=19.123895645141600&lon=72.917449951171900"
  
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

      def request_search_in_doctor
        url = "#{API_HOST_NAME}/api/v2/doctors/117/summary?lat=19.123896&lon=72.91745&term=Dr+Kirti+Daxini&flow=consultation&consumer_version=14&consumer=android"
        
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
      def request_search_in_hospital
        url = "#{API_HOST_NAME}/api/v2/hospitals/293/summary?term=Deshmukh+Clinic+&flow=consultation&consumer_version=14&consumer=android&lat=19.123895645141600&lon=72.917449951171900"
        
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

      def request_search_in_disease
        url = "#{API_HOST_NAME}/api/v2/ailments/862/specialities?term=Kidney+Stones+%2F+Renal+Stones+%28Lithiasis%29&flow=Consultation&consumer_version=14&consumer=android&lat=19.123895645141600&lon=72.917449951171900"
        
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

      def request_search_in_speciality
        url = "#{API_HOST_NAME}/api/v2/ailments/862/specialities?term=Kidney+Stones+%2F+Renal+Stones+%28Lithiasis%29&flow=Consultation&consumer_version=14&consumer=android&lat=19.123895645141600&lon=72.917449951171900"
        params = 
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
    end
  end
end
