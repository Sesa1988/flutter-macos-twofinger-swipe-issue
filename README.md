# twofingerswipeissue

https://github.com/flutter/flutter/issues/84158#issuecomment-856785065

Steps to reproduce

- Create a TabBar with two Tabs and TabBarViews
- Create on any of the TabBarViews a horizontal scrollable list
- Scroll with two fingers horizontally over the lists


Result

- TabBarView gets scrolled if scrollable list reaches the end
- NotificationListener does not prevent bubbling events up via two finger scroll


Expected behaviour

- TabBarView does not scroll if child list reaches scroll end
- Maybe a option to catch there events and prevent from bubbling up
