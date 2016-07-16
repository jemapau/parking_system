module ApplicationHelper
	def alert_class_for(flas_type)
		{
			:success => 'alert-success',
			:error => 'alert-danger',
			:alert => 'alert-warning',
			:notice => 'alert-info'
		}

		[flas_type.to_sym] || flas_type.to_s
	end
end
