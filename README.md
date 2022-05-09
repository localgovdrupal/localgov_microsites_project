# LocalGov Drupal Microsites Composer project template

This project template provides a starter kit for managing your LocalGov Drupal Microsites dependencies with [Composer](https://getcomposer.org/).

## Usage

First you need to [install Composer](https://getcomposer.org/doc/00-intro.md#installation-linux-unix-osx).

After that you can create the project:

```shell
composer create-project --stability dev localgovdrupal/localgov_microsites_project MY_PROJECT
```

## Using Lando

If using Lando, you can then boot up Lando and run the site install

```shell
cd MY_PROOJECT
lando start
lando drush si localgov_microsites
```
