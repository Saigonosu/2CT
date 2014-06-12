module RoutesHelper
  def route_display_value(value)
    case value
    when Money
      humanized_money_with_symbol(value)
    when TrueClass, FalseClass
      value ? 'Yes' : 'No'
    else 
      value
    end
  end
  
  def display_route_attribute(value)
    value.titleize
  end
end
