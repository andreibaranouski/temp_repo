class MainPage
  include PageObject, Common

  page_url Common.get_url('main')

  link(:clickjob, :xpath => "//a[contains(text(), '2')]")
  link :addnewjob, :text => 'Add New Job'

  def click_job_link(job_name)
    @browser.a(:text => job_name).click

    JobPage.new(@browser)
  end

  def navigate_job
    addnewjob
    NewJobPage.new(@browser)
  end

end