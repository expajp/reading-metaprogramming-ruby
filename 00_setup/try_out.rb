class TryOut
  def initialize(first_name, second_name, third_name = nil)
    if third_name.nil?
      middle_name = nil
      last_name = second_name
    else
      middle_name = second_name
      last_name = third_name
    end

    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  def full_name
    all_names.compact.join(' ')
  end

  def first_name=(arg)
    @first_name = arg
  end

  def upcase_full_name
    full_name.upcase
  end

  def upcase_full_name!
    all_names.compact.each(&:upcase!)
    full_name
  end

  private

  def all_names
    [@first_name, @middle_name, @last_name]
  end
end
