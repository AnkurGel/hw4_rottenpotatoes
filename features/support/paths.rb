# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file is used by web_steps.rb, which you should also delete
#
# You have been warned
module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    if page_name =~ /the (.*) for "(.*)"/
      movie_name = $2.to_s
      page_name  = $1.to_s
    end
    case page_name

    when /^the (RottenPotatoes )?home\s?page$/ then '/movies'
    when /^edit page$/ then
      edit_movie_path(Movie.find_by_title(movie_name.to_s))
    when /^details page$/ then
      movie_path(Movie.find_by_title(movie_name.to_s))
    when /^Similar Movies page$/ then
      director_path(Movie.find_by_title(movie_name.to_s))
    when /^the movies page$/ then '/movies'

    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
