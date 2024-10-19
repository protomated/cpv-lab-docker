# CPV Lab Pro Docker Setup

This repository contains the Docker setup for CPV Lab Pro, allowing you to easily deploy and run the application in a containerized environment.

## Prerequisites

- Docker
- Docker Compose
- Git
- A DockerHub account

## Setup and Deployment

1. Clone this repository:
   ```
   git clone https://github.com/your-username/cpv-lab-docker.git
   cd cpv-lab-docker
   ```

2. Place your CPV Lab Pro files in a directory named `cpv-lab-files` in the root of this repository.

3. Build and run the Docker containers:
   ```
   docker-compose up --build
   ```

4. Access the CPV Lab Pro installation wizard at `http://localhost:8080/install-wizard.php` and follow the installation steps.

## Using the DockerHub Image

To use the published Docker image:

1. Pull the image:
   ```
   docker pull protomated/cpv-lab-pro:latest
   ```

2. Run the container:
   ```
   docker run -p 8080:80 -d protomated/cpv-lab-pro:latest
   ```

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

Distributed under the MIT License. See `LICENSE` for more information.

## Contact

Dele Tosh - dele@protomated.com

Project Link: [https://github.com/protomated/cpv-lab-docker](https://github.com/protomated/cpv-lab-docker)