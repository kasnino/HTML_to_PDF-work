class PdfController < ApplicationController

  def show
    
  end
  def generate
    respond_to do |format|
      format.html do
        render template: "pdf/generate.html.erb"
      end
      format.pdf do
        render pdf: "my_pdf",
               template: "pdf/generate.html.erb",
               header: { html: { template: 'pdf/header.html.erb' } },
               footer: { html: { template: 'pdf/footer.html.erb' } },
               layout: "pdf",
               page_size: 'letter',
               margin: { top: 0, bottom: 0, left: 0, right: 0 }
      end
    end
  end
end
