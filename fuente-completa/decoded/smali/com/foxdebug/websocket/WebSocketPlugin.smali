.class public Lcom/foxdebug/websocket/WebSocketPlugin;
.super Lorg/apache/cordova/CordovaPlugin;
.source "WebSocketPlugin.java"


# static fields
.field private static final instances:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/foxdebug/websocket/WebSocketInstance;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public okHttpMainClient:Lokhttp3/OkHttpClient;


# direct methods
.method static bridge synthetic -$$Nest$sfgetinstances()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/foxdebug/websocket/WebSocketPlugin;->instances:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/foxdebug/websocket/WebSocketPlugin;->instances:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/foxdebug/websocket/WebSocketPlugin;->okHttpMainClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static removeInstance(Ljava/lang/String;)V
    .locals 1

    .line 128
    sget-object v0, Lcom/foxdebug/websocket/WebSocketPlugin;->instances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/foxdebug/websocket/WebSocketPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/foxdebug/websocket/WebSocketPlugin$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/foxdebug/websocket/WebSocketPlugin$1;-><init>(Lcom/foxdebug/websocket/WebSocketPlugin;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 2

    .line 118
    sget-object v0, Lcom/foxdebug/websocket/WebSocketPlugin;->instances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/foxdebug/websocket/WebSocketInstance;

    .line 120
    invoke-virtual {v1}, Lcom/foxdebug/websocket/WebSocketInstance;->close()Ljava/lang/String;

    goto :goto_0

    .line 122
    :cond_0
    sget-object v0, Lcom/foxdebug/websocket/WebSocketPlugin;->instances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 123
    iget-object v0, p0, Lcom/foxdebug/websocket/WebSocketPlugin;->okHttpMainClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 124
    const-string v0, "WebSocketPlugin"

    const-string v1, "cleaned up... on destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected pluginInitialize()V
    .locals 1

    .line 20
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/foxdebug/websocket/WebSocketPlugin;->okHttpMainClient:Lokhttp3/OkHttpClient;

    return-void
.end method
