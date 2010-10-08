<entry xmlns="http://www.w3.org/2005/Atom" xmlns:service="http://activitystrea.ms/service-provider" xmlns:activity="http://activitystrea.ms/spec/1.0/">
  <activity:verb>http://activitystrea.ms/schema/1.0/post</activity:verb>
  <title type="text">{{title}}</title>
  <service:provider>
    <name>CouchAppSpora</name>
    <uri>http://{{domain}}/</uri>
    <icon>{{gravatar}}</icon>
  </service:provider>
  <activity:object>
    <activity:object-type>http://activitystrea.ms/schema/1.0/note</activity:object-type>
    <content type="text">{{title}}</content>
    <link rel="alternate" type="text/html" href="http://{{domain}}/statuses/{{status_id}}" />
    <id>http://{{domain}}/statuses/{{status_id}}</id>
  </activity:object>
  <category scheme="http://schemas.cliqset.com/activity/categories/1.0" term="StatusPosted" label="Status Posted" />
  <updated>{{updated_at}}</updated>
  <published>{{published_at}}</published>
  <id>note</id>
  <link href="http://cliqset.com/users/{{username}}" type="text/xhtml" rel="alternate" title="{{username}} posted a note on {{domain}}" />
  <author>
    <name>{{username}}</name>
    <uri>acct:{{username}}@{{domain}}</uri>
  </author>
  <activity:actor xmlns:poco="http://portablecontacts.net/spec/1.0">
    <activity:object-type>http://activitystrea.ms/schema/1.0/person</activity:object-type>
    <poco:name>
      <poco:givenName>{{first_name}}</poco:givenName>
      <poco:familyName>{{last_name}}</poco:familyName>
    </poco:name>
    <link xmlns:media="http://purl.org/syndication/atommedia" type="image/png" rel="avatar" href="{{gravatar}}" media:height="80" media:width="80" />
    <link xmlns:media="http://purl.org/syndication/atommedia" type="image/png" rel="avatar" href="{{gravatar}}" media:height="120" media:width="120" />
    <link xmlns:media="http://purl.org/syndication/atommedia" type="image/png" rel="avatar" href="{{gravatar}}" media:height="200" media:width="200" />
    <link href="http://{{domain}}/users/{{username}}" rel="alternate" type="text/html" length="0" />
    <id>http://{{domain}}/users/{{username}}</id>
  </activity:actor>
  <link href="{{author}}" rel="ostatus:attention" />
</entry>