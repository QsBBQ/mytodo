module ApplicationHelper
  def my_form_for(record, options = {}, &spec)
    form_for(record, options.merge!({nuilder: MyFormBuilder}), &proc)
  end
end
