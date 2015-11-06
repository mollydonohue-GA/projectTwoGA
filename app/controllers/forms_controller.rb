class FormsController < ApplicationController
	
	def index
		@forms = Form.all
	end

	def show
	  @form = Form.find(params["id"])
	end

def create
	form_params = params["form"].permit("date", "wins", "repass")
  form = Form.create(form_params)
  redirect_to(form_path(form))
end

end
