sleep 5 &&

geth attach http://$minerNodeHttp:$minerNodePort --preload "mineWhenNeeded.js"
