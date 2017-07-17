# Collectively.Docker

**Let's go for the better, Collectively​​.**
----------------

**Collectively** is an open platform to enhance communication between counties and its residents​. It's made as a fully open source & cross-platform solution by [Noordwind](https://noordwind.com).

Find out more at [becollective.ly](http://becollective.ly)

**Collectively.Docker**
----------------

The **Collectively.Docker** contains a set of scripts and *dockerfiles* being used by *docker-compose* tool in order to quickly build and run the whole Collectively system.
There are 2 types of files - the *.sh* ones for the *NIX systems and the *.bat* ones for the Windows which do exactly the same thing under the hood.


**Quick start**
----------------

Collectively is built as a set of microservices, therefore the easiest way is to run the whole system using the *docker-compose*.

Clone the repository and run the *start.sh* script:

```
git clone https://github.com/noordwind/Collectively.Docker
./starth.sh
```

For the list of available services and their endpoints [click here](https://github.com/noordwind/Collectively).

You can also run the *starth-no-web.sh* which might be especially useful for developing the web application on the local machine.