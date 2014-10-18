class RegistrationsController < Devise::RegistrationsController
	
	def sign_up(resource_name, resource)
		resource.update_attribute(:is_admin, true) 
		if resource_name.to_s.camelcase.constantize.count ==1
		super
	end
end