
window.nativePodBridge = {
    openURL:function(url){
        window.webkit.messageHandlers.openURL.postMessage(url);
    },
    post:function(name,value){
        window.webkit.messageHandlers.post.postMessage(JSON.stringify({name,value}));
    },
    appid:"shiqi",
}
