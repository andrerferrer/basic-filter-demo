## Goal
This is an app to teach how to implement a filter form in Rails using the basics.

## How to
### 1. Add a filter in the [view](https://github.com/andrerferrer/basic-filter-demo/blob/master/app/views/restaurants/index.html.erb)

e.g.

```erb
<div class="filter-bar">
	<%= simple_form_for :search, method: :get, url: restaurants_path do |f| %>
		<%= f.input :name %>
		<%= f.input :neighborhood, collection: Restaurant.distinct.pluck(:neighborhood) %>
		<%= f.submit "Filter" %>
	<% end %>
</div>
```

### 2. Handle it accordingly in the [controller](https://github.com/andrerferrer/basic-filter-demo/blob/master/app/controllers/restaurants_controller.rb)

Good luck, have fun!
