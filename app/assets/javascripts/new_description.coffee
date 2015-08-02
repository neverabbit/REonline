$(document).on "page:change", ->
	$('#new_description_link').click ->
		$('#new_description_link').hide()
		$('#new_description').show()
		# $('#user_description').val("<%= @user.description %>")
		$('#user_user_description').focus()
		# $('#new_description').focus()
	
	$('#description_cancel_button').click ->
		$('#new_description_link').show()
		$('#new_description').hide()
	
	
		