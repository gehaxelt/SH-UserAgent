#!/bin/bash
#Developer: Sebastian Neef (info@gehaxelt.in)
#Git-Repo: https://github.com/gehaxelt/SH-UserAgent
function show_help () {
    echo "UserAgents - by Sebastian Neef
          Writes one of the following useragent to stdout
          Usage: useragent [OPTION]
          Bots:
            -g/--googleGoogle       Bot useragent
            -a/--askAsk.com         Bot useragent
            -y/--yahoo              Yahoo Bot useragent
            -b/--bing               Bing Bot useragent
          Email programs:
            -t/--thunderbird        Thunderbird useragent
            -otl/--outlook          Outlook useragent
          OSes:
            -w/--windows            Window useragent
            -m/--macos              MacOs useragent
            -l/--linux              Linux useragent
            -ap/--androidphone      Android phone useragent
            -at/--androidtablet     Android tablet useragent
            -ffos/--firefoxos       Firefox os useragent
          Programs:
            -ly/--lynx              Lynx useragent
    "
}
if [ $# -eq 0 ] 
then
    show_help
    exit 1
fi

for i in "$@"
    do 
        case $i in
            -h | --h )
                show_help
                exit 1
            ;;
            -ly | --lynx )
                USERAGENT="Lynx/2.8.4rel.1 libwww-FM/2.14 SSL-MM/1.4.1 OpenSSL/0.9.6c"
                break
            ;;
            -g | --google )
                USERAGENT="Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)"
                break
            ;;
            -a | --ask )
                USERAGENT="Mozilla/2.0 (compatible; Ask Jeeves/Teoma)"
                break
            ;;
            -y | --yahoo )
                USERAGENT="Mozilla/5.0 (compatible; Yahoo! Slurp; http://help.yahoo.com/help/us/ysearch/slurp)"
                break
            ;;
            -b | --bing )
                USERAGENT="Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)"
                break
            ;;
            -t | --thunderbird )
                USERAGENT="Thunderbird 1.5.0.7 (X11/20060927)"
                break
            ;;
            -otl | --outlook )
                USERAGENT="Microsoft Outlook IMO, Build 9.0.6604 (9.0.2911.0)"
                break
            ;;
            -w | --windows )
                USERAGENT="Mozilla/5.0 (Windows NT 5.0; rv:10.0) Gecko/20100101 Firefox/10.0"
                break
            ;;
            -m | --macos )
                USERAGENT="Mozilla/5.0 (Macintosh; Intel Mac OS X 10.0; rv:10.0) Gecko/20100101 Firefox/10.0"
                break
            ;;
            -l | --linux )
                USERAGENT="Mozilla/5.0 (X11; Linux i686; rv:10.0) Gecko/20100101 Firefox/10.0"
                break
            ;;
            -ap | --androidphone )
                USERAGENT="Mozilla/5.0 (Android; Mobile; rv:13.0) Gecko/13.0 Firefox/13.0"
                break
            ;;
            -ffos | --firefoxos )
                USERAGENT="Mozilla/5.0 (Mobile; rv:15.0) Gecko/15.0 Firefox/15.0"
                break
            ;;
            -at | --androidtablet )
                USERAGENT="Mozilla/5.0 (Android; Tablet; rv:13.0) Gecko/13.0 Firefox/13.0"
                break
            ;;
            * )
                show_help
                exit 1
            ;;
        esac
    done
echo "$USERAGENT"
exit 0
