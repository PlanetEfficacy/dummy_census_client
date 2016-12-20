Rails.application.config.middleware.use OmniAuth::Builder do
  # Production app
  # provider :census, "29df5c3c30c03840159d09f481031ea93e2efa17c89d39e4395852e846859342", "ea308144e7ffbcef8a9d0930cebe68dad9d7a06dabf302a742dfc9cdf13cc9b7", {
  # Dev app
  provider :census, "d7218983451e16cf31590a5cebba16420c9d70385faa2b1c639504496de52423", "a938812dedb7b96575b9f94103227a4a22af90b043c92a49b0e1570f4a27e916", {

  # provider :census, ENV["CENSUS_ID"], ENV["CENSUS_SECRET"], {
    :name => "census"
    # :scope => ['contacts','plus.login','plus.me','email','profile'],
    # :prompt => "select_account",
    # :image_aspect_ratio => "square",
    # :image_size => 50,
    # :access_type => 'offline'
  }
end
