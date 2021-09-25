# jooby-docker
Jooby, on Docker.

## What?
That's right, the [Jooby](https://jooby.io/) you all know and love now with more Docker.

## Why?
Jooby is a modern web framework for Java and Kotlin. The instructions for creating a new project with Jooby involves
downloading the Jooby CLI. Unless you're prepared to read the source and compile the CLI yourself, executing it on your
own machine involves some level of trust. Also, you need to have Java installed the right way.

Instead, jooby-docker provides a way to use the Jooby CLI with tools you already trust to keep you safe (maybe?) Also,
it means you can use the Jooby CLI if you only have Java installed because of IntelliJ.

## Ok, but now what?
Just clone this repository and run `jooby.sh` from the directory to create projects in. This will give the same end
result as [running the Jooby CLI](https://jooby.io/#getting-started) manually in that directory.

### But wait, can I trust your shell script?
If you want to do it manually, you just need to do the following:

1. Set environment variables for the user to be used in the docker container. (This will _probably_ be the owner of the
   project files that the Jooby CLI creates.)
    * Set `GROUP_ID` to the user's group ID.
    * Set `USER_ID` to the user's user ID.
2. Use `docker-compose run` to run the Jooby CLI.
    * You will need to mount the directory the Jooby CLI will think it is running in to the container's `/tmp/project`
    directory.

## Uh... I'm on Windows
Feel free to open a pull request to add a more Windows friendly script.
