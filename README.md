# What is MinerGate-CLI?

MinerGate-CLI is the console miner provided by [MinerGate](http://rebrand.ly/minergate).

MinerGate is a mining pool created by a group of cryptocoin enthusiast.

MinerGate-CLI supports Bytecoin (BCN), Monero (XMR), Quazarcoin (QCN), DigitalNote (XDN), Fantomcoin (FCN), MonetaVerde (MCN), Aeon coin (AEON), Dashcoin (DSH), and Infinium-8 (INF8).

![logo](https://scontent.cdninstagram.com/t51.2885-19/s150x150/11939576_895926810497744_2081713499_a.jpg)

# How to use this image

Run in background:

```console
$ docker run -d --name YOUR_CONTAINER_NAME minecoins/minergate-cli -user YOUR_EMAIL -CURRENCY
```

Get minergate-cli options with:

```console
$ docker run --rm minecoins/minergate-cli -help
```

Fetch logs of a container:

```console
$ docker logs YOUR_CONTAINER_NAME
```
