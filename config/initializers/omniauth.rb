Rails.application.config.middleware.use OmniAuth::Builder do
  # Production app
  # provider :census, "29df5c3c30c03840159d09f481031ea93e2efa17c89d39e4395852e846859342", "ea308144e7ffbcef8a9d0930cebe68dad9d7a06dabf302a742dfc9cdf13cc9b7", {
  # Dev app
  provider :census, "bc76036873412d712f33692ad5b624755f1a98be0387a5568a3aa8de52a46c7e", "d4d6c28713cee82a93e4a19bcaf95ea33f3867157d7d6865504b40e5885b9cd4", {

  # provider :census, ENV["CENSUS_ID"], ENV["CENSUS_SECRET"], {
    :name => "census"
    # :scope => ['contacts','plus.login','plus.me','email','profile'],
    # :prompt => "select_account",
    # :image_aspect_ratio => "square",
    # :image_size => 50,
    # :access_type => 'offline'
  }
end
