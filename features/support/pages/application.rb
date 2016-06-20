module Pages
  class Application
    def login
	    @login_page ||= Pages::Api::LoginPage.new
	  end

	  def home
	  	@home_page ||= Pages::Api::HomePage.new
	  end

	  def home_search
			@home_page_search ||=Pages::Api::HomePageSearch.new
	  end

	  def view_more
	  	@view_more_search ||= Pages::Api::ViewMore.new
	  end

	  def summary
	  	@summary ||=Pages::Api::SummaryPage.new
	  end
	end
end