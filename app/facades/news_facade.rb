class NewsFacade 
  attr_reader :id
  def initialize(params)
    @id = 1
    @params = params
  end

  def news_feed
    News.new(FantasyService.new(@params).get_url)
  end
end