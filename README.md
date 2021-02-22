To run:

```sh
$ cd nmdashboard
$ docker build -t nm-dashboard .
$ cd ../beekeep-dashbord
$ docker build -t beekeep-dashboard .
$ cd ../shinyproxy-configuration
$ docker network create dash-net
$ docker build . -t shinyproxy
$ docker run -d -v /var/run/docker.sock:/var/run/docker.sock --restart unless-stopped --net dash-net -p 3838:3838 shinyproxy
```
