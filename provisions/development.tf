# Create Heroku apps for staging
resource "heroku_app" "development" {
  name = "kvinchon-development"
  region = "eu"
  buildpacks = [
    "heroku/go"
  ]
}

// # Couple app to different pipeline stages
resource "heroku_pipeline_coupling" "development" {
  app      = "${heroku_app.development.name}"
  pipeline = "${heroku_pipeline.devops-app.id}"
  stage    = "staging"
}

# Create a database, and configure the app to use it
resource "heroku_addon" "development_database" {
  app  = "${heroku_app.development.name}"
  plan = "heroku-postgresql:hobby-dev"
}
