<?php

declare(strict_types=1);

namespace PackageVersions;

use Composer\InstalledVersions;
use OutOfBoundsException;

class_exists(InstalledVersions::class);

/**
 * This class is generated by composer/package-versions-deprecated, specifically by
 * @see \PackageVersions\Installer
 *
 * This file is overwritten at every run of `composer install` or `composer update`.
 *
 * @deprecated in favor of the Composer\InstalledVersions class provided by Composer 2. Require composer-runtime-api:^2 to ensure it is present.
 */
final class Versions
{
    /**
     * @deprecated please use {@see self::rootPackageName()} instead.
     *             This constant will be removed in version 2.0.0.
     */
    const ROOT_PACKAGE_NAME = 'laravel/laravel';

    /**
     * Array of all available composer packages.
     * Dont read this array from your calling code, but use the \PackageVersions\Versions::getVersion() method instead.
     *
     * @var array<string, string>
     * @internal
     */
    const VERSIONS          = array (
  'asm89/stack-cors' => 'v2.1.1@73e5b88775c64ccc0b84fb60836b30dc9d92ac4a',
  'bacon/bacon-qr-code' => '2.0.8@8674e51bb65af933a5ffaf1c308a660387c35c22',
  'brick/math' => '0.9.3@ca57d18f028f84f777b2168cd1911b0dee2343ae',
  'carlos-meneses/laravel-mpdf' => '2.1.11@cb52e5c17df9caa340eaed8566cfb1e3c7b37c33',
  'cohensive/embed' => 'v5.5.0@efbfbd529497f18471d4ac4c2aea7b6b8eb1a336',
  'composer/package-versions-deprecated' => '1.11.99.5@b4f54f74ef3453349c24a845d22392cd31e65f1d',
  'composer/semver' => '3.3.2@3953f23262f2bff1919fc82183ad9acb13ff62c9',
  'dasprid/enum' => '1.0.3@5abf82f213618696dda8e3bf6f64dd042d8542b2',
  'doctrine/cache' => '2.2.0@1ca8f21980e770095a31456042471a57bc4c68fb',
  'doctrine/dbal' => '2.13.9@c480849ca3ad6706a39c970cdfe6888fa8a058b8',
  'doctrine/deprecations' => 'v1.0.0@0e2a4f1f8cdfc7a92ec3b01c9334898c806b30de',
  'doctrine/event-manager' => '1.2.0@95aa4cb529f1e96576f3fda9f5705ada4056a520',
  'doctrine/inflector' => '2.0.6@d9d313a36c872fd6ee06d9a6cbcf713eaa40f024',
  'doctrine/lexer' => '1.2.3@c268e882d4dbdd85e36e4ad69e02dc284f89d229',
  'dragonmantank/cron-expression' => 'v2.3.1@65b2d8ee1f10915efb3b55597da3404f096acba2',
  'egulias/email-validator' => '2.1.25@0dbf5d78455d4d6a41d186da50adc1122ec066f4',
  'ezyang/htmlpurifier' => 'v4.16.0@523407fb06eb9e5f3d59889b3978d5bfe94299c8',
  'fideloper/proxy' => '4.4.2@a751f2bc86dd8e6cfef12dc0cbdada82f5a18750',
  'fruitcake/laravel-cors' => 'v2.2.0@783a74f5e3431d7b9805be8afb60fd0a8f743534',
  'guzzlehttp/guzzle' => '7.5.0@b50a2a1251152e43f6a37f0fa053e730a67d25ba',
  'guzzlehttp/promises' => '1.5.2@b94b2807d85443f9719887892882d0329d1e2598',
  'guzzlehttp/psr7' => '2.4.3@67c26b443f348a51926030c83481b85718457d3d',
  'intervention/image' => '2.7.2@04be355f8d6734c826045d02a1079ad658322dad',
  'laminas/laminas-diactoros' => '2.17.0@5b32597aa46b83c8b85bb1cf9a6ed4fe7dd980c5',
  'laravel/framework' => 'v7.30.6@ecdafad1dda3c790af186a6d18479ea4757ef9ee',
  'laravel/tinker' => 'v2.8.0@74d0b287cc4ae65d15c368dd697aae71d62a73ad',
  'laravel/ui' => 'v2.5.0@d01a705763c243b07be795e9d1bb47f89260f73d',
  'laravelcollective/html' => 'v6.3.0@78c3cb516ac9e6d3d76cad9191f81d217302dea6',
  'lcobucci/clock' => '2.0.0@353d83fe2e6ae95745b16b3d911813df6a05bfb3',
  'lcobucci/jwt' => '4.0.4@55564265fddf810504110bd68ca311932324b0e9',
  'league/commonmark' => '1.6.7@2b8185c13bc9578367a5bf901881d1c1b5bbd09b',
  'league/flysystem' => '1.1.10@3239285c825c152bcc315fe0e87d6b55f5972ed1',
  'league/mime-type-detection' => '1.11.0@ff6248ea87a9f116e78edd6002e39e5128a0d4dd',
  'maatwebsite/excel' => '3.1.45@80627071a8cebb3c1119f1d2881bb6a03a8f9152',
  'maennchen/zipstream-php' => '2.2.6@30ad6f93cf3efe4192bc7a4c9cad11ff8f4f237f',
  'markbaker/complex' => '3.0.2@95c56caa1cf5c766ad6d65b6344b807c1e8405b9',
  'markbaker/matrix' => '3.0.1@728434227fe21be27ff6d86621a1b13107a2562c',
  'monolog/monolog' => '2.8.0@720488632c590286b88b80e62aa3d3d551ad4a50',
  'mpdf/mpdf' => 'v8.1.4@add590e93b7502efafd9839a68cff99f3497b318',
  'myclabs/deep-copy' => '1.11.0@14daed4296fae74d9e3201d2c4925d1acb7aa614',
  'myclabs/php-enum' => '1.8.4@a867478eae49c9f59ece437ae7f9506bfaa27483',
  'nesbot/carbon' => '2.65.0@09acf64155c16dc6f580f36569ae89344e9734a3',
  'nexmo/client' => '2.4.0@9d515f6592d466159f79dde460ce2b99b8128279',
  'nexmo/client-core' => '2.9.2@5feed4876c603423c52eb751d1b46de9d60d1ceb',
  'nikic/php-parser' => 'v4.15.2@f59bbe44bf7d96f24f3e2b4ddc21cd52c1d2adbc',
  'niklasravnsborg/laravel-pdf' => 'v4.1.0@a5f5c22dd5e10d8f536102cec01c21282e18ebae',
  'nwidart/laravel-modules' => '7.3.0@5194d3c1941518f6131238745aff916453afc727',
  'opis/closure' => '3.6.3@3d81e4309d2a927abbe66df935f4bb60082805ad',
  'paragonie/random_compat' => 'v9.99.100@996434e5492cb4c3edcb9168db6fbb1359ef965a',
  'php-http/message-factory' => 'v1.0.2@a478cb11f66a6ac48d8954216cfed9aa06a501a1',
  'phpoffice/phpspreadsheet' => '1.26.0@5b6ceea9705b068f993e268e4debc566c2637063',
  'phpoption/phpoption' => '1.9.0@dc5ff11e274a90cc1c743f66c9ad700ce50db9ab',
  'psr/container' => '1.1.2@513e0666f7216c7459170d56df27dfcefe1689ea',
  'psr/event-dispatcher' => '1.0.0@dbefd12671e8a14ec7f180cab83036ed26714bb0',
  'psr/http-client' => '1.0.1@2dfb5f6c5eff0e91e20e913f8c5452ed95b86621',
  'psr/http-factory' => '1.0.1@12ac7fcd07e5b077433f5f2bee95b3a771bf61be',
  'psr/http-message' => '1.0.1@f6561bf28d520154e4b0ec72be95418abe6d9363',
  'psr/log' => '1.1.4@d49695b909c3b7628b6289db5479a1c204601f11',
  'psr/simple-cache' => '1.0.1@408d5eafb83c57f6365a3ca330ff23aa4a5fa39b',
  'psy/psysh' => 'v0.11.10@e9eadffbed9c9deb5426fd107faae0452bf20a36',
  'ralouphie/getallheaders' => '3.0.3@120b605dfeb996808c31b6477290a714d356e822',
  'ramsey/collection' => '1.3.0@ad7475d1c9e70b190ecffc58f2d989416af339b4',
  'ramsey/uuid' => '4.2.3@fc9bb7fb5388691fd7373cd44dcb4d63bbcf24df',
  'setasign/fpdf' => '1.8.5@f4104a04c9a3f95c4c26a0a0531abebcc980987a',
  'setasign/fpdi' => 'v2.3.6@6231e315f73e4f62d72b73f3d6d78ff0eed93c31',
  'simplesoftwareio/simple-qrcode' => '4.2.0@916db7948ca6772d54bb617259c768c9cdc8d537',
  'spatie/pdf-to-image' => '1.2.2@9a5cb264a99e87e010c65d4ece03b51f821d55bd',
  'srmklive/paypal' => '3.0.16@7138c3b6665d270c40e0df603b8f0c07fc583ca3',
  'stripe/stripe-php' => 'v7.128.0@c704949c49b72985c76cc61063aa26fefbd2724e',
  'swiftmailer/swiftmailer' => 'v6.3.0@8a5d5072dca8f48460fce2f4131fcc495eec654c',
  'symfony/console' => 'v5.4.17@58422fdcb0e715ed05b385f70d3e8b5ed4bbd45f',
  'symfony/css-selector' => 'v5.4.17@052ef49b660f9ad2a3adb311c555c9bc11ba61f4',
  'symfony/deprecation-contracts' => 'v2.5.2@e8b495ea28c1d97b5e0c121748d6f9b53d075c66',
  'symfony/error-handler' => 'v5.4.17@b900446552833ad2f91ca7dd52aa8ffe78f66cb2',
  'symfony/event-dispatcher' => 'v5.4.17@8e18a9d559eb8ebc2220588f1faa726a2fcd31c9',
  'symfony/event-dispatcher-contracts' => 'v2.5.2@f98b54df6ad059855739db6fcbc2d36995283fe1',
  'symfony/finder' => 'v5.4.17@40c08632019838dfb3350f18cf5563b8080055fc',
  'symfony/http-foundation' => 'v5.4.17@b64a0e2df212d5849e4584cabff0cf09c5d6866a',
  'symfony/http-kernel' => 'v5.4.18@5da6f57a13e5d7d77197443cf55697cdf65f1352',
  'symfony/mime' => 'v5.4.17@2a83d82efc91c3f03a23c8b47a896df168aa5c63',
  'symfony/polyfill-ctype' => 'v1.27.0@5bbc823adecdae860bb64756d639ecfec17b050a',
  'symfony/polyfill-iconv' => 'v1.27.0@927013f3aac555983a5059aada98e1907d842695',
  'symfony/polyfill-intl-grapheme' => 'v1.27.0@511a08c03c1960e08a883f4cffcacd219b758354',
  'symfony/polyfill-intl-idn' => 'v1.27.0@639084e360537a19f9ee352433b84ce831f3d2da',
  'symfony/polyfill-intl-normalizer' => 'v1.27.0@19bd1e4fcd5b91116f14d8533c57831ed00571b6',
  'symfony/polyfill-mbstring' => 'v1.27.0@8ad114f6b39e2c98a8b0e3bd907732c207c2b534',
  'symfony/polyfill-php72' => 'v1.27.0@869329b1e9894268a8a61dabb69153029b7a8c97',
  'symfony/polyfill-php73' => 'v1.27.0@9e8ecb5f92152187c4799efd3c96b78ccab18ff9',
  'symfony/polyfill-php80' => 'v1.27.0@7a6ff3f1959bb01aefccb463a0f2cd3d3d2fd936',
  'symfony/polyfill-php81' => 'v1.27.0@707403074c8ea6e2edaf8794b0157a0bfa52157a',
  'symfony/process' => 'v5.4.11@6e75fe6874cbc7e4773d049616ab450eff537bf1',
  'symfony/routing' => 'v5.4.17@4ce2df9a469c19ba45ca6aca04fec1c358a6e791',
  'symfony/service-contracts' => 'v2.5.2@4b426aac47d6427cc1a1d0f7e2ac724627f5966c',
  'symfony/string' => 'v5.4.17@55733a8664b8853b003e70251c58bc8cb2d82a6b',
  'symfony/translation' => 'v5.4.14@f0ed07675863aa6e3939df8b1bc879450b585cab',
  'symfony/translation-contracts' => 'v2.5.2@136b19dd05cdf0709db6537d058bcab6dd6e2dbe',
  'symfony/var-dumper' => 'v5.4.17@ad74890513d07060255df2575703daf971de92c7',
  'tijsverkoyen/css-to-inline-styles' => '2.2.6@c42125b83a4fa63b187fdf29f9c93cb7733da30c',
  'twilio/sdk' => '6.44.1@0739f62e6280d9a20925d2f30a71bfd2bcac48f5',
  'vlucas/phpdotenv' => 'v4.3.0@67a491df68208bef8c37092db11fa3885008efcf',
  'voku/portable-ascii' => '1.6.1@87337c91b9dfacee02452244ee14ab3c43bc485a',
  'vonage/nexmo-bridge' => '0.1.1@36490dcc5915f12abeaa233c6098e0dce14bbb0a',
  'webklex/laravel-pdfmerger' => '1.3.1@3c903d0d1e7d7288c524c3c6483b73ccb88606c1',
  'doctrine/instantiator' => '1.5.0@0a0fa9780f5d4e507415a065172d26a98d02047b',
  'facade/flare-client-php' => '1.10.0@213fa2c69e120bca4c51ba3e82ed1834ef3f41b8',
  'facade/ignition' => '2.17.6@6acd82e986a2ecee89e2e68adfc30a1936d1ab7c',
  'facade/ignition-contracts' => '1.0.2@3c921a1cdba35b68a7f0ccffc6dffc1995b18267',
  'fakerphp/faker' => 'v1.21.0@92efad6a967f0b79c499705c69b662f738cc9e4d',
  'filp/whoops' => '2.14.6@f7948baaa0330277c729714910336383286305da',
  'hamcrest/hamcrest-php' => 'v2.0.1@8c3d0a3f6af734494ad8f6fbbee0ba92422859f3',
  'mockery/mockery' => '1.5.1@e92dcc83d5a51851baf5f5591d32cb2b16e3684e',
  'nunomaduro/collision' => 'v4.3.0@7c125dc2463f3e144ddc7e05e63077109508c94e',
  'phar-io/manifest' => '2.0.3@97803eca37d319dfa7826cc2437fc020857acb53',
  'phar-io/version' => '3.2.1@4f7fd7836c6f332bb2933569e566a0d6c4cbed74',
  'phpunit/php-code-coverage' => '9.2.23@9f1f0f9a2fbb680b26d1cf9b61b6eac43a6e4e9c',
  'phpunit/php-file-iterator' => '3.0.6@cf1c2e7c203ac650e352f4cc675a7021e7d1b3cf',
  'phpunit/php-invoker' => '3.1.1@5a10147d0aaf65b58940a0b72f71c9ac0423cc67',
  'phpunit/php-text-template' => '2.0.4@5da5f67fc95621df9ff4c4e5a84d6a8a2acf7c28',
  'phpunit/php-timer' => '5.0.3@5a63ce20ed1b5bf577850e2c4e87f4aa902afbd2',
  'phpunit/phpunit' => '9.5.27@a2bc7ffdca99f92d959b3f2270529334030bba38',
  'sebastian/cli-parser' => '1.0.1@442e7c7e687e42adc03470c7b668bc4b2402c0b2',
  'sebastian/code-unit' => '1.0.8@1fc9f64c0927627ef78ba436c9b17d967e68e120',
  'sebastian/code-unit-reverse-lookup' => '2.0.3@ac91f01ccec49fb77bdc6fd1e548bc70f7faa3e5',
  'sebastian/comparator' => '4.0.8@fa0f136dd2334583309d32b62544682ee972b51a',
  'sebastian/complexity' => '2.0.2@739b35e53379900cc9ac327b2147867b8b6efd88',
  'sebastian/diff' => '4.0.4@3461e3fccc7cfdfc2720be910d3bd73c69be590d',
  'sebastian/environment' => '5.1.4@1b5dff7bb151a4db11d49d90e5408e4e938270f7',
  'sebastian/exporter' => '4.0.5@ac230ed27f0f98f597c8a2b6eb7ac563af5e5b9d',
  'sebastian/global-state' => '5.0.5@0ca8db5a5fc9c8646244e629625ac486fa286bf2',
  'sebastian/lines-of-code' => '1.0.3@c1c2e997aa3146983ed888ad08b15470a2e22ecc',
  'sebastian/object-enumerator' => '4.0.4@5c9eeac41b290a3712d88851518825ad78f45c71',
  'sebastian/object-reflector' => '2.0.4@b4f479ebdbf63ac605d183ece17d8d7fe49c15c7',
  'sebastian/recursion-context' => '4.0.4@cd9d8cf3c5804de4341c283ed787f099f5506172',
  'sebastian/resource-operations' => '3.0.3@0f4443cb3a1d92ce809899753bc0d5d5a8dd19a8',
  'sebastian/type' => '3.2.0@fb3fe09c5f0bae6bc27ef3ce933a1e0ed9464b6e',
  'sebastian/version' => '3.0.2@c6c1022351a901512170118436c764e473f6de8c',
  'theseer/tokenizer' => '1.2.1@34a41e998c2183e22995f158c581e7b5e755ab9e',
  'laravel/laravel' => 'dev-main@7552b5ba54d47c1ff47447be37e7ba7f8aa6f868',
);

