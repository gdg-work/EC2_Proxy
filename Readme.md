* Aim

Provide easy way of creating a small non-caching proxy server in the cloud

* Tools

 - Vagrant, Ansible, GIT on the controlling machine.
 - Delegate, Tor, ziproxy on the cloud server instance.

* Clouds supported

 - VirtualBox for local testing
 - AWS (working)

* Way of operation

The proxy is meant to be short-lived. So, the action sequence is:

 1. Add a proxy configuration to your browser with *local* address and some high (>1024) port to tunnel to your cloud proxy.  Default port is 8080, if changed, it must be changed in Ansible templates and shell script
 2. Run `vagrant up`
 3. Run SSH script to connect to proxy and tunnel some ports (8080) there.
 5. Browse the Internet safely
 6. Vagrant halt or vagrant destroy.
