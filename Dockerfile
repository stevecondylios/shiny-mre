FROM rocker/shiny:latest

# RUN apt-get update && apt-get install -y \
#     libcurl4-gnutls-dev \
#     libssl-dev

# RUN R -e 'install.packages("ggplot2", repos="https://cran.rstudio.com/")'

COPY ./app/* /srv/shiny-server/

CMD ["/usr/bin/shiny-server"]






