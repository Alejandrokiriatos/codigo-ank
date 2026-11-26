.class public Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;
.super Ljava/lang/Object;
.source "CordovaObservableCallbackContext.java"


# instance fields
.field private callbackContext:Lorg/apache/cordova/CallbackContext;

.field private observer:Ljava/util/Observer;

.field private requestId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lorg/apache/cordova/CallbackContext;Ljava/lang/Integer;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;->callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 16
    iput-object p2, p0, Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;->requestId:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public error(Lorg/json/JSONObject;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    .line 26
    invoke-virtual {p0}, Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;->notifyObserver()V

    return-void
.end method

.method public getCallbackContext()Lorg/apache/cordova/CallbackContext;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;->callbackContext:Lorg/apache/cordova/CallbackContext;

    return-object v0
.end method

.method public getObserver()Ljava/util/Observer;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;->observer:Ljava/util/Observer;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/Integer;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;->requestId:Ljava/lang/Integer;

    return-object v0
.end method

.method protected notifyObserver()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;->observer:Ljava/util/Observer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 43
    invoke-interface {v0, v1, p0}, Ljava/util/Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setObserver(Ljava/util/Observer;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;->observer:Ljava/util/Observer;

    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 21
    invoke-virtual {p0}, Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;->notifyObserver()V

    return-void
.end method
