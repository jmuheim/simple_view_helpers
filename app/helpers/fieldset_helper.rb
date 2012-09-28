module FieldsetHelper
  def fieldset(legend = nil, &block)
    render partial: 'simple_view_helpers/fieldset', locals: {
      legend: legend,
      block: capture(&block),
    }
  end
end
