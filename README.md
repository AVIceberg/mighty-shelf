# Tokimon Database App Additional Features

The only additional feature added was the ability to 'free' the tokimons associated with a particular trainer. It can be found on the trainer's page as a button to be pressed; doing so will delete all tokimons owned by said trainer without deleting the trainer and update their level accordingly (to 1).

Additional features WERE planned, but this particular feature turned out to be unnecessarily complicated to figure out, and ate up far too much time.

# CSS Errors in Production

Despite my best efforts, there's some issue with Heroku and the asset pipeline that is causing my production site to appear different than my development site (especially in terms of links). I'm not really certain how to resolve this - I tried precompiling assets, and meddling with several settings in production.rb recommended on StackOverflow. Regardless of that, I'm afraid nothing seems to have worked. 
