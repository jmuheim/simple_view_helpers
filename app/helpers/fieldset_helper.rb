module FieldsetHelper
  def fieldset(legend, &block)
    render partial: 'fieldset', locals: {
      legend: legend,
      block: capture(&block),
    }
  end
end
