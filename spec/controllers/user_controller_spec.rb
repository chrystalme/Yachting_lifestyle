describe 'the signin process', type: :feature do
  before :each do
    User.create(name: 'Mary')
  end

  it 'signs me in' do
    visit sign_up_path
    fill_in 'Name', with: 'user'
    

    click_button 'Log in'
    expect(page).to_not have_content 'Signed in successfully.'
  end

  it 'signs me in' do
    visit sign_up_path
    fill_in 'Name', with: 'Mary'
    

    click_button 'Log in'
    expect(page).to have_content 'Logged in successfully.'
  end

  xit 'signs me out' do
    visit destroy_user_session_path
    expect(page).to have_content 'You need to sign in or sign up before continuing.'
  end

  xit 'signs me out' do
    visit new_user_session_path
    expect(page).to_not have_content 'You need to sign in or sign up before continuing.'
  end
end
