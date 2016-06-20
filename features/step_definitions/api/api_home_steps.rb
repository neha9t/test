When(/^User requests the near\-by doctors's consultation  api$/) do
	@app.home.request_near_by_consultation_doctors
end

When(/^User requests the near\-by hospital's consultation api$/) do
  @app.home.request_near_by_consultation_hospitals
end

When(/^User requests the near\-by hospital's surgery api$/) do
  @app.home.request_near_by_surgery_hospitals
end

When(/^User requests the near\-by doctor's surgery api$/) do
   @app.home.request_near_by_surgery_doctors
end

When(/^User requests the near\-by hospital diagnostic api$/) do
   @app.home.request_near_by_diagnostic_hospitals
end

When(/^User requests the diagnostic\-test api$/) do
   @app.home.request_diagnostic_tests
end

When(/^User requests the suggestions\-specialities api$/) do
   @app.home.request_suggestions_specialities
end

When(/^User requests the suggestions\-ailments api$/) do
   @app.home.request_suggestions_ailments
end

Then(/^Response is received with status\-code$/) do
  expect(@app.home.session_code).to eq(200)
end
