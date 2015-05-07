<h1>List All Posts</h1>
<h1>
	<% @posts.each do |post| %>
		<div>
			Title: <%= post.title %>
			Content: <%= post.content %>
		</div>
	<% end %>
</h1>


<h1>
	<table class="table table-condensed">
		<thead>
			<tr>
				<th>Title</th>
				<th>Content</th>
			</tr>
		</thead>

		<tbody>
			<% @posts.each do |post| %>
				<tr>
					<td>
						<%= post.title %>
					</td>
					<td>
						<%= post.content %>
					</td>
				</tr>
			<% end %>
		</tbody>
	</table>
</h1>