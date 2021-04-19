describe 'the signout process', type: :feature do
  before :each do
    User.create(name: 'Mary')
  end

  it 'logs me out' do
    visit log_in_path
    fill_in 'name', with: 'user'
    
    click_link(log_out_path)
    expect(page).to have_content 'logged out.'
  end

  it 'logs me out' do
    click_on('Log Out')
    expect(page).to_not have_content 'You need to sign in or sign up before continuing.'
  end
end
