$(document).on "page:change", ->
	$('#new_name_link').click ->
		$('#new_name_link').hide()
		$('#new_name').show()
		# $('#user_name').val("<%= @user.name %>")
		$('#user_name').focus()
		# $('#new_name').focus()
	
	$('#name_cancel_button').click ->
		$('#new_name_link').show()
		$('#new_name').hide()
	
	
		