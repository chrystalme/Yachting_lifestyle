describe 'the signin process', type: :feature do
  before :each do
    User.create(name: 'Mary')
  end

  it 'signs me in' do
    visit log_in_path
    fill_in 'name', with: 'user'

    click_button 'Log In'
    expect(page).to_not have_content 'Signed in successfully.'
  end

  it 'signs me in' do
    visit log_in_path
    fill_in 'name', with: 'Mary'

    click_button 'Log In'
    expect(page).to have_content 'Logged in successfully.'
  end

  it 'signs me up' do
    visit sign_up_path
    fill_in 'user[name]', with: 'User'

    click_button 'Sign Up'
    expect(page).to have_content 'User has been created successfully.'
  end

  it 'signs me up' do
    visit sign_up_path
    fill_in 'user[name]', with: 'User'

    click_button 'Sign Up'
    expect(page).to_not have_content 'Alex has been created successfully.'
  end
end
