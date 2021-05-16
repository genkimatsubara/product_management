require 'test_helper'

class NoticeMailerTest < ActionMailer::TestCase
  test "send_notice_deadline" do
    mail = NoticeMailer.send_notice_deadline
    assert_equal "Send notice deadline", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
