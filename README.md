# DataCollectPro

![Platform](https://img.shields.io/badge/platform-Docker-blue.svg)
[![License](https://img.shields.io/badge/license-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

DataCollectPro is an enterprise-grade data collection platform designed for research organizations, NGOs, and consulting firms. It provides secure form management, real-time data collection, advanced analytics, and comprehensive user management with enterprise-level features.

DataCollectPro transforms data collection with enterprise features including:

* **Multi-tenant SaaS Architecture** - Secure organization isolation
* **Advanced Analytics Dashboard** - Real-time insights and reporting
* **Smart Form Builder** - AI-powered form creation with logic and validation
* **Data Quality Monitoring** - Automated quality checks and issue detection
* **Team Collaboration** - Shared workspaces, comments, and workflow management
* **Enhanced Mobile Collection** - Offline support, GPS tracking, and media capture
* **Enterprise SSO Integration** - SAML, OAuth, and LDAP support
* **API-First Design** - Comprehensive REST and GraphQL APIs
* **Automated Reporting** - Scheduled reports and custom export formats
* **Compliance & Security** - SOC 2, GDPR, and HIPAA ready
* **White-label Solutions** - Customizable branding for partners

This repository contains the core platform infrastructure optimized for cloud deployment and enterprise scalability.

If you are looking for help, please take a look at the [Documentation Website](https://docs.getodk.org/central-intro/). If that doesn't solve your problem, please head over to the [ODK Forum](https://forum.getodk.org) and do a search to see if anybody else has had the same problem. If you've identified a new problem or have a feature request, please post on the forum. We prefer forum posts to GitHub issues because more of the community is on the forum.

## Contributing

We would love your contributions to Central. If you have thoughts or suggestions, please share them with us on the [Ideas board](https://forum.getodk.org/c/ideas) on the ODK Forum. If you wish to contribute code, you have the option of working on the Backend server ([contribution guide](https://github.com/getodk/central-backend/blob/master/CONTRIBUTING.md)), the Frontend website ([contribution guide](https://github.com/getodk/central-frontend/blob/master/CONTRIBUTING.md)), or both. To set up a development environment, first follow the [Backend instructions](https://github.com/getodk/central-backend#setting-up-a-development-environment) and then optionally the [Frontend instructions](https://github.com/getodk/central-frontend#setting-up-your-development-environment).

### Branches

The `master` branch of this repository is a stable branch that users clone when they install Central in production. The `next` branch reflects ongoing development for the next version of Central. Note that this differs from the `central-backend` and `central-frontend` repositories, where `master` is the development branch. If you create a PR to this repository, please target the `next` branch unless you are only changing documentation like the readme.

### Services

In addition to the Backend and the Frontend, Central deploys services:

* Central relies on [pyxform-http](https://github.com/getodk/pyxform-http) for converting Forms from XLSForm. It generally shouldn't be needed in development but can be run locally.
* Central relies on [Enketo](https://github.com/enketo/enketo-express) for Web Form functionality. Enketo can be run locally and configured to work with Frontend and Backend in development by following [these instructions](https://github.com/getodk/central-frontend/blob/master/docs/enketo.md).

If you want to work on the Central codebase and don't want to setup dependent services like Postgresql, Enketo, etc manually then you can run `make dev`, which will start those services as Docker containers. This setup requires a local domain name, `central-dev` is a good choice. Add this name in the following places:

* Set `DOMAIN=central-dev` in the `.env` file. 
* Add an entry in your `/etc/hosts` file for `127.0.0.1 central-dev`.
* Create `local.json` in the central-backend directory and set the value of `default.env.domain` to `http://central-dev:8989`

## Operations
This repository serves administrative functions, but it also contains the Docker code for building and running a production Central stack.

To learn how to run such a stack in production, please take a look at [our DigitalOcean installation guide](https://docs.getodk.org/central-install-digital-ocean/).

## Node.js version

We aim to use the latest [active LTS version of Node.js](https://github.com/nodejs/release/blob/main/README.md#release-schedule). This means that we generally update the major Node version used across all Central components once a year. Each time we do a Central release, we update to the latest version within the active LTS line. Node updates are done near the end of the release cycle but before regression testing.

## License

All of ODK Central is licensed under the [Apache 2.0](https://raw.githubusercontent.com/getodk/central/master/LICENSE) License.
