.class final Lcom/foxdebug/sftp/Sftp$RemoteShell;
.super Ljava/lang/Object;
.source "Sftp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/foxdebug/sftp/Sftp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RemoteShell"
.end annotation


# instance fields
.field private final channel:Lcom/sshtools/client/SessionChannelNG;

.field private final client:Lcom/sshtools/client/SshClient;

.field private final finished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final id:Ljava/lang/String;

.field private final inputWriter:Ljava/util/concurrent/ExecutorService;

.field private final streamCallback:Lorg/apache/cordova/CallbackContext;

.field final synthetic this$0:Lcom/foxdebug/sftp/Sftp;


# direct methods
.method static bridge synthetic -$$Nest$fgetchannel(Lcom/foxdebug/sftp/Sftp$RemoteShell;)Lcom/sshtools/client/SessionChannelNG;
    .locals 0

    iget-object p0, p0, Lcom/foxdebug/sftp/Sftp$RemoteShell;->channel:Lcom/sshtools/client/SessionChannelNG;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfinished(Lcom/foxdebug/sftp/Sftp$RemoteShell;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/foxdebug/sftp/Sftp$RemoteShell;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfinish(Lcom/foxdebug/sftp/Sftp$RemoteShell;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/foxdebug/sftp/Sftp$RemoteShell;->finish(Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendData(Lcom/foxdebug/sftp/Sftp$RemoteShell;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/foxdebug/sftp/Sftp$RemoteShell;->sendData(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwrite(Lcom/foxdebug/sftp/Sftp$RemoteShell;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/foxdebug/sftp/Sftp$RemoteShell;->write(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method private constructor <init>(Lcom/foxdebug/sftp/Sftp;Ljava/lang/String;Lcom/sshtools/client/SshClient;Lcom/sshtools/client/SessionChannelNG;Lorg/apache/cordova/CallbackContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 243
    iput-object p1, p0, Lcom/foxdebug/sftp/Sftp$RemoteShell;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/foxdebug/sftp/Sftp$RemoteShell;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 236
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/foxdebug/sftp/Sftp$RemoteShell;->inputWriter:Ljava/util/concurrent/ExecutorService;

    .line 244
    iput-object p2, p0, Lcom/foxdebug/sftp/Sftp$RemoteShell;->id:Ljava/lang/String;

    .line 245
    iput-object p3, p0, Lcom/foxdebug/sftp/Sftp$RemoteShell;->client:Lcom/sshtools/client/SshClient;

    .line 246
    iput-object p4, p0, Lcom/foxdebug/sftp/Sftp$RemoteShell;->channel:Lcom/sshtools/client/SessionChannelNG;

    .line 247
    iput-object p5, p0, Lcom/foxdebug/sftp/Sftp$RemoteShell;->streamCallback:Lorg/apache/cordova/CallbackContext;

    return-void
.end method

.method synthetic constructor <init>(Lcom/foxdebug/sftp/Sftp;Ljava/lang/String;Lcom/sshtools/client/SshClient;Lcom/sshtools/client/SessionChannelNG;Lorg/apache/cordova/CallbackContext;Lcom/foxdebug/sftp/Sftp-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/foxdebug/sftp/Sftp$RemoteShell;-><init>(Lcom/foxdebug/sftp/Sftp;Ljava/lang/String;Lcom/sshtools/client/SshClient;Lcom/sshtools/client/SessionChannelNG;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method private finish(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 5

    .line 267
    const-string v0, "SFTP"

    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$RemoteShell;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$RemoteShell;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v1}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetremoteShells(Lcom/foxdebug/sftp/Sftp;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/foxdebug/sftp/Sftp$RemoteShell;->id:Ljava/lang/String;

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 269
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$RemoteShell;->inputWriter:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$RemoteShell;->channel:Lcom/sshtools/client/SessionChannelNG;

    invoke-virtual {v1}, Lcom/sshtools/client/SessionChannelNG;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Failed to close SSH shell channel "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/foxdebug/sftp/Sftp$RemoteShell;->id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$RemoteShell;->client:Lcom/sshtools/client/SshClient;

    invoke-virtual {v1}, Lcom/sshtools/client/SshClient;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Failed to close SSH shell connection "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/foxdebug/sftp/Sftp$RemoteShell;->id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    :goto_1
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 284
    const-string v1, "type"

    if-nez p2, :cond_1

    const-string v2, "exit"

    goto :goto_2

    :cond_1
    const-string v2, "error"

    :goto_2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_2

    .line 285
    const-string v1, "exitCode"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    if-eqz p2, :cond_3

    .line 286
    const-string p1, "message"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    :cond_3
    iget-object p1, p0, Lcom/foxdebug/sftp/Sftp$RemoteShell;->streamCallback:Lorg/apache/cordova/CallbackContext;

    invoke-static {p1, v0, v3}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$smsendShellEvent(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;Z)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 289
    iget-object p2, p0, Lcom/foxdebug/sftp/Sftp$RemoteShell;->streamCallback:Lorg/apache/cordova/CallbackContext;

    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$RemoteShell;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-virtual {v0, p1}, Lcom/foxdebug/sftp/Sftp;->errMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private sendData(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 251
    const-string v0, "data"

    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$RemoteShell;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 254
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 255
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 257
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 258
    const-string v2, "type"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v2, 0x2

    .line 259
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$RemoteShell;->streamCallback:Lorg/apache/cordova/CallbackContext;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$smsendShellEvent(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 262
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/foxdebug/sftp/Sftp$RemoteShell;->finish(Ljava/lang/Integer;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private write(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$RemoteShell;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "SSH shell is not connected"

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p2, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 300
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$RemoteShell;->inputWriter:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/foxdebug/sftp/Sftp$RemoteShell$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/foxdebug/sftp/Sftp$RemoteShell$1;-><init>(Lcom/foxdebug/sftp/Sftp$RemoteShell;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 317
    :catch_0
    invoke-virtual {p2, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method
