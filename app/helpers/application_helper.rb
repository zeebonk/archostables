# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

	def active_link_to(title, url, condition)
		if condition == true
			link_to(title, url, :class => "active")
		else
			link_to(title, url)
		end
	end

end
