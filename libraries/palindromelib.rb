class PalindromeResource < Inspec.resource(1)
  name 'palin_drome'
  desc 'This resource checks whether the attribute is palindrome or not'
  example '
    describe palin_drome() do
      it { should be_palindrome }
      its(size) { should > 5 }
    end
  '

  def initialize(attribute)
    @params = {}
    @attribute = attribute
    @params['size'] = attribute.length
  end

  def palindrome?
    @attribute == @attribute.reverse
  end

  def method_missing(name)
    return @params[name.to_s]
  end

end
