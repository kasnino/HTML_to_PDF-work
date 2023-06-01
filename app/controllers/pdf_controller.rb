class PdfController < ApplicationController
  def generate
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "my_pdf",
               template: "pdf/generate.html.erb"
      end
    end
  end
end
