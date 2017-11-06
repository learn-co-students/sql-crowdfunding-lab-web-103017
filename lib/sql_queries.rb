# Write your sql queries in this file in the appropriate method like the example below:
#
# def select_category_from_projects
# "SELECT category FROM projects;"
# end

# Make sure each ruby method returns a string containing a valid SQL statement.

def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_name
"select projects.title, SUM(pledges.amount) from projects LEFT JOIN pledges ON projects.id = pledges.project_id group by title order by title"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
"select name, age, SUM(amount) from pledges LEFT JOIN users ON pledges.user_id = users.id group by name order by name"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
"select title, (SUM(AMOUNT) - funding_goal) as diff from projects left join pledges ON projects.id = pledges.project_id group by title having SUM(amount) >= funding_goal"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount_and_users_name
"select name, SUM(amount) as total from pledges left join users ON pledges.user_id = users.id group by name order by total, name"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
"select category, amount from pledges LEFT JOIN projects ON pledges.project_id = projects.id where category = 'music'"
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
"select category, SUM(amount) from pledges LEFT JOIN projects ON pledges.project_id = projects.id where category = 'books'"
end
