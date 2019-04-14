# github achievements, dockerized. with private repo access

Yes, it is possible! [Acha](https://github.com/someteam/acha) documentation is sparse though and I had to go down some rabbit holes to puzzle it all together.

With the examples provided here it's not difficult to get this running. So let's get started!

## Setup

Clone this repo.

You'll need a new SSH key pair.<sup>[1](#note-private-repo)</sup> Create one with:

`ssh-keygen -t rsa -b 4096 -m PEM -C "acha github achievements"` <sup>[2](#note-ssh-key)</sup>

When asked for the file name, name it `acha_rsa`. Use an email address you use with Github and leave the password blank.

Copy `acha_rsa` to the `ssh` folder

Add `acha_rsa.pub` to your Github account, like [described here](https://help.github.com/en/articles/adding-a-new-ssh-key-to-your-github-account)

Start the container with `./run.sh` or `docker-compose up`

Have a look at `run.sh` for an example of running it with `docker run` or see the `docker-compose.yml` for a `docker-compose` example.

Hope that helps!

<hr />

<a name="note-private-repo">1</a> You can run acha without SSH key, but then you cannot use git SSH URLs and cannot access private repos.

<a name="note-ssh-key">2</a> The `-m PEM` flag is key here (pun intended). If you don't use it, acha will give you invalid key errors and SSH access won't work.
