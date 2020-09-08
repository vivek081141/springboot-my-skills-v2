package com.myskills.demo.models;

import lombok.Data;
import javax.validation.constraints.NotNull;

@Data
public class FeedPojo {
  @NotNull(message = "Feed id can not be empty")
  private Long feedId;
}
