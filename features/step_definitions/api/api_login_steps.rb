Given(/^User is on android platform$/) do
  
end

When(/^User requests with "([^"]*)" and "([^"]*)" for signing into the app$/) do |username, password|
  @app.login.request_login_sessions(username, password)
end

Then(/^Appropriate Response is received with status\-code$/) do
	#binding.pry
  expect(@app.login.session_response).to eq("Invalid Username/Password")
  expect(@app.login.session_code).to eq(401)
end
