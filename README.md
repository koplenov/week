# Study week
What school week is it? Upper/lower? Even/even? [This site](https://week.kinsle.ru) will always help you!

Made on [V](https://vlang.io/)

Working on [2281](https://github.com/koplenov/week/blob/master/week.v#L11) port

### Deploy

For the production build:

`v -prod -autofree week.v`

Description:
* `-prod` - for smaller sizes
* `-autofree` - for auto-release memory (else there will be a memory leak - critical when used as a '24/7' server)
* ¯\\_(ツ)_/¯ 

 Deployed on [week.kinsle.ru](https://week.kinsle.ru)
