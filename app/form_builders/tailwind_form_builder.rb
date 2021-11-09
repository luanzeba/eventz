class TailwindFormBuilder < ActionView::Helpers::FormBuilder
  def label(object_name, text = nil, options = {})
    default_options = {class: "block text-xs font-medium text-gray-900"}
    merged_options = default_options.merge(options)
    super(object_name, text, merged_options)
  end

  def text_field(object_name, options = {})
    default_options = {class: "block w-full border-0 p-0 text-gray-900 placeholder-gray-500 focus:ring-0 sm:text-sm focus:outline-none"}
    merged_options = default_options.merge(options)
    super(object_name, merged_options)
  end

  def text_area(object_name, options = {})
    default_options = {rows: 3, class: "block w-full border-0 p-0 text-gray-900 placeholder-gray-500 focus:ring-0 sm:text-sm focus:outline-none"}
    merged_options = default_options.merge(options)
    super(object_name, merged_options)
  end

  def submit(text = "Submit", options = {})
    default_options = {class: "inline-flex items-center px-3 py-2 border border-transparent text-sm leading-4 font-medium rounded-md shadow-sm text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500"}
    merged_options = default_options.merge(options)
    super(text, merged_options)
  end

  def datetime_select(object_name, options = {})
    default_options = {
      with_css_classes: true,
      order: [:month, :day, :year, :hour, :minute],
      datetime_separator: "<div class='ml-8'></div>",
      time_separator: "",
    }
    super(object_name, default_options.merge(options))
  end
end
