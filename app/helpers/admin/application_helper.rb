module Admin::ApplicationHelper
	def admin_form_for(record)
			form_for(record,
					:url=>[:admin,record],
					:html => :class => 'form-horizontal',
					:multipart => true
			})