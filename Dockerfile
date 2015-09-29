data:
  image: ubuntu:14.04
  command: cat
  volumes:
    - /data
  labels:
    io.rancher.sidekicks: psql
psql:
  build: .
  volumes_from:
    - data
  links:
    - "db:mysql"
  environment:
    POSTGRESQL_USER: "JFOIEWJION#ionfoe89wf32n98344"
    POSTGRESQL_PASS: "JFOIEWJION#ionfoe89wf32n98344"
  hostname: psql
  ports:
    - "11000:5432"
