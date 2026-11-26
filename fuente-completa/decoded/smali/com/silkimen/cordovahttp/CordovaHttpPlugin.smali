.class public Lcom/silkimen/cordovahttp/CordovaHttpPlugin;
.super Lorg/apache/cordova/CordovaPlugin;
.source "CordovaHttpPlugin.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static final TAG:Ljava/lang/String; = "Cordova-Plugin-HTTP"


# instance fields
.field private reqMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final reqMapLock:Ljava/lang/Object;

.field private tlsConfiguration:Lcom/silkimen/http/TLSConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->reqMapLock:Ljava/lang/Object;

    return-void
.end method

.method private abort(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 253
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    .line 258
    iget-object v1, p0, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->reqMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 260
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 261
    invoke-interface {p1, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    .line 264
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "aborted"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    return v1
.end method

.method private addReq(Ljava/lang/Integer;Ljava/util/concurrent/Future;Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/Future<",
            "*>;",
            "Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;",
            ")V"
        }
    .end annotation

    .line 270
    iget-object p3, p0, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->reqMapLock:Ljava/lang/Object;

    monitor-enter p3

    .line 271
    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->reqMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_0
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private downloadFile(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 205
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    .line 206
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v1, 0x2

    .line 207
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x3

    .line 208
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    mul-int/lit16 v5, v1, 0x3e8

    const/4 v1, 0x4

    .line 209
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    mul-int/lit16 v6, v1, 0x3e8

    const/4 v1, 0x5

    .line 210
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v7

    const/4 v1, 0x6

    .line 211
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 213
    new-instance v9, Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;

    invoke-direct {v9, p2, p1}, Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;-><init>(Lorg/apache/cordova/CallbackContext;Ljava/lang/Integer;)V

    .line 215
    new-instance v1, Lcom/silkimen/cordovahttp/CordovaHttpDownload;

    iget-object v8, p0, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->tlsConfiguration:Lcom/silkimen/http/TLSConfiguration;

    invoke-direct/range {v1 .. v9}, Lcom/silkimen/cordovahttp/CordovaHttpDownload;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;IIZLcom/silkimen/http/TLSConfiguration;Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;)V

    .line 218
    invoke-direct {p0, p1, v9, v1}, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->startRequest(Ljava/lang/Integer;Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;Lcom/silkimen/cordovahttp/CordovaHttpBase;)V

    return v0
.end method

.method private executeHttpRequestWithData(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p2

    const/4 v1, 0x0

    .line 163
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    .line 164
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v2, 0x2

    .line 165
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x3

    .line 166
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const/4 v2, 0x4

    .line 167
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    mul-int/lit16 v8, v2, 0x3e8

    const/4 v2, 0x5

    .line 168
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    mul-int/lit16 v9, v2, 0x3e8

    const/4 v2, 0x6

    .line 169
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v10

    const/4 v2, 0x7

    .line 170
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/16 v2, 0x8

    .line 171
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 173
    new-instance v13, Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;

    move-object/from16 v2, p3

    invoke-direct {v13, v2, v0}, Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;-><init>(Lorg/apache/cordova/CallbackContext;Ljava/lang/Integer;)V

    .line 175
    new-instance v2, Lcom/silkimen/cordovahttp/CordovaHttpOperation;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    iget-object v12, p0, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->tlsConfiguration:Lcom/silkimen/http/TLSConfiguration;

    invoke-direct/range {v2 .. v13}, Lcom/silkimen/cordovahttp/CordovaHttpOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;IIZLjava/lang/String;Lcom/silkimen/http/TLSConfiguration;Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;)V

    .line 178
    invoke-direct {p0, v0, v13, v2}, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->startRequest(Ljava/lang/Integer;Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;Lcom/silkimen/cordovahttp/CordovaHttpBase;)V

    return v1
.end method

.method private executeHttpRequestWithoutData(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    .line 143
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v1, 0x2

    .line 144
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    mul-int/lit16 v5, v1, 0x3e8

    const/4 v1, 0x3

    .line 145
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    mul-int/lit16 v6, v1, 0x3e8

    const/4 v1, 0x4

    .line 146
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v7

    const/4 v1, 0x5

    .line 147
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x6

    .line 148
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 150
    new-instance v10, Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;

    invoke-direct {v10, p3, p2}, Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;-><init>(Lorg/apache/cordova/CallbackContext;Ljava/lang/Integer;)V

    .line 152
    new-instance v1, Lcom/silkimen/cordovahttp/CordovaHttpOperation;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iget-object v9, p0, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->tlsConfiguration:Lcom/silkimen/http/TLSConfiguration;

    invoke-direct/range {v1 .. v10}, Lcom/silkimen/cordovahttp/CordovaHttpOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;IIZLjava/lang/String;Lcom/silkimen/http/TLSConfiguration;Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;)V

    .line 155
    invoke-direct {p0, p2, v10, v1}, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->startRequest(Ljava/lang/Integer;Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;Lcom/silkimen/cordovahttp/CordovaHttpBase;)V

    return v0
.end method

.method private isNetworkAvailable()Z
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 295
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private removeReq(Ljava/lang/Integer;)V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->reqMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->reqMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private setClientAuthMode(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 241
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move-object v7, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    move-object v7, v0

    .line 243
    :goto_0
    new-instance v4, Lcom/silkimen/cordovahttp/CordovaClientAuth;

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v6, v2

    const/4 v1, 0x3

    .line 244
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object p1, p0, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v9

    iget-object p1, p0, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->tlsConfiguration:Lcom/silkimen/http/TLSConfiguration;

    move-object v12, p2

    invoke-direct/range {v4 .. v12}, Lcom/silkimen/cordovahttp/CordovaClientAuth;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Landroid/app/Activity;Landroid/content/Context;Lcom/silkimen/http/TLSConfiguration;Lorg/apache/cordova/CallbackContext;)V

    .line 247
    iget-object p1, p0, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return v0
.end method

.method private setServerTrustMode(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 232
    new-instance v0, Lcom/silkimen/cordovahttp/CordovaServerTrust;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->tlsConfiguration:Lcom/silkimen/http/TLSConfiguration;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/silkimen/cordovahttp/CordovaServerTrust;-><init>(Ljava/lang/String;Landroid/app/Activity;Lcom/silkimen/http/TLSConfiguration;Lorg/apache/cordova/CallbackContext;)V

    .line 235
    iget-object p1, p0, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method private startRequest(Ljava/lang/Integer;Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;Lcom/silkimen/cordovahttp/CordovaHttpBase;)V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->reqMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 225
    :try_start_0
    invoke-virtual {p2, p0}, Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;->setObserver(Ljava/util/Observer;)V

    .line 226
    iget-object v1, p0, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p3

    .line 227
    invoke-direct {p0, p1, p3, p2}, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->addReq(Ljava/lang/Integer;Ljava/util/concurrent/Future;Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;)V

    .line 228
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private uploadFiles(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 184
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    .line 185
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v1, 0x2

    .line 186
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v1, 0x3

    .line 187
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v1, 0x4

    .line 188
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    mul-int/lit16 v6, v1, 0x3e8

    const/4 v1, 0x5

    .line 189
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    mul-int/lit16 v7, v1, 0x3e8

    const/4 v1, 0x6

    .line 190
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v8

    const/4 v1, 0x7

    .line 191
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v1, 0x8

    .line 192
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 194
    new-instance v12, Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;

    invoke-direct {v12, p2, p1}, Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;-><init>(Lorg/apache/cordova/CallbackContext;Ljava/lang/Integer;)V

    .line 196
    new-instance v1, Lcom/silkimen/cordovahttp/CordovaHttpUpload;

    iget-object v10, p0, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->tlsConfiguration:Lcom/silkimen/http/TLSConfiguration;

    iget-object p2, p0, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 197
    invoke-interface {p2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct/range {v1 .. v12}, Lcom/silkimen/cordovahttp/CordovaHttpUpload;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;IIZLjava/lang/String;Lcom/silkimen/http/TLSConfiguration;Landroid/content/Context;Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;)V

    .line 199
    invoke-direct {p0, p1, v12, v1}, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->startRequest(Ljava/lang/Integer;Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;Lcom/silkimen/cordovahttp/CordovaHttpBase;)V

    return v0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 73
    :cond_0
    const-string v1, "setServerTrustMode"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-direct {p0, p2, p3}, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->setServerTrustMode(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z

    move-result p1

    return p1

    .line 75
    :cond_1
    const-string v1, "setClientAuthMode"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    invoke-direct {p0, p2, p3}, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->setClientAuthMode(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z

    move-result p1

    return p1

    .line 77
    :cond_2
    const-string v1, "abort"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    invoke-direct {p0, p2, p3}, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->abort(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z

    move-result p1

    return p1

    :cond_3
    if-eqz p2, :cond_4

    .line 83
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 84
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_4

    .line 87
    :try_start_1
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 90
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 91
    const-string v3, "localhost"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "127.0.0.1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "[::1]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "::1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "127."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_4

    goto :goto_0

    .line 96
    :catch_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 97
    const-string v2, "://localhost"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "://127.0.0.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "://[::1]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "://127."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 107
    :catch_1
    :cond_4
    invoke-direct {p0}, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_5

    .line 108
    new-instance p1, Lcom/silkimen/cordovahttp/CordovaHttpResponse;

    invoke-direct {p1}, Lcom/silkimen/cordovahttp/CordovaHttpResponse;-><init>()V

    const/4 p2, -0x6

    .line 109
    invoke-virtual {p1, p2}, Lcom/silkimen/cordovahttp/CordovaHttpResponse;->setStatus(I)V

    .line 110
    const-string p2, "No network connection available"

    invoke-virtual {p1, p2}, Lcom/silkimen/cordovahttp/CordovaHttpResponse;->setErrorMessage(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Lcom/silkimen/cordovahttp/CordovaHttpResponse;->toJSON()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    return p1

    .line 116
    :cond_5
    :goto_0
    const-string v1, "get"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->executeHttpRequestWithoutData(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z

    move-result p1

    return p1

    .line 118
    :cond_6
    const-string v1, "head"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 119
    invoke-direct {p0, p1, p2, p3}, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->executeHttpRequestWithoutData(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z

    move-result p1

    return p1

    .line 120
    :cond_7
    const-string v1, "delete"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 121
    invoke-direct {p0, p1, p2, p3}, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->executeHttpRequestWithoutData(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z

    move-result p1

    return p1

    .line 122
    :cond_8
    const-string v1, "options"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 123
    invoke-direct {p0, p1, p2, p3}, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->executeHttpRequestWithoutData(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z

    move-result p1

    return p1

    .line 124
    :cond_9
    const-string v1, "post"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->executeHttpRequestWithData(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z

    move-result p1

    return p1

    .line 126
    :cond_a
    const-string v1, "put"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->executeHttpRequestWithData(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z

    move-result p1

    return p1

    .line 128
    :cond_b
    const-string v1, "patch"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 129
    invoke-direct {p0, p1, p2, p3}, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->executeHttpRequestWithData(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z

    move-result p1

    return p1

    .line 130
    :cond_c
    const-string v1, "uploadFiles"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 131
    invoke-direct {p0, p2, p3}, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->uploadFiles(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z

    move-result p1

    return p1

    .line 132
    :cond_d
    const-string v1, "downloadFile"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 133
    invoke-direct {p0, p2, p3}, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->downloadFile(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z

    move-result p1

    return p1

    :cond_e
    return v0
.end method

.method public initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
    .locals 2

    .line 37
    const-string v0, "androidblacklistsecuresocketprotocols"

    invoke-super {p0, p1, p2}, Lorg/apache/cordova/CordovaPlugin;->initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .line 39
    new-instance p1, Lcom/silkimen/http/TLSConfiguration;

    invoke-direct {p1}, Lcom/silkimen/http/TLSConfiguration;-><init>()V

    iput-object p1, p0, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->tlsConfiguration:Lcom/silkimen/http/TLSConfiguration;

    .line 41
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->reqMap:Ljava/util/HashMap;

    .line 44
    :try_start_0
    const-string p1, "AndroidCAStore"

    invoke-static {p1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p1

    .line 45
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p2

    .line 46
    invoke-static {p2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p2

    const/4 v1, 0x0

    .line 48
    invoke-virtual {p1, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 49
    invoke-virtual {p2, p1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 51
    iget-object p1, p0, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->tlsConfiguration:Lcom/silkimen/http/TLSConfiguration;

    invoke-virtual {p1, v1}, Lcom/silkimen/http/TLSConfiguration;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 52
    iget-object p1, p0, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->tlsConfiguration:Lcom/silkimen/http/TLSConfiguration;

    invoke-virtual {p2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/silkimen/http/TLSConfiguration;->setTrustManagers([Ljavax/net/ssl/TrustManager;)V

    .line 54
    iget-object p1, p0, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->preferences:Lorg/apache/cordova/CordovaPreferences;

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CordovaPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    iget-object p1, p0, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->tlsConfiguration:Lcom/silkimen/http/TLSConfiguration;

    iget-object p2, p0, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v1, ""

    .line 56
    invoke-virtual {p2, v0, v1}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 55
    invoke-virtual {p1, p2}, Lcom/silkimen/http/TLSConfiguration;->setBlacklistedProtocols([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 61
    const-string p2, "Cordova-Plugin-HTTP"

    const-string v0, "An error occured while loading system\'s CA certificates"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .line 285
    iget-object p1, p0, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->reqMapLock:Ljava/lang/Object;

    monitor-enter p1

    .line 286
    :try_start_0
    check-cast p2, Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;

    .line 287
    invoke-virtual {p2}, Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;->getCallbackContext()Lorg/apache/cordova/CallbackContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p2}, Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;->getRequestId()Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/silkimen/cordovahttp/CordovaHttpPlugin;->removeReq(Ljava/lang/Integer;)V

    .line 290
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
