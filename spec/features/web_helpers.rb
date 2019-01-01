# Test Helpers ch. DRYing up code.
# Move repeated code in the other specs into this file and
# reference the methods fromthis file in the other specs.
# This file needs to be required in spec_helper.rb.
def sign_in_and_play
  visit '/'
  fill_in 'player_1_name', with: 'Dave'
  fill_in 'player_2_name', with: 'Mittens'
  click_button 'Submit'
end
