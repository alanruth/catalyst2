module ApplicationHelper

	def bootstrap_class_for(level)
		case level
			when :notice then "alert-info"
			when :success then "alert-success"
			when :error then "alert-error"
			when :alert then "alert-error"
		end
	end
end