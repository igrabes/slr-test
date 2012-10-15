class PdfsController < ApplicationController
  require 'json'


  def index
    @pdfs = Pdf.all
  end

  def show
    @pdf = Pdf.find(params[:id])
    file = @pdf.file
    @file = decode_pdf(file)
  end

  def receiver
    if request.request_method_symbol == :post
       Pdf.create!(
        :merge_id => params['merge_id'],
        :file_name => params['file_name'],
        :file => params['file_contents']
       )
     end

    render :nothing => true
  end

  def decode_pdf(file)
    decoded_data = Base64.decode64(file)
    file_name = "test.pdf"
    temp_file = Tempfile.new("filename-#{Time.now}")
    File.open(temp_file, 'wb') {|f| f.write(decoded_data)}
    send_file(temp_file.path, :type => 'application/pdf', :file_name => file_name, :disposition => 'inline')
  end

end
