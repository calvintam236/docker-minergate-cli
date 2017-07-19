# What is MinerGate-CLI?

MinerGate-CLI is the console miner provided by [MinerGate](https://minergate.com/).

MinerGate-CLI supports Bytecoin (BCN), Monero (XMR), Quazarcoin (QCN), DigitalNote (XDN), Fantomcoin (FCN), MonetaVerde (MCN), Aeon coin (AEON), Dashcoin (DSH), and Infinium-8 (INF8). Merged mining is available.

# How to use this image

Run in background with MinerGate:

```console
$ docker run -d --name YOUR_CONTAINER_NAME calvintam236/minergate-cli -user YOUR_USERNAME --CURRENCY(IES) CORE(S)
```

Run in background with other pools:

```console
$ docker run -d --name YOUR_CONTAINER_NAME calvintam236/minergate-cli -o YOUR_POOL_ADDRESS -u YOUR_USERNAME --CURRENCY(IES) CORE(S)
```

Get minergate-cli options with:

```console
$ docker run --rm calvintam236/minergate-cli -help
```

Fetch logs of a container:

```console
$ docker logs YOUR_CONTAINER_NAME
```
