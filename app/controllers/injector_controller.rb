class InjectorController < ApplicationController
  def new
  end

  def create

	duck_jar_path = CONFIG["duck_encoder_path"]

	uploaded_io = params[:injector][:ducky_script]
	upload_path = Rails.root.join('public','uploads')

	File.open(Rails.root.join(upload_path, 'script.ducky'), 'wb') do |file|
	  file.write(uploaded_io.read)
	end
	
	inject = system("java -jar #{duck_jar_path}/encoder.jar -i #{upload_path}/script.ducky -o #{upload_path}/inject.bin > #{upload_path}/output.txt")
	@results = File.read("#{upload_path}/output.txt")
  end
end
