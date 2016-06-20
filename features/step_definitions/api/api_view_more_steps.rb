When(/^User requests for more hospitals$/) do
  @app.view_more.request_view_more_hospitals
end

Then(/^Response is received for hospitals with status\-code$/) do
  expect(@app.view_more.session_code).to eq(200)
end

When(/^User requests for more doctors$/) do
  @app.view_more.request_view_more_doctors
end

Then(/^Response is received for doctors with status\-code$/) do
  expect(@app.view_more.session_code).to eq(200)
end
