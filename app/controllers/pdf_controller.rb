class PdfController < ApplicationController

  def show
   
  end
  
  def generate
 
#Informacion portada
@city_ = "Medallo"
@country_ = "Venezuela"
@zip_code = "10001"
@apt_ = "5B"
@member_id = "12345"
@cig_id = "CIG1234"
@ffm_id = "FFM5678"
@email = "ejemplo@gmail.com"
@mailing_adress = "Calle Principal"
@phone = "555-1234-555"

# client
@name_client = "Juana"
@m_name_client = "Arcos"
@last_name_client = "Pérez"
@dob_client = "01/01/1990"
@age_client = "31"
@place_birth_client = "Ciudad de México"
@categoria_client = "Platino"
@status_civil_client = "Casado"
@driver_license_client = "12345678"
@peso_client = "75 kg"
@talla_client = "1.80 m"
@ssn_client = "123-45-6789"
@a_code_client = "A1234567"
@card_client = "1234 5678 9012 3456"
    
# Spouse
@name_spouse = "María"
@m_name_spouse = "Elena"
@last_name_spouse = "García"
@dob_spouse = "02/02/1992"
@age_spouse = "29"
@peso_spouse = "65 kg"
@talla_spouse = "1.70 m"
@ssn_spouse = "987-65-4321"
@a_code_spouse = "A7654321"
@card_spouse = "5678 9012 3456 7890"

    

  # Aqui se puede agregar el Array de Objetos para iterar todos los elementos
  # En la carpeta public esta el JSON client_information de prueba

    respond_to do |format|
      format.html do
        render template: "pdf/generate.html.erb"
      end
      format.pdf do
        render pdf: "my_pdf",
               template: "pdf/generate.html.erb",
               layout: "pdf",
               page_size: 'letter',
               margin: { top: 0, bottom: 0, left: 0, right: 0 }
      end
    end
  end
end
