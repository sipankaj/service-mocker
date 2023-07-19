# Service Mocking with WireMock
This repository provides an example of how to mock a Docker service using WireMock. WireMock is a tool for stubbing and mocking HTTP-based services. By using WireMock, you can simulate the behavior of a real service and define custom responses to test your application's behavior in various scenarios.

## Prerequisites
Before using this repository, make sure you have the following prerequisites installed on your system:

Docker: Install Docker
Docker Compose: Install Docker Compose
Getting Started
To get started with mocking a Docker service using WireMock, follow these steps:

## Clone the repository:
bash
Copy code
git clone https://github.com/sipankaj/service-mocker.git
cd service-mocker
Start the WireMock server:
bash
Copy code
docker-compose up -d
This command will start a Docker container running WireMock and expose it on port 8080.

## Verify WireMock is running:
Open your web browser and visit http://localhost:8080/__admin. You should see the WireMock admin interface.

## Define stubs:
To define stubs for WireMock, you can add JSON or XML files in the mappings directory. These files contain the desired responses you want WireMock to return when specific HTTP requests are made.

For example, create a file named example-stub.json in the mappings directory with the following content:

json
Copy code
{
  "request": {
    "method": "GET",
    "url": "/api/example"
  },
  "response": {
    "status": 200,
    "body": "Mocked response for /api/example"
  }
}
## Mount the mappings directory:
By default, the mappings directory is mounted as a volume inside the WireMock container. This allows you to modify the stubs without restarting the container. Any changes made to the stubs will be immediately reflected by WireMock.

## Send requests to WireMock:
You can now send requests to WireMock, and it will return the defined responses based on the stubs. For example, using cURL:

bash
Copy code
curl http://localhost:8080/api/example
This will return the mocked response defined in the example-stub.json file.

## Customize WireMock:
You can customize WireMock's behavior by modifying the configuration in the wiremock directory. Refer to the WireMock documentation for more information about the available options.

## Cleaning Up
To stop and remove the WireMock Docker container, use the following command:

bash
Copy code
docker-compose down
This will stop and remove the container, but it will keep the stub files in the mappings directory intact.

License
This repository is licensed under the MIT License. Feel free to modify and use it according to your needs.

Acknowledgements
This repository was inspired by the need for easy service mocking using Docker and WireMock. Special thanks to the WireMock community for creating such a powerful tool.
