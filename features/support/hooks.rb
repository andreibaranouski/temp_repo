Before do
  # @browser = Watir::Browser.new(:firefox, :profile => "default")
  # @browser = Watir::Browser.new :remote, :url=>"http://127.0.0.1:4444/wd/hub", http_client: client, desired_capabilities: caps
  # @browser_arguments = get_arguments
  #@browser = Watir::Browser.new :chrome, :prefs => browser_arguments, :switches => %w(disable-infobars no-sandbox)
  # browser.goto 'www.google.com'
  @browser = Watir::Browser.new
end

After do |scenario|
  begin
    if scenario.failed?
      Dir::mkdir('screenshots') if not File.directory?('screenshots')
      screenshot = "./screenshots/FAILED_#{scenario.name.gsub(' ', '_').gsub(/[^0-9A-Za-z_]/, '')}.png"
      @browser.driver.save_screenshot(screenshot)
      embed screenshot, 'image/png'
    end
  ensure
    # @browser.close
  end
end