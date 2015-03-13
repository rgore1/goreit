class ExampleMailerPreview < ActionMailer::Preview

  def sample_mail_preview
    ExampleMailer.sample_email(User.first)
  end

end