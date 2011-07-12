# ie_snowman

Rails applies the snowman fix to get around a [Internet Explorer (IE) bug](http://stackoverflow.com/questions/3222013/what-is-the-snowman-param-in-rails-3-forms-for).
Rails' built-in fix applies the snowman to all browsers although the fix is only required by IE browsers.
Yet, since the snowman fix clutters the url we only want to apply the fix for IE browsers. `ie_snowman` monkey patches Rails to only apply the fix when a IE browser is detected.

## Install

 * Add `ie_snowman` to your gemfile
 * run `bundle install`

## Copyright

Copyright (c) 2011 Dan Byström. See LICENSE.txt for
further details.

