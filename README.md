# Tutorial: Dockerizing Two Web-Servers To Respond To The Same Domain

This is the repository to a [tutorial written on Medium](https://medium.com/swlh/dockerizing-two-web-servers-to-respond-to-the-same-domain-eb9c15734a68).

> ## Introduction
>
> If you have ever built a service which consisted of multiple loosely linked web servers, all responding to the same domain, and have wondered how you could dockerize them, then this tutorial is for you. If you have built such a project and are wondering why you should implement Docker, here are a couple of reasons:
>
> * No more special dependencies for different operating systems. Figure out your installations once and be done with it.
>
> * Write your setup code once and deploy it as often as you want to. No more repeating it manually on different servers.
>
> * Keep a concise overview of all required services in your docker-compose file. Easily test if they work together locally.
>
> So, if you’re still following, let’s hope you’ll learn something from this!

## Setup

### General

* Install Docker
* Run `docker-compose up --build`. It can take more than 5min for Graphhopper to download Open Street Map data. Don't be irritated by the following message:

    ```bash
    graphhopper_dev | failed: Connection refused.
    graphhopper_dev |   HTTP/1.1 200 OK
    graphhopper_dev |   Date: Tue, 07 Apr 2020 13:26:11 GMT
    graphhopper_dev |   Server: Apache/2.4.29 (Ubuntu)
    graphhopper_dev |   Last-Modified: Tue, 07 Apr 2020 00:13:24 GMT
    graphhopper_dev |   ETag: "37f7cba-5a2a84081b100"
    graphhopper_dev |   Accept-Ranges: bytes
    graphhopper_dev |   Content-Length: 58686650
    graphhopper_dev |   Keep-Alive: timeout=5, max=100
    graphhopper_dev |   Connection: Keep-Alive
    graphhopper_dev |   Content-Type: application/octet-stream
    ```

    Usually this message means the download is working. However, Graphhopper does not show the download process, so just hope for it! 😉

### Development-specific

* Add this to the /etc/hosts file of your local machine

    ```bash
    127.0.0.1 hello_django.localhost.io
    127.0.0.1 graphhopper.localhost.io
    ```

### Production-specific

* Purchase a domain
* Replace 'your_domain.com' references to your domain
* Remove docker-compose.override.yml file

## Test

* Vist HTTP pages in development:
  * [localhost](http://localhost)
  * [hello_django.localhost.io](http://hello_django.localhost.io)
  * [graphhopper.localhost.io](http://graphhopper.localhost.io)
* Visit HTTPS pages in production (substitute 'your_domain.com' with own domain):
  * [www.your_domain.com](https://www.your_domain.com)
  * [your_domain.com](https://your_domain.com)
  * [www.graphhopper.your_domain.com](https://www.graphhopper.your_domain.com)
  * [graphhopper.your_domain.com](https://graphhopper.your_domain.com)

