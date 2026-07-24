# Multi-Technology Boilerplate Repository

This repository contains boilerplate templates for various programming languages and package managers, designed for testing build security tools across different technology stacks.

## Project Structure

```
.
├── .github/workflows/     # GitHub Actions (manual trigger)
│   ├── javascript.yml
│   ├── java-maven.yml
│   ├── python.yml
│   ├── go.yml
│   ├── ruby.yml
│   ├── php.yml
│   └── dotnet.yml
├── javascript/            # Node.js (npm/pnpm/yarn/bun)
├── java-maven/            # Java with Maven
├── python/                # Python with pip/PyPI
├── go/                    # Go modules
├── ruby/                  # Ruby with Bundler
├── php/                   # PHP with Composer
└── dotnet/                # .NET with NuGet
```

## Technologies Included

| Technology | Package Manager | Directory | Dependencies |
|------------|-----------------|-----------|--------------|
| JavaScript | npm/pnpm/yarn/bun | `javascript/` | express, lodash, axios |
| Java | Maven | `java-maven/` | spring-boot, guava, jackson |
| Python | pip/PyPI | `python/` | flask, requests, pydantic |
| Go | Go Modules | `go/` | gin, logrus, viper |
| Ruby | Bundler | `ruby/` | sinatra, puma, httparty |
| PHP | Composer | `php/` | slim, monolog, guzzle |
| .NET | NuGet | `dotnet/` | Newtonsoft.Json, Serilog, AutoMapper |

## GitHub Actions

Each technology has its own workflow with **manual trigger** (`workflow_dispatch`):

| Workflow | File | Version Options |
|----------|------|-----------------|
| JavaScript | `javascript.yml` | npm, pnpm, yarn, bun |
| Java Maven | `java-maven.yml` | Java 11, 17, 21 |
| Python | `python.yml` | 3.9, 3.10, 3.11, 3.12 |
| Go | `go.yml` | 1.20, 1.21, 1.22 |
| Ruby | `ruby.yml` | 3.0, 3.1, 3.2, 3.3 |
| PHP | `php.yml` | 8.1, 8.2, 8.3 |
| .NET | `dotnet.yml` | 6.0, 7.0, 8.0 |

### Running Workflows

1. Go to **Actions** tab in GitHub
2. Select the workflow for your technology
3. Click **Run workflow**
4. Choose version/package manager options
5. Click **Run workflow** button

## Local Development

### JavaScript
```bash
cd javascript
npm install    # or pnpm/yarn/bun install
npm test
```

### Java Maven
```bash
cd java-maven
mvn clean install
mvn test
```

### Python
```bash
cd python
pip install -r requirements.txt
pytest tests/
```

### Go
```bash
cd go
go mod download
go test ./...
```

### Ruby
```bash
cd ruby
bundle install
bundle exec rspec
```

### PHP
```bash
cd php
composer install
vendor/bin/phpunit tests/
```

### .NET
```bash
cd dotnet
dotnet restore
dotnet build
dotnet test Tests/
```

## InvisiRisk Security Integration

This repository is integrated with **InvisiRisk Build Application Firewall** for comprehensive security monitoring across all technology stacks.

### Required GitHub Secrets

To enable InvisiRisk security monitoring, you must configure the following secrets in your GitHub repository:

| Secret Name | API Key Value | Purpose |
|-------------|---------------|---------|
| `IR_API_KEY_BUILD_JAVASCRIPT` | `sufEU2nda9VK7bcspYBne0Upf5OddMDeaDVEZvdYY4OxifozULERkuXV0FeKW8nI8z1aygQETCqF7pVMPSNomA` | JavaScript build security monitoring |
| `IR_API_KEY_BUILD_PYTHON` | `S8OU83qgvs5VAXx9fnP8-O8lc6cGMPI53y-HsQZv6Y-RMgYfa39WavzGN3_aarJnOQGnTlRVW3doblimzksLrw` | Python build security monitoring |
| `IR_API_KEY_BUILD_DOTNET` | `12U2txuSOqVGxr8mBF-bUvaU9EC1FmuTRD-e7NW750Mz9PlCI1sJPCSqTThqgyTm2l2H4dSr-nIAvRTYlAMMlQ` | .NET build security monitoring |
| `IR_API_KEY_BUILD_GO` | `DK5DLw-qaXfOI7prevWkvq_03eXP9wsXn0uWlfwFoM1_QNPbF0Wve99VPPA1K67k8YlHY32AcFnhCC5hEJIjug` | Go build security monitoring |
| `IR_API_KEY_BUILD_JAVA` | `MOeNemAaWPbUsAa7BKdVDZ-cwGijpKXrOs3v7foYPrXt_kzlK3fVaRNnf1Ui_SpGiiGba6ITHl9QSdvKV47Swg` | Java build security monitoring |
| `IR_API_KEY_BUILD_PHP` | `l3ZFr2sMtDcLTFcjzo4FbiGm6DoICnZrv1Y9Dwpk-IY8sin_01f3s2-dv1BZnkPLJ9zcqt11Q3BupVD7vl3UKQ` | PHP build security monitoring |
| `IR_API_KEY_BUILD_RUBY` | `BPeCxY-du9FyLYGxEQNobr_LHSjeKB0uQ94505t4GCQwS0qAbe9UOhT5TJEvR0n_t461ApsSbxOdcdlngQKDVw` | Ruby build security monitoring |

### How to Add GitHub Secrets

1. **Navigate to Repository Settings**
   - Go to your GitHub repository
   - Click **Settings** tab

2. **Access Secrets Configuration**
   - In the left sidebar, click **Secrets and variables**
   - Click **Actions** under "Secrets and variables"

3. **Add Each Secret**
   - Click **New repository secret** button
   - For each secret listed above:
     - **Name**: Enter the exact secret name (e.g., `IR_API_KEY_BUILD_JAVASCRIPT`)
     - **Secret**: Paste the corresponding API key value
     - Click **Add secret**

4. **Verify Configuration**
   - Repeat step 3 for all 7 secrets
   - Ensure all secret names match exactly (case-sensitive)

### How InvisiRisk Works

- **Setup Phase**: Each build job starts with InvisiRisk setup to initialize security monitoring
- **Monitoring Phase**: InvisiRisk monitors the entire build process for security threats
- **Cleanup Phase**: Each job ends with cleanup to finalize security data collection
- **Analytics Phase**: A dedicated job gathers security analytics from all build jobs

### Security Features

- **Real-time threat detection** during build processes
- **Dependency vulnerability scanning** across all package managers
- **Build pipeline security monitoring** with detailed analytics
- **Multi-project tracking** - Each technology monitored as separate project

> **Note**: The API keys provided are for the staging environment (`https://app.stage.invisirisk.com`). For production use, contact InvisiRisk to obtain production API keys.

## Purpose

This repository is designed for testing build security tools across multiple technology stacks, providing:
- **Dependency scanning** - Each project includes common third-party dependencies
- **Build process testing** - Standard build configurations for each ecosystem
- **CI/CD integration** - GitHub Actions workflows for automated testing
- **Security tool validation** - Test your security tools against real-world package configurations
