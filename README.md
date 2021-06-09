# Study week
What school week is it? Upper/lower? Even/even? [This site](https://week.kinsle.ru) will always help you!

Made on [V](https://vlang.io/)

Working on [2281](https://github.com/koplenov/week/blob/master/week.v#L11) port

### Deploy

For the production build:

`v -prod -autofree -gc boehm week.v`

Description:
* `-prod` - for smaller sizes
* `-autofree` - for auto-release memory
* `-gc boehm` -  to make the memory auto-release work
* ¯\\_(ツ)_/¯ 

 Deployed on [week.kinsle.ru](https://week.kinsle.ru)

