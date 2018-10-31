def create_post(message)
  visit '/'
  click_link 'Create post'
  fill_in 'Message', with: message
  click_button 'Submit'
end

def sign_up_helper(email, name, password)
  visit('/')
  click_link('Sign up')
  fill_in('user_email', with: email)
  fill_in('user_name', with: name)
  fill_in('user_password', with: password)
  fill_in('user_password_confirmation', with: password)
  click_button('Sign up')
end

def sign_up_correct_helper
  sign_up_helper('test@email.com', 'TestName', 'Testing123')
end

def sign_up_no_name_helper
  sign_up_helper('test@email.com', '', 'Testing123')
end

def log_in(email, password)
  fill_in('user_email', with: email)
  fill_in('user_password', with: password)
  click_button('Log in')
end

def create_wall_post(message)
  visit '/profile'
  click_link 'Post to this wall'
  fill_in 'Text', with: message
  click_button 'Submit'
end
