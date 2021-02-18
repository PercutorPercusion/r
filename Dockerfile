
FROM r-base
COPY . /cdr
WORKDIR /cdr

RUN R -e "install.packages('tidyverse')"
RUN R -e "install.packages('caret')"
RUN R -e "install.packages('RSNNS')"
RUN R -e "install.packages('frbs')"
RUN R -e "install.packages('FSinR')"
RUN R -e "install.packages('forecast')"
RUN apt-get update

CMD Rscript -e  "source('/cdr/primerscript.R')"