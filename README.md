# LocalGov Drupal Microsites Composer project template

This project template provides a starter kit for managing your LocalGov Drupal Microsites dependencies with [Composer](https://getcomposer.org/).

## Usage

First you need to [install Composer](https://getcomposer.org/doc/00-intro.md#installation-linux-unix-osx).

After that you can create the project:

```shell
composer create-project --stability dev localgovdrupal/localgov_microsites_project MY_PROJECT  --no-install
```

## Using Lando

If using Lando, you can then boot up Lando and run the site install

```shell
cd MY_PROJECT
lando start
lando composer install
lando drush si localgov_microsites
```

## Not using Lando

If you're not using lando, you'll still need to run the composer install.

```shell
cd MY_PROJECT
composer install
drush si localgov_microsites
```

## Runnint PHPUnit tests in Lando

The included phpunit.xml.dist file contains configuration for automatically
running the LocalGov Drupal test suite.

To run all LocalGov Drupal tests with Lando use:

```bash
lando ssh
phpunit
```

To run all the tests for a specific module use:

```bash
lando ssh
phpunit web/modules/contrib/localgov_my_module
```

Tests can be filtered using the `--filter` option. To only run a specific test
use:

```bash
lando ssh
phpunit --filter=myTestName
```
