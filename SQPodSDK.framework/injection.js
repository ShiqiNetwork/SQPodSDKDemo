
window.nativePodBridge = {
    openURL:function(url){
        window.webkit.messageHandlers.openURL.postMessage(url);
    },
    post:function(message,value){
        if(window.nativePodBridge.support(message)){
            window.webkit.messageHandlers.post.postMessage(JSON.stringify({message,value}));
            return true;
        }else{
            return false;
        }
    },
    support:function(message){
        return window.prompt("support:",message) === "true";
    },
    appid:"shiqi",
}

