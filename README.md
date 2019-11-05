# wg-quick-go

A Golang implementation of wg-quick.

This tool could be used to configure a [WireGuard](https://www.wireguard.com/) interface with 
[configuration files](https://git.zx2c4.com/WireGuard/about/src/tools/man/wg.8#CONFIGURATION%20FILE%20FORMAT).

See [examples](./examples) for configuration samples.

## How to install

```
go get -u github.com/QuantumGhost/wg-quick-go
```

## How does this work?

This tool uses [wgctrl-go](https://github.com/WireGuard/wgctrl-go/), which uses the correspond 
implementations on the platform and fallbacks to 
[Configuration Protocol](https://www.wireguard.com/xplatform/#configuration-protocol).

## Rationale

The `wg-quick` package is usually not available in the default package repository. One need to add 
extra repos to install `wg-quick`, which may be inconvenient in some cases.
