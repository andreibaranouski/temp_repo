class LoginPage
  include PageObject, Common
  #include Watirsome

  page_url Common.get_url('login')

  text_field :email, :id => 'j_username'
  text_field :password, :name => 'j_password'
  checkbox :remember_me, :id => 'remember_me'
  button :login_button, :id => 'yui-gen1-button'

  def login(email, pass)
    self.email = email
    self.password = pass
    self.login_button
    MainPage.new(@browser)
  end
end