# blog_experiment

If you add a .env file to the root folder with your Gmail credentials (shown in the development.rb file, need the domain, username, and password), and enable unsafe applications through Google (https://www.google.com/settings/security/lesssecureapps), you can actually have a "forgotten password" e-mail sent from the chosen account.

You need to use foreman instead of the default ruby server to get that to work too.
