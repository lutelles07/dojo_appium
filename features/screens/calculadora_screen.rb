class Calculator

  def check_display
    find_element(id: 'formula').displayed?
  end

  def sum(value1, value2)
    find_element(id: 'eq').displayed?
    find_element(id: "digit_#{value1}").click
    find_element(id: 'op_add').click
    find_element(id: "digit_#{value2}").click
    find_element(id: 'eq').click
  end

  def divide(value1, value2)
    find_element(id: 'eq').displayed?
    find_element(id: "digit_#{value1}").click
    find_element(id: 'op_div').click
    find_element(id: "digit_#{value2}").click
    find_element(id: 'eq').click
  end

  def result_final
    find_element(id: 'result_final').text
  end
  
  def result_preview
    find_element(id: 'result_preview').text
  end
end