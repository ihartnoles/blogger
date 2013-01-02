class XmldemoController < ApplicationController
  
  def index
  	xml_data_as_string = "<first_name>John</first_name><last_name>Smith</last_name>"
  	@hash = Hash.from_xml("<root>#{xml_data_as_string}</root>")[:root]
  end
  
end
