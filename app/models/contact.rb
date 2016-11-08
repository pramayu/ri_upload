class Contact < MailForm::Base
  attribute :name,         :validate => true
  attribute :email,        :validate => /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  attribute :phone,        :validate => true
  attribute :content,      :validate => true

  def headers
    {
      :subject => "Contact Form",
      :to => "dmonmad@gmail.com",
      :from => %("#{name}"<#{email}>)
    }
  end
end

