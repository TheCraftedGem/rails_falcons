class News 
  attr_reader :title, :content
  def initialize(params)
    @title ||= params[0][:Title]
    @content ||= params[0][:Content]
  end
end