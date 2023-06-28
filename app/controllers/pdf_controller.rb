class PdfController < ApplicationController

  def show
   
  end
  
  def generate
 
#Informacion portada
@city_ = "Medellin"
@country_ = "Venezuela"
@zip_code = "1010"
@apt_ = "3B"
@member_id = "1234567890"
@cig_id = "0987654321"
@ffm_id = "1122334455"
@email = "correo@example.com"
@mailing_adress = "Av. Bolívar, Edif"
@phone = "+58 212-555-1212"

# client
@name_client = "Juan"
@m_name_client = "Carlos"
@last_name_client = "Pérez"
@dob_client = "01/01/1980"
@age_client = 43
@place_birth_client = "Maracaibo"
@categoria_client = "A"
@status_civil_client = "Casado"
@driver_license_client = "V-12345678"
@peso_client = 75
@talla_client = 175
@ssn_client = "V-123456789"
@a_code_client = "ABC123XYZ9"
@card_client = "4111 1111 1111 1111"

# Spouse
@name_spouse = "María"
@m_name_spouse = "Isabel"
@last_name_spouse = "García"
@dob_spouse = "02/02/1982"
@age_spouse = 41
@peso_spouse = "65 kg"
@talla_spouse = 165
@ssn_spouse = "V-987654321"
@a_code_spouse = "XYZ987ABC6"
@card_spouse = "5500 0000 0000 0004"

#Bnak company    
@income = 1000
@employer = "Acme Inc."
@work_type = "Full-time"
@employer_phone = "+1 555-1234"
@account_holder = "Juan Pérez"
@bank = "Banco de Venezuela"
@routing = "123456789"
@account_number = "0123456789"
@card = "master card"
@exp = "12/25"
@cvc = "123"
@company = "Seguros Caracas"
@effective_day = "01/01/2022"
@plan_type = "Individual"
@plan = "Plan Básico"
@monthly_premium = 50

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
