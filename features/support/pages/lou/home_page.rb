class HomePage
  include PageObject, Common

  page_url Common.get_url('home')

  link :register, :xpath => "//a[@href='/a/sign_up']"

end