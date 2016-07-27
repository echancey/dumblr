[1mdiff --git a/app/views/blog_posts/index.html.erb b/app/views/blog_posts/index.html.erb[m
[1mindex 639ef95..14742b7 100644[m
[1m--- a/app/views/blog_posts/index.html.erb[m
[1m+++ b/app/views/blog_posts/index.html.erb[m
[36m@@ -1,31 +1,40 @@[m
 <p id="notice"><%= notice %></p>[m
 [m
[31m-<h1>Listing Blog Posts</h1>[m
[32m+[m[32m<div class="navbar navbar-default">[m
[32m+[m[32m  <div class="container-fluid">[m
[32m+[m[32m    <div class="navbar-header">[m
[32m+[m[32m    </div>[m
[32m+[m[32m    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">[m
[32m+[m[32m      <ul class="nav navbar-nav navbar-left">[m
[32m+[m[32m      </ul>[m
[32m+[m[32m      <ul class="nav navbar-nav navbar-right">[m
[32m+[m[32m        <li><%= link_to 'New Blog post', new_blog_post_path %></li>[m
[32m+[m[32m      </ul>[m
[32m+[m[32m    </div>[m
[32m+[m[32m  </div>[m
[32m+[m[32m</div>[m
 [m
[31m-<table>[m
[31m-  <thead>[m
[31m-    <tr>[m
[31m-      <th>Title</th>[m
[31m-      <th>Author</th>[m
[31m-      <th>Blog entry</th>[m
[31m-      <th colspan="3"></th>[m
[31m-    </tr>[m
[31m-  </thead>[m
[32m+[m[32m<h1>Welcome to Hipsterville</h1>[m
 [m
[31m-  <tbody>[m
[31m-    <% @blog_posts.each do |blog_post| %>[m
[31m-      <tr>[m
[31m-        <td><%= blog_post.title %></td>[m
[31m-        <td><%= blog_post.author %></td>[m
[31m-        <td><%= blog_post.blog_entry %></td>[m
[31m-        <td><%= link_to 'Show', blog_post %></td>[m
[31m-        <td><%= link_to 'Edit', edit_blog_post_path(blog_post) %></td>[m
[31m-        <td><%= link_to 'Destroy', blog_post, method: :delete, data: { confirm: 'Are you sure?' } %></td>[m
[31m-      </tr>[m
[31m-    <% end %>[m
[31m-  </tbody>[m
[31m-</table>[m
[31m-[m
[31m-<br>[m
[31m-[m
[31m-<%= link_to 'New Blog post', new_blog_post_path %>[m
[32m+[m[32m<div class="row">[m
[32m+[m[32m  <%= @blog_posts.each do |blog_post| %>[m
[32m+[m[32m  <div class="col-md-6">[m
[32m+[m[32m    <div class="panel panel-default">[m
[32m+[m[32m      <div class="panelpanel-heading">[m
[32m+[m[32m        <p><strong><%= link_to blog_post.title, blog_post %></strong> by <%= blog_post.author %></p>[m
[32m+[m[32m        <div class="posted-at">posted at: <%= blog_post.created_at.strftime('%m/%d/%Y at %I:%M%p') %></div>[m
[32m+[m[32m      </div>[m
[32m+[m[32m      <div class="panel-body">[m
[32m+[m[32m          by <strong><%= blog_post %></strong><br />[m
[32m+[m[32m          <p><span class="posted-at">posted at: <%= blog_post.created_at.strftime('%m/%d/%Y at %I:%M%p') %></span></p>[m
[32m+[m[32m          <p><%= blog_post.blog_entry[0..250] %>...[<%= link_to "READ MORE", blog_post %>]</p>[m
[32m+[m[32m        </div>[m
[32m+[m[32m      <div class="panel-footer">[m
[32m+[m[32m        <%= link_to 'Edit', edit_blog_post_path(blog_post), class: "btn btn-warning" %>[m
[32m+[m[32m        <%= link_to 'Delete', blog_post, method: :delete, data: { confirm: 'Are you sure?'}, class: "btn btn-danger" %>[m
[32m+[m[32m      </div>[m
[32m+[m[32m    </div>[m
[32m+[m[32m  </div>[m
[32m+[m[32m  <% end %>[m
[32m+[m[32m</div>[m
[32m+[m[32m<br>[m
\ No newline at end of file[m
warning: LF will be replaced by CRLF in app/views/blog_posts/index.html.erb.
The file will have its original line endings in your working directory.
