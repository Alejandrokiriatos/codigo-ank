.class public Lcom/foxdebug/webview/WebViewPlugin;
.super Lorg/apache/cordova/CordovaPlugin;
.source "WebViewPlugin.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AcodeWebView"

.field private static instance:Lcom/foxdebug/webview/WebViewPlugin;


# instance fields
.field private final instances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/foxdebug/webview/WebViewInstance;",
            ">;"
        }
    .end annotation
.end field

.field private messageCallback:Lorg/apache/cordova/CallbackContext;


# direct methods
.method static bridge synthetic -$$Nest$fgetinstances(Lcom/foxdebug/webview/WebViewPlugin;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/foxdebug/webview/WebViewPlugin;->instances:Ljava/util/HashMap;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/foxdebug/webview/WebViewPlugin;->instances:Ljava/util/HashMap;

    return-void
.end method

.method private create(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Lcom/foxdebug/webview/WebViewPlugin;->generateId()Ljava/lang/String;

    move-result-object v2

    .line 92
    const-string v0, "mode"

    const-string v1, "hidden"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    const-string v0, "title"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 94
    const-string v0, "allowNavigation"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 95
    const-string v0, "allowDownloads"

    const/4 v6, 0x0

    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 96
    const-string v0, "visible"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 98
    iget-object p1, p0, Lcom/foxdebug/webview/WebViewPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    new-instance v0, Lcom/foxdebug/webview/WebViewPlugin$1;

    move-object v1, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/foxdebug/webview/WebViewPlugin$1;-><init>(Lcom/foxdebug/webview/WebViewPlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLorg/apache/cordova/CallbackContext;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private destroy(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewPlugin;->instances:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/foxdebug/webview/WebViewInstance;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebView not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 203
    :cond_0
    iget-object p1, p0, Lcom/foxdebug/webview/WebViewPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    new-instance v1, Lcom/foxdebug/webview/WebViewPlugin$2;

    invoke-direct {v1, p0, v0, p2}, Lcom/foxdebug/webview/WebViewPlugin$2;-><init>(Lcom/foxdebug/webview/WebViewPlugin;Lcom/foxdebug/webview/WebViewInstance;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private evaluate(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    .line 170
    invoke-virtual {p0, p1}, Lcom/foxdebug/webview/WebViewPlugin;->getInstance(Ljava/lang/String;)Lcom/foxdebug/webview/WebViewInstance;

    move-result-object v0

    if-nez v0, :cond_0

    .line 171
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "WebView not found: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 172
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/foxdebug/webview/WebViewInstance;->evaluate(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method private generateId()Ljava/lang/String;
    .locals 4

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wv_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/foxdebug/webview/WebViewPlugin;
    .locals 1

    .line 35
    sget-object v0, Lcom/foxdebug/webview/WebViewPlugin;->instance:Lcom/foxdebug/webview/WebViewPlugin;

    return-object v0
.end method

.method private hide(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 188
    invoke-virtual {p0, p1}, Lcom/foxdebug/webview/WebViewPlugin;->getInstance(Ljava/lang/String;)Lcom/foxdebug/webview/WebViewInstance;

    move-result-object v0

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebView not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 190
    :cond_0
    invoke-virtual {v0, p2}, Lcom/foxdebug/webview/WebViewInstance;->hide(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method private loadHTML(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    .line 164
    invoke-virtual {p0, p1}, Lcom/foxdebug/webview/WebViewPlugin;->getInstance(Ljava/lang/String;)Lcom/foxdebug/webview/WebViewInstance;

    move-result-object v0

    if-nez v0, :cond_0

    .line 165
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "WebView not found: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 166
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/foxdebug/webview/WebViewInstance;->loadHTML(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method private loadURL(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    .line 158
    invoke-virtual {p0, p1}, Lcom/foxdebug/webview/WebViewPlugin;->getInstance(Ljava/lang/String;)Lcom/foxdebug/webview/WebViewInstance;

    move-result-object v0

    if-nez v0, :cond_0

    .line 159
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "WebView not found: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 160
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/foxdebug/webview/WebViewInstance;->loadURL(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method private postMessage(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    .line 176
    invoke-virtual {p0, p1}, Lcom/foxdebug/webview/WebViewPlugin;->getInstance(Ljava/lang/String;)Lcom/foxdebug/webview/WebViewInstance;

    move-result-object v0

    if-nez v0, :cond_0

    .line 177
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "WebView not found: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 178
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/foxdebug/webview/WebViewInstance;->postMessage(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method private reload(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 194
    invoke-virtual {p0, p1}, Lcom/foxdebug/webview/WebViewPlugin;->getInstance(Ljava/lang/String;)Lcom/foxdebug/webview/WebViewInstance;

    move-result-object v0

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebView not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 196
    :cond_0
    invoke-virtual {v0, p2}, Lcom/foxdebug/webview/WebViewInstance;->reload(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method private show(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 182
    invoke-virtual {p0, p1}, Lcom/foxdebug/webview/WebViewPlugin;->getInstance(Ljava/lang/String;)Lcom/foxdebug/webview/WebViewInstance;

    move-result-object v0

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebView not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 184
    :cond_0
    invoke-virtual {v0, p2}, Lcom/foxdebug/webview/WebViewInstance;->show(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method


# virtual methods
.method download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 218
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    const/4 v1, 0x0

    .line 220
    :try_start_0
    new-instance v2, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 221
    invoke-virtual {v2, p3}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 222
    const-string p3, "User-Agent"

    invoke-virtual {v2, p3, p2}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 223
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 224
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 225
    const-string p2, "Cookie"

    invoke-virtual {v2, p2, p1}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 227
    :cond_0
    const-string p1, "Downloading file..."

    invoke-virtual {v2, p1}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 228
    invoke-virtual {v2, p4}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 229
    invoke-virtual {v2}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    const/4 p1, 0x1

    .line 230
    invoke-virtual {v2, p1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 231
    sget-object p1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v2, p1, p4}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 233
    const-string p1, "download"

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    if-eqz p1, :cond_1

    .line 237
    invoke-virtual {p1, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    .line 238
    const-string p1, "Download started..."

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 235
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "DownloadManager unavailable"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 240
    const-string p2, "AcodeWebView"

    const-string p3, "Download failed"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    invoke-static {v0, p3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "Unknown action: "

    const/4 v1, 0x1

    .line 41
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "loadHTML"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_1
    const-string v2, "destroy"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    goto :goto_1

    :sswitch_2
    const-string v2, "postMessage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_3
    const-string v2, "setMessageCallback"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_1

    :sswitch_4
    const-string v2, "loadURL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_5
    const-string v2, "evaluate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_6
    const-string v2, "show"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_7
    const-string v2, "hide"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_8
    const-string v2, "reload"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_1

    :sswitch_9
    const-string v2, "create"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 76
    new-instance p2, Ljava/lang/StringBuilder;

    goto :goto_2

    .line 73
    :pswitch_0
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/foxdebug/webview/WebViewPlugin;->destroy(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return v1

    .line 70
    :pswitch_1
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/foxdebug/webview/WebViewPlugin;->reload(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return v1

    .line 67
    :pswitch_2
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/foxdebug/webview/WebViewPlugin;->hide(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return v1

    .line 64
    :pswitch_3
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/foxdebug/webview/WebViewPlugin;->show(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return v1

    .line 61
    :pswitch_4
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p2, p3}, Lcom/foxdebug/webview/WebViewPlugin;->postMessage(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return v1

    .line 58
    :pswitch_5
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p2, p3}, Lcom/foxdebug/webview/WebViewPlugin;->evaluate(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return v1

    .line 55
    :pswitch_6
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p2, p3}, Lcom/foxdebug/webview/WebViewPlugin;->loadHTML(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return v1

    .line 52
    :pswitch_7
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p2, p3}, Lcom/foxdebug/webview/WebViewPlugin;->loadURL(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return v1

    .line 49
    :pswitch_8
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/foxdebug/webview/WebViewPlugin;->create(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V

    return v1

    .line 43
    :pswitch_9
    iput-object p3, p0, Lcom/foxdebug/webview/WebViewPlugin;->messageCallback:Lorg/apache/cordova/CallbackContext;

    .line 44
    new-instance p2, Lorg/apache/cordova/PluginResult;

    sget-object v0, Lorg/apache/cordova/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p2, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .line 45
    invoke-virtual {p2, v1}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 46
    invoke-virtual {p3, p2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return v1

    .line 76
    :goto_2
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AcodeWebView"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return v1

    :sswitch_data_0
    .sparse-switch
        -0x509a5f04 -> :sswitch_9
        -0x37b57e67 -> :sswitch_8
        0x30dd42 -> :sswitch_7
        0x35dafd -> :sswitch_6
        0x9a4ac99 -> :sswitch_5
        0x141092a9 -> :sswitch_4
        0x4098f8aa -> :sswitch_3
        0x58d00b47 -> :sswitch_2
        0x5cd39ffa -> :sswitch_1
        0x6dfbe191 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getInstance(Ljava/lang/String;)Lcom/foxdebug/webview/WebViewInstance;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewPlugin;->instances:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/foxdebug/webview/WebViewInstance;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 282
    invoke-super {p0}, Lorg/apache/cordova/CordovaPlugin;->onDestroy()V

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/foxdebug/webview/WebViewPlugin;->instances:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/foxdebug/webview/WebViewInstance;

    .line 286
    :try_start_0
    invoke-virtual {v1}, Lcom/foxdebug/webview/WebViewInstance;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewPlugin;->instances:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 289
    sput-object v0, Lcom/foxdebug/webview/WebViewPlugin;->instance:Lcom/foxdebug/webview/WebViewPlugin;

    return-void
.end method

.method protected pluginInitialize()V
    .locals 0

    .line 31
    sput-object p0, Lcom/foxdebug/webview/WebViewPlugin;->instance:Lcom/foxdebug/webview/WebViewPlugin;

    return-void
.end method

.method public removeInstance(Ljava/lang/String;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewPlugin;->instances:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public sendEventToCordova(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewPlugin;->messageCallback:Lorg/apache/cordova/CallbackContext;

    if-nez v0, :cond_0

    goto :goto_0

    .line 265
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 266
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    const-string p1, "event"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_1

    .line 269
    const-string p1, "data"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    :cond_1
    new-instance p1, Lorg/apache/cordova/PluginResult;

    sget-object p2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p1, p2, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    const/4 p2, 0x1

    .line 273
    invoke-virtual {p1, p2}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 274
    iget-object p2, p0, Lcom/foxdebug/webview/WebViewPlugin;->messageCallback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 276
    const-string p2, "AcodeWebView"

    const-string p3, "Error building event payload"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public sendMessageToCordova(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewPlugin;->messageCallback:Lorg/apache/cordova/CallbackContext;

    if-nez v0, :cond_0

    goto :goto_0

    .line 249
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 250
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    const-string p1, "message"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    new-instance p1, Lorg/apache/cordova/PluginResult;

    sget-object p2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p1, p2, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    const/4 p2, 0x1

    .line 254
    invoke-virtual {p1, p2}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 255
    iget-object p2, p0, Lcom/foxdebug/webview/WebViewPlugin;->messageCallback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 257
    const-string p2, "AcodeWebView"

    const-string v0, "Error building message payload"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method showFullscreenActivity(Ljava/lang/String;)V
    .locals 3

    .line 139
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/foxdebug/webview/WebViewPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    const-class v2, Lcom/foxdebug/webview/WebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    const-string v1, "webviewId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    invoke-virtual {p0, p1}, Lcom/foxdebug/webview/WebViewPlugin;->getInstance(Ljava/lang/String;)Lcom/foxdebug/webview/WebViewInstance;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p1}, Lcom/foxdebug/webview/WebViewInstance;->getHostingActivity()Lcom/foxdebug/webview/WebViewActivity;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 143
    invoke-virtual {p1}, Lcom/foxdebug/webview/WebViewActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/foxdebug/webview/WebViewActivity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_1

    const/high16 p1, 0x20000

    .line 144
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 146
    :cond_1
    iget-object p1, p0, Lcom/foxdebug/webview/WebViewPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
