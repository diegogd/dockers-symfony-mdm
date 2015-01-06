Mobile device management with Symfony and Dockers
=================================================

This is a implementation of the Apple Mobile device management as it is detailed in [the documentation][1].

In order to deploy and test the project quickly it has been configured with dockers and Fig. So if you want to test it
just run the following line (You require [fig][2]).

    $ sudo fig build
    $ sudo fig run symfony composer install
    $ sudo fig up -d


If something is changed in the dockers files execute `fig build`

Once created you can stop and stop the dockers with:

    $ fig stop
    $ fig start


[1]:  https://developer.apple.com/library/ios/documentation/NetworkingInternet/Conceptual/iPhoneOTAConfiguration/iPhoneOTAConfiguration.pdf
[2]:  http://www.fig.sh/
