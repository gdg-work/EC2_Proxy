# 54 is the Tor DNS port.
forward-zone:
  name: "onion."
  forward-addr: 127.0.0.1@5400

forward-zone:
  name: "exit."
  forward-addr: 127.0.0.1@5400
