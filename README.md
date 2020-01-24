Thanks for checking out this issue with polymorphic associations.

This is tiny Rails 6.0 app, and the relevant code is in `app/models` and in `db/migrations`.

To see the problem for yourself and play around with it, clone this repo, bundle install, start the Rails console and run:

```
Organization.create(name: 'org')
User.create(name: 'user')

User.first.organizations # SQL looks fine
Organization.first.users # SQL has access_to_type condition twice
```
