# aws-rds-keycloak

> A docker container image that made some tweaks to original `jboss/keycloak` to let it work with `aws rds`.

## Usage

```bash
docker pull jefftian/aws-rds-keycloak
```

## Why

Currently the latest `jboss/keycloak` can't connect to `aws rds` database due to a mismatched `java security`. If you are facing the same issue you can use this image too.

## Successful cases

- https://keycloak-jeff-tian.cloud.okteto.net

> This instance of **keycloak** connected to the **aws rds** database.

## Why AWS RDS then

You can deploy a keycloak instance by just one click to heroku from https://github.com/jeff-Tian/keycloak-heroku, which uses `heroku` postgresql database behind the scene.

It's all free, but you will have single point of failure.

Then how to improve it? The answer is to replicate the database. Unfortunately Heroku doesn't give you a more previliged permissions which **replication** requires.

So AWS RDS database is a better choice, you can use the free tier of them, and pass the connection information to this image via environment variables.

If you use `postgresql`, then you can replicate your databases using `bucardo`. With `bucardo`, you can replicate as many `postgresql` databases as you want. And you can even replicate them accross different data centers!
