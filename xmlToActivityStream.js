//this is adapted from @daleharvey's codez
// TODO: Spec compliant with http://github.com/activitystreams/json-schema/raw/master/feed.json
// WARNING: this works, its just not a valid activity streams json object yet

exports.xmlToActivityStreamJson = function(xml) {
  var i, item, body, date,
      re   = /^<\?xml\s+version\s*=\s*(["'])[^\1]+\1[^?]*\?>/,
      str  = xml.replace(re, ""),
      feed = new XML(str);

  // this is nasty, but its rss, its supposed to be nasty
  // duck type rss vs atom
  if (feed.channel.length() > 0) {

    for (i = 0; i < feed.channel.item.length(); i++) {
      item = feed.channel.item[i];
      body = item.description.toString();
      date = new Date(item.pubDate.toString()).getTime();
      
      if (!date) {  
       date = new Date().getTime();
      }	
      
      return { 
        title : item.title.toString(),
        body  : body,
        link  : item.link.toString(),
        date : Math.round(date / 1000),
        sourceTitle : feed.channel.title.toString()
      };
    }
  } else {
    default xml namespace="http://www.w3.org/2005/Atom";
    for each (item in feed..entry) { 
      body = item.content.toString();
      date = new Date(item.updated.toString()).getTime();
      
      if (!date) { 
       date = new Date().getTime();
      }
        
      var link = null;
      if('link' in item) link = item.link[0].@href.toString();
      return {
        title : item.title.toString(),
        body  : body,
        link  : link,
        date : Math.round(date / 1000),
        sourceTitle : feed.title.toString()
      };
    }
  }
}