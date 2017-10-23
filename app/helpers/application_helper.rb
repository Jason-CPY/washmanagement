module ApplicationHelper
	def is_active?(expected_value, actual_value)
    	expected_value == actual_value ? 'active' : ''
	end
end
