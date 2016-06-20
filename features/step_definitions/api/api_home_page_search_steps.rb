When(/^User requests for suggestions on consultation$/) do
  @app.home_search.request_suggestion_in_consultation
end

When(/^User requests for searching in symptom$/) do
  @app.home_search.request_search_in_symptom
end

When(/^User requests for searching in speciality$/) do
  @app.home_search.request_search_in_speciality
end

When(/^User requests for searching in doctors$/) do
  @app.home_search.request_search_in_doctor
end

When(/^User requests for searching in hospitals$/) do
  @app.home_search.request_search_in_hospital
end

When(/^User requests for searching in disease$/) do
  @app.home_search.request_search_in_disease
end

Then(/^Response is received for search with status\-code$/) do
  expect(@app.home_search.session_code).to eq(200)
end
