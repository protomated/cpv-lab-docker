# CPV Lab Pro v11 Multi-Architecture Docker Setup

This repository contains a multi-architecture Docker setup for CPV Lab Pro v11, allowing you to easily deploy and run the application in a containerized environment using CapRover. The Docker image is built for multiple architectures (amd64 and arm64) to ensure compatibility across different systems, including traditional x86-64 servers and ARM-based systems like AWS Graviton or Apple Silicon.

## Key Features

- **Multi-Architecture Support**: Run on both x86-64 (amd64) and ARM64 systems without modification.
- **CapRover Compatibility**: Easy deployment using CapRover, a free and open-source PaaS.
- **CPV Lab Pro v11**: Specifically designed for the latest version of CPV Lab Pro.

## Prerequisites

- A server with CapRover installed (compatible with both x86-64 and ARM64 architectures)
- Access to the CapRover dashboard
- Your CPV Lab Pro v11 license

## Deployment Steps

### 1. Set up Custom MySQL Database

Before deploying CPV Lab Pro, you need to set up a custom MySQL database that disables the ONLY_FULL_GROUP_BY mode:

1. In your CapRover dashboard, go to "Apps" and click on "Create a New App".
2. Name your app (e.g., "cpv-lab-mysql") and select "Has Persistent Data" checkbox.
3. After the app is created, go to the app details.
4. In the "Deployment" tab, select "Deploy via Dockerfile".
5. Paste the following Dockerfile content:

```dockerfile
FROM mysql:5.7

# Create a custom configuration file to disable ONLY_FULL_GROUP_BY
RUN echo "[mysqld]" > /etc/mysql/conf.d/disable_only_full_group_by.cnf && \
    echo "sql_mode=STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION" >> /etc/mysql/conf.d/disable_only_full_group_by.cnf

# Expose the default MySQL port
EXPOSE 3306
```

6. In the "App Configs" tab, add the following environment variables:
   - `MYSQL_ROOT_PASSWORD`: [Choose a strong password]
   - `MYSQL_DATABASE`: cpvlab (or your preferred database name)

7. Click on "Deploy" to create your custom MySQL container.

8. After deployment, note down the following details:
   - MySQL Root Password (the one you set in step 6)
   - MySQL Database Name (cpvlab or the name you chose)
   - Container IP Address (you'll find this in the app details)

### 2. Deploy CPV Lab Pro v11

Now that you have set up the custom MySQL database, you can proceed with deploying CPV Lab Pro v11:

1. In CapRover, go to "Apps" and click on "Create a New App".
2. Enter a name for your app (e.g., "cpv-lab-pro") and click "Create New App".
3. In the app details page, go to the "Deployment" tab.
4. Under "Deploy via ImageName", enter the following image name:
   ```
   ghcr.io/protomated/cpv-lab-pro:latest
   ```
   Note: CapRover will automatically pull the correct architecture image for your server.
5. In the "App Configs" tab, configure the following:
   - Container HTTP Port: 80
   - NodeJS Version: None (this is a PHP application)

6. Under "Environmental Variables", add the following:
   - `DB_HOST`: srv-captain--cpv-lab-mysql-db
   - `DB_USER`: root
   - `DB_PASSWORD`: [MySQL Root Password]
   - `DB_NAME`: cpvlab

7. Click on "Deploy" to pull the latest image and start your application.

### 3. Complete CPV Lab Pro Installation

1. Once deployed, access your application via the URL provided by CapRover.
2. Append `/install-wizard.php` to your application's URL to access the CPV Lab Pro installation wizard.
3. Follow the installation steps, using the database credentials you set up earlier.
4. When prompted, enter your CPV Lab Pro v11 license key.

## Updating Your Deployment

To update your CPV Lab Pro v11 installation:

1. Log in to your CapRover dashboard (default password / username is `admin`/`admin`).
2. Go to your CPV Lab Pro app.
3. Click on "Deploy" to pull the latest image and update your application.

The multi-architecture image will ensure you always get the correct version for your server's architecture.

## Troubleshooting

If you encounter any issues during deployment:

1. Check the CapRover logs for your application.
2. Ensure all required environment variables are set correctly.
3. Verify that your server meets the system requirements for CPV Lab Pro v11.
4. Make sure the MySQL database is accessible from the CPV Lab Pro container.
5. If you're using an ARM64-based server and experiencing issues, ensure that all required PHP extensions are available for ARM64 architecture.

## Support

If you need assistance with CPV Lab Pro v11, please refer to the [official documentation](https://doc.cpvlab.pro/) or contact CPV Lab support.

For issues related to this Docker setup or CapRover deployment, please open an issue in this GitHub repository. When reporting issues, please include your server's architecture (x86-64/amd64 or ARM64) for better assistance.

## License

This Docker setup is distributed under the MIT License. See `LICENSE` for more information.

CPV Lab Pro v11 is a commercial product. Ensure you have a valid license to use it.

## Disclaimer

This repository is not officially associated with or endorsed by CPV Lab. It is a community-created tool to facilitate the deployment of CPV Lab Pro v11 using Docker and CapRover.

The multi-architecture build is provided as-is, and while it has been tested on common configurations, we cannot guarantee compatibility with all possible ARM64 systems.