    private function __construct()
    {
    }

    /**
     * @psalm-pure
     *
     * @psalm-suppress ImpureMethodCall we know that {@see InstalledVersions} interaction does not
     *                                  cause any side effects here.
     */
    public static function rootPackageName() : string
    {
        if (!self::composer2ApiUsable()) {
            return self::ROOT_PACKAGE_NAME;
        }

        return InstalledVersions::getRootPackage()['name'];
    }

    /**
     * @throws OutOfBoundsException If a version cannot be located.
     *
     * @psalm-param key-of<self::VERSIONS> $packageName
     * @psalm-pure
     *
     * @psalm-suppress ImpureMethodCall we know that {@see InstalledVersions} interaction does not
     *                                  cause any side effects here.
     */
    public static function getVersion(string $packageName): string
    {
        if (self::composer2ApiUsable()) {
            return InstalledVersions::getPrettyVersion($packageName)
                . '@' . InstalledVersions::getReference($packageName);
        }

        if (isset(self::VERSIONS[$packageName])) {
            return self::VERSIONS[$packageName];
        }

        throw new OutOfBoundsException(
            'Required package "' . $packageName . '" is not installed: check your ./vendor/composer/installed.json and/or ./composer.lock files'
        );
    }

    private static function composer2ApiUsable(): bool
    {
        if (!class_exists(InstalledVersions::class, false)) {
            return false;
        }

        if (method_exists(InstalledVersions::class, 'getAllRawData')) {
            $rawData = InstalledVersions::getAllRawData();
            if (count($rawData) === 1 && count($rawData[0]) === 0) {
                return false;
            }
        } else {
            $rawData = InstalledVersions::getRawData();
            if ($rawData === null || $rawData === []) {
                return false;
            }
        }

        return true;
    }
}
