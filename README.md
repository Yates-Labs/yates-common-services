# yates-identity-service

> 🚧 This repository is a work-in-progress, please check back later.

## Purpose
**Auth & Identity Management**: Owns platform identity. It's function is to prove who someone is via issuing and validating JSON Web Tokens (JWTs). Designed to abstract authentication providers away from the product level, and to avoid any potential vendor lock-in.

## Contributing
This repository is maintained by members of the **YatesLabs/Core** team; This section is indented for new Core team member onboarding. **Outside contributions will NOT be reviewed or accepted.**

### Local devlopment setup (Linux, MacOS):
1. Ensure you have [GNU Make](https://www.gnu.org/software/make/) installed on your system. Next steps depend on being able to run Makefile commands. 
2. Run `make deps` to ensure that all project dependencies are installed before continuing.