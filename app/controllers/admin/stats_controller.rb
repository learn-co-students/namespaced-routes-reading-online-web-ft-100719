class Admin::StatsController < ApplicationController
  def index
    @post_count = Post.all.count
    @authors_count = Author.all.count
    @last_post = Post.all.last
  end
end