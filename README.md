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
