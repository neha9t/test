When(/^User requests for summary of a hospital$/) do
  @app.summary.request_summary_for_hospital
end

Then(/^Response is received hospital summary with status\-code$/) do
  expect(@app.summary.session_code).to eq(200)
end

When(/^User requests for summary of a Doctor$/) do
  @app.summary.request_summary_for_doctor
end

Then(/^Response is received doctor summary with status\-code$/) do
  expect(@app.summary.session_code).to eq(200)
end

When(/^User requests for summary of a Doctor\-to\-Hospital page$/) do
  @app.summary.request_summary_for_D2H
end

Then(/^Response is received doctor\-to\-hospital summary with status\-code$/) do
  expect(@app.summary.session_code).to eq(200)
end

When(/^User requests for summary of a Hospital\-to\-Doctor Page$/) do
  @app.summary.request_summary_for_H2D
end

Then(/^Response is received for hospital\-to\-doctor with status\-code$/) do
  expect(@app.summary.session_code).to eq(200)
end
