* Aim

Provide easy way of creating a small non-caching proxy server in the cloud

* Tools

 - Vagrant, Ansible, GIT on the controlling machine.
 - Delegate, Tor, ziproxy on the cloud server instance.

* Clouds supported

 - VirtualBox for local testing
 - AWS (planned)

* Way of operation

The proxy will be short-lived. So, the action sequence is:

 1. Add a proxy configuration to your browser with *local* address and some high (>1024) port to tunnel to your cloud proxy.
 2. Run `vagrant up ssh`
 3. Browse the Internet safely
 4. Vagrant destroy.

