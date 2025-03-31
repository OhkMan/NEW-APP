# E-commerce Application

A modern e-commerce web application built with Flask and deployed on Azure.

## Features

- User authentication (login/register)
- Product browsing and search
- Shopping cart functionality
- User account management
- Responsive design
- Azure integration

## Prerequisites

- Python 3.9 or higher
- Azure subscription (student plan available)
- Azure CLI (optional)

## Local Development

1. Clone the repository:
```bash
git clone <repository-url>
cd <repository-name>
```

2. Create and activate a virtual environment:
```bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
```

3. Install dependencies:
```bash
pip install -r requirements.txt
```

4. Create a `.env` file based on `.env.example`:
```bash
cp .env.example .env
```

5. Update the `.env` file with your configuration values.

6. Initialize the database:
```bash
flask db init
flask db migrate
flask db upgrade
```

7. Run the application:
```bash
python app.py
```

## Azure Deployment

1. Create an Azure account and install Azure CLI (optional)

2. Create required Azure resources:
   - Azure App Service
   - Azure Database for PostgreSQL
   - Azure Storage Account
   - Azure Key Vault

3. Configure environment variables in Azure App Service:
   - Copy all variables from `.env.example`
   - Update with your Azure resource values

4. Set up GitHub Actions:
   - Fork this repository
   - Add the following secrets to your repository:
     - `AZURE_APP_NAME`: Your Azure App Service name
     - `AZURE_WEBAPP_PUBLISH_PROFILE`: Your App Service publish profile

5. Push to main branch to trigger deployment

## Project Structure

```
├── app.py              # Main application file
├── config.py           # Configuration settings
├── requirements.txt    # Python dependencies
├── startup.txt        # Azure App Service startup command
├── deployment.yaml    # GitHub Actions workflow
├── .env.example       # Example environment variables
├── static/            # Static files (CSS, JS, images)
├── templates/         # HTML templates
└── utils/            # Utility functions
```

## Security Features

- CSRF protection
- Rate limiting
- Secure headers
- Password hashing
- Environment variable management
- Azure Key Vault integration

## Contributing

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details. 