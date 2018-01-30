# encoding: utf-8
# copyright: 2018, Anshul Patel

# you add controls here
control 'Palindrome-1.0' do
  impact 1.0
  title 'Palindrome Resource'
  desc 'Palindrome Resource'
  describe palin_drome("saras")  do
    it { should be_palindrome }
    its('size') {should > 3 }
  end
end
