# yates-common-services

> 🚧 This repository is a work-in-progress, please check back later.

This repo contains services that are intended to be used by Yates Labs' products for the following:
- **Auth & Identity Management**: `./services/identity` - Owns platform identity. It's function is to prove who someone is via issuing and validating JSON Web Tokens (JWTs). Designed to abstract authentication providers away from the product level, and to avoid any potential vendor lock-in. See `./services/identity/README.md` for more information.

## Contributing
This repository is maintained by members of the **YatesLabs/Core** team; This section is indented for new Core team member onboarding. **Outside contributions will NOT be reviewed or accepted.**

### Local devlopment setup (Linux, MacOS):
1. Ensure you have [GNU Make](https://www.gnu.org/software/make/) installed on your system. Next steps depend on being able to run Makefile commands. 
2. Run `make deps` to ensure that all project dependencies are installed before continuing.
3. Run `make setup` to initialize your local development environment. Consists of commands that setup your repo beyond what is tracked by Git.
