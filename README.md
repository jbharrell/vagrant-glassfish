vagrant-glassfish
=================
The project will create a Ubuntu based vm and provision the box with Glassfish and the necessary dependencies.  Additionally, various technologies have been installed to the stack.

Current Stack:

 * OS: Ubuntu LTS 10.2
 * Latest Open JDK
 * GlassFish V4 (installed as a service)

Vagrant
-------
Vagrant is a system used for creating and configuring virtual development environments.  To get started with this project you'll need to:

 * download [VirtualBox](https://www.virtualbox.org/wiki/Downloads) (used by Vagrant)
 * download [Vagrant](http://downloads.vagrantup.com/)

Starting and using the Vagrant box
----------------------------------
1. Download the aforementioned software.
2. Clone this repository.
3. Run ```vagrant up``` from the cloned repo
4. In a few minutes you should have a clean GlassFish install

**Accessing the server:**

 * Glassfish console: http://localhost:4848
 * Default domain: http://localhost:8080