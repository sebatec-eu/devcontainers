# devcontainers

It provides useful devcontainers for sebaTEC.
In case you want to know more about devcontainers, visit <https://containers.dev/>.

## Getting Started

### Prerequisites

- [Vagrant](https://www.vagrantup.com/downloads)
- [Vagrant Libvirt Plugin](https://vagrant-libvirt.github.io/vagrant-libvirt/)

Additional prerequisites are provisioned on the vagrant machine.

### Setup

1. Clone the repository:

   ```sh
   git clone https://github.com/sebatec-eu/devcontainers.git
   cd devcontainers
   ```

2. Start the Vagrant environment and connect with it

   ```sh
   vagrant up
   vagrant ssh
   ```

3. Build the devcontainers on the vagrant environment:

   ```sh
   make build -C /vagrant
   ```

## How to create a new devcontainer

1. Create new sub folder
2. Log into Github registry with `gh auth token |  podman login ghcr.io -u accountname --password-stdin`
3. Pull latest debian testing build `podman pull docker.io/debian:testing`
4. Check image ID `podman images docker.io/debian:testing`
5. Push latest image with `podman push 68d4a80b1d6d ghcr.io/sebatec-eu/pandoc-devcontainer:latest`
6. Add Repo to Registry, change visibility to public and ensure that Github Action has write permissions

By this intermediate image upload, we can circumvent big image sizes.

## Contributing

We welcome contributions! Please follow these steps to contribute:

1. Fork the repository.
2. Create a new branch:
   ```sh
   git checkout -b feature-branch
   ```
3. Make your changes and commit them:
   ```sh
   git commit -m "Description of your changes"
   ```
4. Push to your fork:
   ```sh
   git push origin feature-branch
   ```
5. Create a pull request.

## Guidelines

- Follow the existing code style.
- Write clear and concise commit messages.
- Ensure your changes do not break existing functionality.
- Update documentation as needed.

## License

This project is licensed under the MIT License - see the <LICENSE> file for details.
