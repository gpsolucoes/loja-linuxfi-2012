class BootstrapFormBuilder
		ActionView::Helpers::BootstrapFormBuilder	
=begin
<div class="control-group">
<label class="control-label" for="input01">Text input</label>
<div class="controls">
<input type="text" class="input-xlarge" id="input01">
<p class="help-block">In addition to freeform text, any HTML5 text-based input appears like so.</p>
</div>
</div>
=end

	def text_field(property, options = {})

	end


	def wrap_content(property, content, options={})
=begin
		template.content_tag(:div,:class => 'control-group') do |variable|
			label_text=self.object.class.human_attribute_name(property)
			@template.content_tag(
				:labe,
				label_text,
				:class => 'controle-label')
		end
=end
	def wrap_content( property, content, options = {} )
		label_name = self.object.class.human_attribute_name(property)
		%Q!<div class="control-group">
			<label class="control-label">#{label_name}</label>
			<div class="controls">
				#{content}
			</div>
		</div>!.html_safe
end
	end

end