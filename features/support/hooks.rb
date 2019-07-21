Before do |scenario|

  #
  # Browser browser
  #
  @browser_name          = :chrome
  # Webdrivers.install_dir = 'webdrivers_bin'
  # recording_name         = scenario.name.gsub(/\s/, '-').downcase + '.'
  @browser               = Watir::Browser.new @browser_name

  #
  # Start recording
  #
#  window_title = ScreenRecorder::Titles.fetch(@browser_name).first
  @recorder    = ScreenRecorder::Desktop.new(input: '0', output: 'recording.mkv')
  @recorder.start
end

#
# Stop recording and close browser
#
After do |scenario|
  @recorder.stop
  @browser.quit
  # @recorder.discard if scenario.passed?
end