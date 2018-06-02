def login_as_admin(email, password)
  visit "/sign_in"
  fill_in "Email", with: email
  fill_in "Password", with: password
  click_button "Sign in"
end

def access_organisation(access_codes:, organisation:)
  visit "/organisations/#{organisation.id}"
  access_code = access_codes.map(&:picture_id).join

  fill_in I18n.t(:label_for_form_code_entry, scope: :access_codes), with: access_code
  click_button I18n.t(:label_for_submit_button, scope: :access_codes)
end
