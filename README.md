# Docker angular-cli

A Docker image for angular applications. Already comes with default dependencies installed...

## Run your app

You just need to mount the `/PATH/TO/YOUR/APP` to the conatiners `/usr/src/app`, such as:

    docker run --rm -it -v /PATH/TO/PROJECT:/usr/src/app -p 4200:4200 binfalse/angular-cli

This will execute `npm install && npm start` in your project.
Thus, your npm will install everything, if that is the first run.
Afterwards it will serve you app.

Depending on your configuration you may now see your app running at `http://localhost:4200` on your host :)


## Compile and release your app

To compile everything, you just need to add the compile command to the end of above's command line.
Let's say you would compile it through

    ng build --prod --bh / -d /

Then you would to run:

    docker run --rm -it -v /PATH/TO/PROJECT:/usr/src/app -p 4200:4200 binfalse/angular-cli ng build --prod --bh / -d /

That's it... :)
