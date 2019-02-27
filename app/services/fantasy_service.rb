class FantasyService
  def initialize(params)
    @params = params
    @conn  = Faraday.new(url: "https://api.fantasydata.net/v3/nfl/stats/json/NewsByTeam/#{@params[:name]}") do |faraday|
      faraday.headers["Ocp-Apim-Subscription-Key"] = ENV["FANTASY_KEYS"]
      faraday.adapter  Faraday.default_adapter
    end
  end

  def get_url
    url = "https://api.fantasydata.net/v3/nfl/stats/json/NewsByTeam/#{@params[:name]}"
    response = @conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end