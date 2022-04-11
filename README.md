# Minimal Reproducible Example of a Shiny App in Docker

Clone or fork this repo, or make the files manually.

In the terminal, go to the root of this repo, use this command to build the image:

```sh
docker build -t shinyimage . 
```

Then run the image with this:

```sh
docker run -p 3838:3838 shinyimage
```

Visit http://localhost:3838/ in your browser to see the app running. 

That's it!

### Notes

- Instead of the file app.R, you may prefer to use server.R and ui.R files, to do so, simply replace app.R with the server.R and ui.R files. The example app is taken from the [Shiny docs](https://shiny.rstudio.com/tutorial/written-tutorial/lesson1/)
- To install packages, add a line to the Dockerfile like this (add it after `FROM rocker/shiny:latest`):

```sh
RUN R -e 'install.packages("ggplot2", repos="https://cran.rstudio.com/")'
```

- Other dependencies can be installed with apt-get, like so:

```sh
RUN apt-get update && apt-get install -y \
    libcurl4-gnutls-dev \
    libssl-dev
``` 



