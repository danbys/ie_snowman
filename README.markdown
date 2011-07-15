# ie_snowman

Rails applies the snowman fix to get around a Internet Explorer (IE) bug [1][r1] [2][r2]
Yet, since the snowman fix clutters the url we only want to apply the fix for IE browsers. `ie_snowman` monkey patches Rails to only apply the fix when a IE browser is detected.

## Requirements

Supported versions are Rails 3 or later, tested versions are 3.0.9 and 3.1.0.rc4.

## Install

- Add `ie_snowman` to your gemfile

```ruby
# Gemfile
gem "ie_snowman"
```
## Links

[r1]: http://railssnowman.info/ "Rails snowman information"
[r2]: http://stackoverflow.com/questions/3222013/what-is-the-snowman-param-in-rails-3-forms-for "Stackoverflow q&a thread"

## Copyright

Copyright (c) 2011 Dan Byström. See LICENSE.txt for
further details.

