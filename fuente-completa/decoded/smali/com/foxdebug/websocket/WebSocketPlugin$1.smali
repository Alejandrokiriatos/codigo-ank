.class Lcom/foxdebug/websocket/WebSocketPlugin$1;
.super Ljava/lang/Object;
.source "WebSocketPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/websocket/WebSocketPlugin;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/websocket/WebSocketPlugin;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$args:Lorg/json/JSONArray;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lcom/foxdebug/websocket/WebSocketPlugin;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/foxdebug/websocket/WebSocketPlugin$1;->this$0:Lcom/foxdebug/websocket/WebSocketPlugin;

    iput-object p2, p0, Lcom/foxdebug/websocket/WebSocketPlugin$1;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/foxdebug/websocket/WebSocketPlugin$1;->val$args:Lorg/json/JSONArray;

    iput-object p4, p0, Lcom/foxdebug/websocket/WebSocketPlugin$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 29
    iget-object v0, p0, Lcom/foxdebug/websocket/WebSocketPlugin$1;->val$action:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "listClients"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x5

    goto :goto_0

    :sswitch_1
    const-string v1, "registerListener"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x4

    goto :goto_0

    :sswitch_2
    const-string v1, "connect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v6, v2

    goto :goto_0

    :sswitch_3
    const-string v1, "close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v6, v3

    goto :goto_0

    :sswitch_4
    const-string v1, "send"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v6, v4

    goto :goto_0

    :sswitch_5
    const-string v1, "setBinaryType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move v6, v5

    :goto_0
    const-string v0, "WebSocketPlugin"

    const-string v1, "Invalid instance ID"

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_2

    .line 101
    :pswitch_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 102
    invoke-static {}, Lcom/foxdebug/websocket/WebSocketPlugin;->-$$Nest$sfgetinstances()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 103
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 105
    :cond_6
    iget-object v1, p0, Lcom/foxdebug/websocket/WebSocketPlugin$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONArray;)V

    return-void

    .line 79
    :pswitch_1
    iget-object v0, p0, Lcom/foxdebug/websocket/WebSocketPlugin$1;->val$args:Lorg/json/JSONArray;

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {}, Lcom/foxdebug/websocket/WebSocketPlugin;->-$$Nest$sfgetinstances()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/foxdebug/websocket/WebSocketInstance;

    if-eqz v0, :cond_7

    .line 82
    iget-object v1, p0, Lcom/foxdebug/websocket/WebSocketPlugin$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v1}, Lcom/foxdebug/websocket/WebSocketInstance;->setCallback(Lorg/apache/cordova/CallbackContext;)V

    return-void

    .line 84
    :cond_7
    iget-object v0, p0, Lcom/foxdebug/websocket/WebSocketPlugin$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 31
    :pswitch_2
    iget-object v0, p0, Lcom/foxdebug/websocket/WebSocketPlugin$1;->val$args:Lorg/json/JSONArray;

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    .line 32
    iget-object v0, p0, Lcom/foxdebug/websocket/WebSocketPlugin$1;->val$args:Lorg/json/JSONArray;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v8

    .line 33
    iget-object v0, p0, Lcom/foxdebug/websocket/WebSocketPlugin$1;->val$args:Lorg/json/JSONArray;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 34
    iget-object v0, p0, Lcom/foxdebug/websocket/WebSocketPlugin$1;->val$args:Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 35
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v13

    .line 36
    new-instance v6, Lcom/foxdebug/websocket/WebSocketInstance;

    iget-object v0, p0, Lcom/foxdebug/websocket/WebSocketPlugin$1;->this$0:Lcom/foxdebug/websocket/WebSocketPlugin;

    iget-object v11, v0, Lcom/foxdebug/websocket/WebSocketPlugin;->okHttpMainClient:Lokhttp3/OkHttpClient;

    iget-object v0, p0, Lcom/foxdebug/websocket/WebSocketPlugin$1;->this$0:Lcom/foxdebug/websocket/WebSocketPlugin;

    iget-object v12, v0, Lcom/foxdebug/websocket/WebSocketPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-direct/range {v6 .. v13}, Lcom/foxdebug/websocket/WebSocketInstance;-><init>(Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;Lokhttp3/OkHttpClient;Lorg/apache/cordova/CordovaInterface;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/foxdebug/websocket/WebSocketPlugin;->-$$Nest$sfgetinstances()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, v13, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/foxdebug/websocket/WebSocketPlugin$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v13}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    return-void

    .line 57
    :pswitch_3
    iget-object v0, p0, Lcom/foxdebug/websocket/WebSocketPlugin$1;->val$args:Lorg/json/JSONArray;

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-object v2, p0, Lcom/foxdebug/websocket/WebSocketPlugin$1;->val$args:Lorg/json/JSONArray;

    const/16 v5, 0x3e8

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONArray;->optInt(II)I

    move-result v2

    .line 60
    iget-object v4, p0, Lcom/foxdebug/websocket/WebSocketPlugin$1;->val$args:Lorg/json/JSONArray;

    const-string v5, "Normal closure"

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-static {}, Lcom/foxdebug/websocket/WebSocketPlugin;->-$$Nest$sfgetinstances()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/foxdebug/websocket/WebSocketInstance;

    if-eqz v0, :cond_a

    .line 63
    invoke-virtual {v0, v2, v3}, Lcom/foxdebug/websocket/WebSocketInstance;->close(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 66
    iget-object v0, p0, Lcom/foxdebug/websocket/WebSocketPlugin$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V

    return-void

    .line 68
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 70
    iget-object v1, p0, Lcom/foxdebug/websocket/WebSocketPlugin$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :cond_9
    :goto_2
    return-void

    .line 74
    :cond_a
    iget-object v0, p0, Lcom/foxdebug/websocket/WebSocketPlugin$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 42
    :pswitch_4
    iget-object v2, p0, Lcom/foxdebug/websocket/WebSocketPlugin$1;->val$args:Lorg/json/JSONArray;

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 43
    iget-object v6, p0, Lcom/foxdebug/websocket/WebSocketPlugin$1;->val$args:Lorg/json/JSONArray;

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 44
    iget-object v6, p0, Lcom/foxdebug/websocket/WebSocketPlugin$1;->val$args:Lorg/json/JSONArray;

    invoke-virtual {v6, v3, v5}, Lorg/json/JSONArray;->optBoolean(IZ)Z

    move-result v3

    .line 46
    invoke-static {}, Lcom/foxdebug/websocket/WebSocketPlugin;->-$$Nest$sfgetinstances()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/foxdebug/websocket/WebSocketInstance;

    .line 47
    const-string v5, "send called"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_b

    .line 49
    invoke-virtual {v2, v4, v3}, Lcom/foxdebug/websocket/WebSocketInstance;->send(Ljava/lang/String;Z)V

    .line 50
    iget-object v0, p0, Lcom/foxdebug/websocket/WebSocketPlugin$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V

    return-void

    .line 52
    :cond_b
    iget-object v0, p0, Lcom/foxdebug/websocket/WebSocketPlugin$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 89
    :pswitch_5
    iget-object v1, p0, Lcom/foxdebug/websocket/WebSocketPlugin$1;->val$args:Lorg/json/JSONArray;

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/foxdebug/websocket/WebSocketPlugin$1;->val$args:Lorg/json/JSONArray;

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-static {}, Lcom/foxdebug/websocket/WebSocketPlugin;->-$$Nest$sfgetinstances()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/foxdebug/websocket/WebSocketInstance;

    if-eqz v3, :cond_c

    .line 94
    invoke-virtual {v3, v2}, Lcom/foxdebug/websocket/WebSocketInstance;->setBinaryType(Ljava/lang/String;)V

    return-void

    .line 96
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setBinaryType called for instanceId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but It\'s not found. ignoring...."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1814d323 -> :sswitch_5
        0x35cf88 -> :sswitch_4
        0x5a5ddf8 -> :sswitch_3
        0x38b478ea -> :sswitch_2
        0x42780477 -> :sswitch_1
        0x45e51f8a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
