To run:

```sh
$ cd nmdashboard/dashboard
$ docker build -t nm-dashboard .
$ cd ../
$ cd nmdashboard/beekeep-dashbord
$ docker build -t beekeep-dashboard .
$ cd ../
$ docker network create dash-net
$ docker build . -t shinyproxy
$ docker run -d -v /var/run/docker.sock:/var/run/docker.sock --restart unless-stopped --net dash-net -p 3838:3838 shinyproxy
```
