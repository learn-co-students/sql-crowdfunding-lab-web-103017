# Write your sql queries in this file in the appropriate method like the example below:
#
# def select_category_from_projects
# "SELECT category FROM projects;"
# end

# Make sure each ruby method returns a string containing a valid SQL statement.

def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_name
  "SELECT title, (select sum(amount) from pledges where project_id = projects.id) FROM projects Order by projects.title"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
  "SELECT name, age, (select sum(amount) from pledges where user_id=users.id) From users Order by users.name"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
  "SELECT title, (select sum(amount) from pledges where project_id=projects.id)-funding_goal from projects where funding_goal <= (select sum(amount) from pledges where project_id=projects.id)"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount_and_users_name
  "select name, (select sum(amount) from pledges where user_id=users.id) from users order by (select sum(amount) from pledges where user_id=users.id), name"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
  "select category, pledges.amount from projects inner join pledges on projects.id=pledges.project_id where category='music'"
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
  "select category, sum(pledges.amount) from projects inner join pledges on projects.id=pledges.project_id where category='books'"
end
