# cli_project

FlatIron CLI Project

This application was built using gems: 
'pry' 'rest-client' 'json' 'dotenv'

To install the gems, run "bundle install" in your terminal--if bundle is installed. Gems can be installed individually by name, ie: gem install 'pry'. Bin/run is used to run the program.

This project was created using an API from https://www.potterapi.com/v1/. An API key was required to request information from the url. The API key is hidden in an .env file.

This application will present the user with a list of Harry Potter characters. The user will be prompted to choose a character, information will be given regarding their selection. If there is an error in the input, an error message will prompt the user to try again.

The user will be given the choice to continue, and will respond with either yes/y or no/n. If the user responds with yes/y, a prompt to select a character will appear. If the selection is no/n, the user will exit the application entirely.
