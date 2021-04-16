describe 'the signout process', type: :feature do
  before :each do
    User.create(name: 'Mary')
  end

  xit 'logs me out' do
    click_link(log_out_path)
    expect(page).to have_content 'logged out.'
  end

  xit 'logs me out' do
    click_on('Log Out')
    expect(page).to_not have_content 'You need to sign in or sign up before continuing.'
  end
end
