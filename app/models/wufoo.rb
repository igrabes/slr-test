class Wufoo < ActiveRecord::Base
  ACCOUNT = 'grabes'
  API_KEY = '4W4R-NYB2-7NOR-QJVP'
  FORM_ID = '1'


  def self.authenticate
    wufoo = WuParty.new(ACCOUNT, API_KEY)
  end

  def self.get_form(wufoo)
    form = wufoo.forms.first
  end


  def self.test_submit
    auth = self.authenticate
    form = self.get_form(auth)

    result = form.submit({
      'Field9' => 'ian@testing.com'
    })


    if result['Success'] == 0
      puts result['ErrorText']
    end
  end
  # attr_accessible :title, :body
end
