module Pages
  class Application
    def login
	    @login_page ||= Pages::Api::LoginPage.new
	  end
	end
end