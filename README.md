# PS4-Waker Docker

A simple port of [PS4-Waker](https://github.com/dhleong/ps4-waker) to a Docker container.

## How to use

### Dependencies

On your host, of course, you'll need to [install Docker](https://docs.docker.com/desktop/install/linux-install/) and [docker-compose](https://docs.docker.com/compose/install/linux/).

If your mobile device is Android, [install PS4 Second Screen from Google Play Store](https://play.google.com/store/apps/details?id=com.playstation.mobile2ndscreen&hl=en&gl=US&pli=1).

If you mobile device is iOS or iPadOS, [install PS4 Second Screen from App Store](https://apps.apple.com/br/app/ps4-second-screen/id1201372796).

Also, make sure that your host and your mobile are in the *same network* as your PS4.

*Optional*: [install git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git).

### How to use

Clone this git repo:

```
git clone https://github.com/marcocspc/ps4-waker-docker
```

Enter the directory:

```
cd ps4-waker-docker
```

Run ps4-waker for the first time and follow the prompts to get your credentials data:

```
docker-compose run ps4-waker
```

*Important*: I've tried to copy credentials from one host to another (I wanted to migrate this container from my workstation to a raspberry pi), but this didn't work, somehow the PS4 has a protection against this. So if you're changing the host, you'll need to run ps4-waker for the first time again.

After this is done, you'll be able to run ps4-waker to interact with your console. Some example commands:

- Wake your PS4:

```
docker-compose run ps4-waker wake
```

- Make your PS4 go into Standby mode:

```
docker-compose run ps4-waker standby
```

- Get your PS4 status:

```
docker-compose run ps4-waker check
```

- Documentation for further options:

```
docker-compose run ps4-waker --help
```
