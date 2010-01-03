require 'test_helper'

class MailerTest < ActionMailer::TestCase
  test "sending" do
    @expected.subject = 'Mailer#sending'
    @expected.body    = read_fixture('sending')
    @expected.date    = Time.now

    assert_equal @expected.encoded, Mailer.create_sending(@expected.date).encoded
  end

end
