FROM haskell:8.10
COPY . .
RUN chmod +x ./infinite.sh
RUN cabal update
RUN cabal build