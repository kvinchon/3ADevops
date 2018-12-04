start:
  docker-compose up

test:
  cd handler && go test && cd ..

build: test
  go build

infra:
  terraform init
  terraform plan
  terraform apply
