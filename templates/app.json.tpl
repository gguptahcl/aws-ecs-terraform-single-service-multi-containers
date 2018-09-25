[
  {
    "essential": true,
    "memory": 256,
    "name": "hello-world",
    "cpu": 256,
    "image": "754587690326.dkr.ecr.us-east-1.amazonaws.com/helloworldservice:latest",
    "portMappings": [
        {
            "containerPort": 8080,
            "hostPort": 3000
        }
    ],
	"environment": [ 
               { 
                  "name": "ELB_DNS",
                  "value": "${ELB_DNS_URL}"
               }
            ],
 "links": [
      "weather-service"
    ]
  },
{
    "essential": true,
    "memory": 256,
    "name": "weather-service",
    "cpu": 256,
    "image": "754587690326.dkr.ecr.us-east-1.amazonaws.com/weatherservice:latest",
    "portMappings": [
        {
            "containerPort": 8080,
            "hostPort": 4000
        }
    ]
  }
]

