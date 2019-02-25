class NewsSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :news_feed
end
