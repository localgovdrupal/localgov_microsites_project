# LocalGov Drupal Microsites Composer project template

This project template provides a starter kit for managing your LocalGov Drupal Microsites dependencies with [Composer](https://getcomposer.org/).

## Usage

First you need to [install Composer](https://getcomposer.org/doc/00-intro.md#installation-linux-unix-osx).

After that you can create the project:

```shell
composer create-project --stability beta localgovdrupal/localgov_microsites_project MY_PROJECT  --no-install
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

The default .lando.dist.xml includes environment variables for:

```bash
BROWSERTEST_OUTPUT_DIRECTORY: '/app/web/sites/simpletest/browser_output'
BROWSERTEST_OUTPUT_BASE_URL: 'https://localgov-micro.lndo.site'
```

To allow html output, manually create a directory for browser output.

```bash
mkdir web/sites/simpletest/browser_output
```

To run all LocalGov Drupal tests from Lando:

```bash
lando ssh
phpunit
```

To run all the tests for a specific module:

```bash
lando ssh
phpunit web/modules/contrib/localgov_my_module
```

Tests can be filtered using the `--filter` option. To only run a specific test:

```bash
lando ssh
phpunit --filter=myTestName
```

## Maintainers

This project is currently maintained by: 

 - Ekes: https://www.drupal.org/u/ekes
 - Finn Lewis: https://www.drupal.org/u/finn-lewis
 - Stephen Cox: https://www.drupal.org/u/stephen-cox 
