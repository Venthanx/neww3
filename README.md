## Deploy HTML Native with NGINX to Heroku :

## Environment :
```
1. Heroku CLI
2. Text Editor
```

## Installation :
```
Put your HTML Native to "app" directory.
$ git clone https://github.com/Venthanx/neww3

After that, Push to your Heroku Repository Apps.
$ heroku login -i
$ heroku create neww3

$ git init
$ heroku git:remote -a neww3
$ git add .
$ git commit -m "make it better"
$ git push heroku master
$ heroku ps:scale web=1
$ heroku open
```

## Warning :
```
If you want to deploy from this repository, dont forget to :
$ cd Nginx-Heroku
$ rm -r .git/
```

## One-Click Deploy
- Click  [![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/Venthanx/neww3)