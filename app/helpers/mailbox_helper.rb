module MailboxHelper

  def unread_messages_count
    mailbox.inbox(:unread => true).count(:distinct => true)
  end
end
