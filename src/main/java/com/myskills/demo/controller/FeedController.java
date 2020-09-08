package com.myskills.demo.controller;

import com.myskills.demo.models.Feed;
import com.myskills.demo.models.Comment;
import com.myskills.demo.models.FeedPojo;
import com.myskills.demo.services.IFeedService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import java.util.List;

@RestController
@RequestMapping(path = "/feeds")
public class FeedController {

  @Autowired
  private IFeedService feedService;

  /**
   * Get the posts posted by user
   **/
  @RequestMapping(value = "/getMyPost/{userId}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
  @ResponseBody
  public List<Feed> getMyPosts(@PathVariable(name = "userId", required = true) Long userId) {
    return feedService.getMyPosts(userId);
  }

  /** get all the feeds **/
  @RequestMapping(value = "/getFeeds/{userId}", method = RequestMethod.GET)
  @ResponseBody
  public List<Feed> getFeeds(@PathVariable(name = "userId", required = true) Long userId) {
    return feedService.getFeeds(userId);
  }

  /** post a new feed **/
  @RequestMapping(value = "/postFeed", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
  @ResponseBody
  public ResponseEntity postFeed(@RequestBody @Validated Feed feed) {
    List<Feed> feedList = feedService.postFeed(feed);
    return ResponseEntity.ok().body(feedList);
  }

  /** post a new comment for a feed **/
  @RequestMapping(value = "/postComment", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
  @ResponseBody
  public ResponseEntity postComment(@RequestBody @Validated Comment comment) {
    List<Comment> commentList = feedService.postComment(comment);
    return ResponseEntity.ok().body(commentList);
  }

  /** like a feed **/
  @RequestMapping(value = "/like", method = RequestMethod.PUT, consumes = MediaType.APPLICATION_JSON_VALUE,
          produces = MediaType.APPLICATION_JSON_VALUE)
  @ResponseBody
  public ResponseEntity like(@RequestBody FeedPojo like) {
    feedService.likeFeed(Long.valueOf(like.getFeedId()));
    //ResponseEntity.accepted().headers(headers).body(c);
    return ResponseEntity.ok().build();
  }

  /** delete a feed **/
  @RequestMapping(value = "/delete", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE,
          produces = MediaType.APPLICATION_JSON_VALUE)
  @ResponseBody
  public ResponseEntity deleteFeed(@RequestBody FeedPojo like) {
    feedService.deleteFeed(Long.valueOf(like.getFeedId()));
    return ResponseEntity.ok().build();
  }
}


