.class public Lcom/foxdebug/websocket/WebSocketInstance;
.super Lokhttp3/WebSocketListener;
.source "WebSocketInstance.java"


# static fields
.field private static final DEFAULT_CLOSE_CODE:I = 0x3e8

.field private static final DEFAULT_CLOSE_REASON:Ljava/lang/String; = "Normal closure"

.field private static final TAG:Ljava/lang/String; = "WebSocketInstance"


# instance fields
.field private binaryType:Ljava/lang/String;

.field private callbackContext:Lorg/apache/cordova/CallbackContext;

.field private final cordova:Lorg/apache/cordova/CordovaInterface;

.field private extensions:Ljava/lang/String;

.field private final instanceId:Ljava/lang/String;

.field private protocol:Ljava/lang/String;

.field private readyState:I

.field private webSocket:Lokhttp3/WebSocket;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;Lokhttp3/OkHttpClient;Lorg/apache/cordova/CordovaInterface;Ljava/lang/String;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Lokhttp3/WebSocketListener;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/foxdebug/websocket/WebSocketInstance;->extensions:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/foxdebug/websocket/WebSocketInstance;->protocol:Ljava/lang/String;

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/foxdebug/websocket/WebSocketInstance;->readyState:I

    .line 36
    iput-object p6, p0, Lcom/foxdebug/websocket/WebSocketInstance;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 37
    iput-object p7, p0, Lcom/foxdebug/websocket/WebSocketInstance;->instanceId:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/foxdebug/websocket/WebSocketInstance;->binaryType:Ljava/lang/String;

    .line 40
    invoke-virtual {p5}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p4

    const-wide/16 p5, 0xa

    sget-object p7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 41
    invoke-virtual {p4, p5, p6, p7}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p4

    .line 42
    invoke-virtual {p4}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p4

    .line 44
    new-instance p5, Lokhttp3/Request$Builder;

    invoke-direct {p5}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p5, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 48
    invoke-virtual {p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p5

    .line 49
    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_0

    .line 50
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    .line 51
    invoke-virtual {p3, p6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    .line 52
    invoke-virtual {p1, p6, p7}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 58
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    :goto_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p5

    if-ge v0, p5, :cond_1

    .line 60
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string p6, ","

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_2

    .line 63
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 64
    const-string p2, "Sec-WebSocket-Protocol"

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 68
    :cond_2
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p4, p1, p0}, Lokhttp3/OkHttpClient;->newWebSocket(Lokhttp3/Request;Lokhttp3/WebSocketListener;)Lokhttp3/WebSocket;

    return-void
.end method

.method private sendBinary(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 97
    iget-object v0, p0, Lcom/foxdebug/websocket/WebSocketInstance;->webSocket:Lokhttp3/WebSocket;

    invoke-static {p1}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object p1

    invoke-interface {v0, p1}, Lokhttp3/WebSocket;->send(Lokio/ByteString;)Z

    return-void
.end method

.method private sendEvent(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 5

    .line 199
    const-string v0, "WebSocketInstance"

    .line 0
    const-string v1, "sending event: "

    .line 199
    iget-object v2, p0, Lcom/foxdebug/websocket/WebSocketInstance;->callbackContext:Lorg/apache/cordova/CallbackContext;

    if-eqz v2, :cond_1

    .line 201
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 202
    const-string v3, "type"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    const-string v3, "extensions"

    iget-object v4, p0, Lcom/foxdebug/websocket/WebSocketInstance;->extensions:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    const-string v3, "readyState"

    iget v4, p0, Lcom/foxdebug/websocket/WebSocketInstance;->readyState:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 205
    const-string v3, "isBinary"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 206
    const-string p3, "parseAsText"

    invoke-virtual {v2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    .line 207
    const-string p3, "data"

    invoke-virtual {v2, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " eventObj "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance p1, Lorg/apache/cordova/PluginResult;

    sget-object p2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p1, p2, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    const/4 p2, 0x1

    .line 210
    invoke-virtual {p1, p2}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 211
    iget-object p2, p0, Lcom/foxdebug/websocket/WebSocketInstance;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 213
    const-string p2, "Error sending event"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public close()Ljava/lang/String;
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebSocket instanceId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/foxdebug/websocket/WebSocketInstance;->instanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " close() called with no arguments. Using defaults."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocketInstance"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e8

    .line 127
    const-string v1, "Normal closure"

    invoke-virtual {p0, v0, v1}, Lcom/foxdebug/websocket/WebSocketInstance;->close(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public close(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/foxdebug/websocket/WebSocketInstance;->webSocket:Lokhttp3/WebSocket;

    const-string v1, "WebSocketInstance"

    const-string v2, "websocket instanceId="

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    .line 102
    iput v3, p0, Lcom/foxdebug/websocket/WebSocketInstance;->readyState:I

    .line 104
    :try_start_0
    invoke-interface {v0, p1, p2}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z

    move-result v0

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/foxdebug/websocket/WebSocketInstance;->instanceId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " received close() action call, code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " reason="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " close method result: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 113
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 118
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/foxdebug/websocket/WebSocketInstance;->instanceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " received close() action call, ignoring... as webSocket is null (not present)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string p1, ""

    return-object p1
.end method

.method public onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 2

    const/4 p1, 0x3

    .line 173
    iput p1, p0, Lcom/foxdebug/websocket/WebSocketInstance;->readyState:I

    .line 174
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "websocket instanceId="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/foxdebug/websocket/WebSocketInstance;->instanceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " Closed code: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " reason: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WebSocketInstance"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 177
    :try_start_0
    const-string v1, "code"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 178
    const-string p2, "reason"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 180
    const-string p3, "Error creating close event"

    invoke-static {v0, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    :goto_0
    const-string p2, "close"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-direct {p0, p2, p1, p3, p3}, Lcom/foxdebug/websocket/WebSocketInstance;->sendEvent(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 184
    iget-object p1, p0, Lcom/foxdebug/websocket/WebSocketInstance;->instanceId:Ljava/lang/String;

    invoke-static {p1}, Lcom/foxdebug/websocket/WebSocketPlugin;->removeInstance(Ljava/lang/String;)V

    return-void
.end method

.method public onClosing(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 1

    const/4 p1, 0x2

    .line 166
    iput p1, p0, Lcom/foxdebug/websocket/WebSocketInstance;->readyState:I

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "websocket instanceId="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/foxdebug/websocket/WebSocketInstance;->instanceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is Closing code: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " reason: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WebSocketInstance"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object p1, p0, Lcom/foxdebug/websocket/WebSocketInstance;->webSocket:Lokhttp3/WebSocket;

    invoke-interface {p1, p2, p3}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z

    return-void
.end method

.method public onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V
    .locals 1

    const/4 p1, 0x3

    .line 189
    iput p1, p0, Lcom/foxdebug/websocket/WebSocketInstance;->readyState:I

    .line 190
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    const-string v0, "error"

    invoke-direct {p0, v0, p1, p3, p3}, Lcom/foxdebug/websocket/WebSocketInstance;->sendEvent(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "websocket instanceId="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/foxdebug/websocket/WebSocketInstance;->instanceId:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " Error: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WebSocketInstance"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V
    .locals 1

    .line 142
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "websocket instanceId="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/foxdebug/websocket/WebSocketInstance;->instanceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " Received message: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WebSocketInstance"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string p1, "message"

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/foxdebug/websocket/WebSocketInstance;->sendEvent(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V
    .locals 3

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "websocket instanceId="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/foxdebug/websocket/WebSocketInstance;->instanceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " Received message(bytes/binary payload): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WebSocketInstance"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :try_start_0
    const-string p1, "arraybuffer"

    iget-object v1, p0, Lcom/foxdebug/websocket/WebSocketInstance;->binaryType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "message"

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 153
    :try_start_1
    invoke-virtual {p2}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 154
    invoke-direct {p0, v1, p1, v2, p2}, Lcom/foxdebug/websocket/WebSocketInstance;->sendEvent(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void

    .line 156
    :cond_0
    invoke-virtual {p2}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1, v2, v2}, Lcom/foxdebug/websocket/WebSocketInstance;->sendEvent(Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 159
    const-string p2, "Error sending message"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V
    .locals 1

    .line 132
    iput-object p1, p0, Lcom/foxdebug/websocket/WebSocketInstance;->webSocket:Lokhttp3/WebSocket;

    const/4 p1, 0x1

    .line 133
    iput p1, p0, Lcom/foxdebug/websocket/WebSocketInstance;->readyState:I

    .line 134
    const-string p1, "Sec-WebSocket-Extensions"

    invoke-virtual {p2, p1}, Lokhttp3/Response;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/foxdebug/websocket/WebSocketInstance;->extensions:Ljava/lang/String;

    .line 135
    const-string p1, "Sec-WebSocket-Protocol"

    invoke-virtual {p2, p1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/foxdebug/websocket/WebSocketInstance;->protocol:Ljava/lang/String;

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "websocket instanceId="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/foxdebug/websocket/WebSocketInstance;->instanceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " Openedreceived extensions="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/foxdebug/websocket/WebSocketInstance;->extensions:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WebSocketInstance"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 137
    const-string v0, "open"

    invoke-direct {p0, v0, p1, p2, p2}, Lcom/foxdebug/websocket/WebSocketInstance;->sendEvent(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public send(Ljava/lang/String;Z)V
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/foxdebug/websocket/WebSocketInstance;->webSocket:Lokhttp3/WebSocket;

    const-string v1, " received send(..., isBinary="

    const-string v2, "websocket instanceId="

    const-string v3, "WebSocketInstance"

    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/foxdebug/websocket/WebSocketInstance;->instanceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") action call, sending message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 82
    invoke-direct {p0, p1}, Lcom/foxdebug/websocket/WebSocketInstance;->sendBinary(Ljava/lang/String;)V

    return-void

    .line 85
    :cond_0
    iget-object p2, p0, Lcom/foxdebug/websocket/WebSocketInstance;->webSocket:Lokhttp3/WebSocket;

    invoke-interface {p2, p1}, Lokhttp3/WebSocket;->send(Ljava/lang/String;)Z

    return-void

    .line 87
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/foxdebug/websocket/WebSocketInstance;->instanceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")  ignoring... as webSocket is null (not present/connected)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBinaryType(Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/foxdebug/websocket/WebSocketInstance;->binaryType:Ljava/lang/String;

    return-void
.end method

.method public setCallback(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 72
    iput-object p1, p0, Lcom/foxdebug/websocket/WebSocketInstance;->callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 73
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v0, v1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    const/4 v1, 0x1

    .line 74
    invoke-virtual {v0, v1}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 75
    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return-void
.end method
