When(/^User requests for Help api$/) do
  @app.drawer.request_help_page_api
end

Then(/^Response is received with status\-code for Help Api\.$/) do
  expect(@app.drawer.session_code).to eq(200)
end

When(/^User requests for My Reviews Unapproved Api$/) do
  @app.drawer.request_my_reviews_unapproved_api
end

Then(/^Response is received with status\-code for My Reviews Unapproved Api$/) do
  expect(@app.drawer.session_code).to eq(200)
end

When(/^User requests for My Reviews Approved Api$/) do
  @app.drawer.request_my_reviews_approved_api
end

Then(/^Response is received with status\-code for My Reviews Approved Api$/) do
  expect(@app.drawer.session_code).to eq(200)
end

When(/^User requests for Contact Us Api$/) do
  @app.drawer.request_contact_us_api
end

Then(/^Response is received with status\-code for Contact Us Api$/) do
  expect(@app.drawer.session_code).to eq(200)
end

When(/^User requests for T and C Api$/) do
  @app.drawer.request_t_and_c_api
end

Then(/^Response is received with status\-code for T and C Api$/) do
  expect(@app.drawer.session_code).to eq(200)
end

When(/^User requests for Privacy Policy Api$/) do
  @app.drawer.request_t_and_c_api
end

Then(/^Response is received with status-code for Privacy Policy Api$/) do
  expect(@app.drawer.session_code).to eq(200)
end
