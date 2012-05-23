
edgecast_api
===============

Client to the Edgecast API (currently only load and purge endpoints).

Installation
---------

To install:

    gem install edgecast_api
  
Or if you use Bundler, add this to your `Gemfile`

    gem 'edgecast_api'

Usage
-----

    edgecast_api = EdgecastApi.new(account_id, api_token, media_base_uri)
    
    edgecast_api.load(media_type, path)
    edgecast_api.purge(media_type, path)
    
Example:

    edgecast_api = EdgecastApi.new('ab12', 'asdf1234', 'http://wac.cd34.edgecastcdn.net/123EF/my-site')
    
    edgecast_api.load(:http_small_object, '/path/to/object.png')
    edgecast_api.purge(:http_small_object, '/path/to/object.png')

Note that it takes Edgecast five minutes or so to completely purge an object, and you can check the status in their admin interface.


Contributing to edgecast_api
----------------------------------
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

Copyright
--------

Copyright (c) 2012 Brian Ray. See LICENSE.txt for further details.
