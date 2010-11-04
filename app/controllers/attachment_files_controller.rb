class AttachmentFilesController < ApplicationController
  def show
    @attachment_file = AttachmentFile.find(params[:id])
    
    send_file @attachment_file.data.path, :type => @attachment_file.data_content_type,  :filename => @attachment_file.data_file_name
  end
end
