require 'selenium-webdriver'
require 'yaml'
#require 'report_builder'
Before do

@login = PaginaLogin.new
@checkbox = PaginaCheckbox.new
@dragNdrop = PaginaDragAndDrop.new
@dropdown = PaginaDropAndDown.new
@fileupload = PaginaFileUploader.new
@common = PaginaCommon.new
@assert = PaginaAssert.new

end
