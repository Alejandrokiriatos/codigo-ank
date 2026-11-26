.class public Lcom/foxdebug/acode/rk/exec/terminal/Executor;
.super Lorg/apache/cordova/CordovaPlugin;
.source "Executor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/foxdebug/acode/rk/exec/terminal/Executor$IncomingHandler;
    }
.end annotation


# static fields
.field private static final REQUEST_POST_NOTIFICATIONS:I = 0x3e9


# instance fields
.field private activity:Landroid/app/Activity;

.field private final callbackContextMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/cordova/CallbackContext;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private final handlerMessenger:Landroid/os/Messenger;

.field private isServiceBinding:Z

.field private isServiceBound:Z

.field private serviceConnectedLatch:Ljava/util/concurrent/CountDownLatch;

.field private final serviceConnection:Landroid/content/ServiceConnection;

.field private serviceMessenger:Landroid/os/Messenger;


# direct methods
.method static bridge synthetic -$$Nest$fgetserviceConnectedLatch(Lcom/foxdebug/acode/rk/exec/terminal/Executor;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->serviceConnectedLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisServiceBinding(Lcom/foxdebug/acode/rk/exec/terminal/Executor;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->isServiceBinding:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisServiceBound(Lcom/foxdebug/acode/rk/exec/terminal/Executor;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->isServiceBound:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputserviceConnectedLatch(Lcom/foxdebug/acode/rk/exec/terminal/Executor;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->serviceConnectedLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputserviceMessenger(Lcom/foxdebug/acode/rk/exec/terminal/Executor;Landroid/os/Messenger;)V
    .locals 0

    iput-object p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->serviceMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcleanupCallback(Lcom/foxdebug/acode/rk/exec/terminal/Executor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->cleanupCallback(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCallbackContext(Lcom/foxdebug/acode/rk/exec/terminal/Executor;Ljava/lang/String;)Lorg/apache/cordova/CallbackContext;
    .locals 0

    invoke-direct {p0, p1}, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->getCallbackContext(Ljava/lang/String;)Lorg/apache/cordova/CallbackContext;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 3

    .line 36
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 43
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/foxdebug/acode/rk/exec/terminal/Executor$IncomingHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/foxdebug/acode/rk/exec/terminal/Executor$IncomingHandler;-><init>(Lcom/foxdebug/acode/rk/exec/terminal/Executor;Lcom/foxdebug/acode/rk/exec/terminal/Executor-IA;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->handlerMessenger:Landroid/os/Messenger;

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->callbackContextMap:Ljava/util/Map;

    .line 160
    new-instance v0, Lcom/foxdebug/acode/rk/exec/terminal/Executor$1;

    invoke-direct {v0, p0}, Lcom/foxdebug/acode/rk/exec/terminal/Executor$1;-><init>(Lcom/foxdebug/acode/rk/exec/terminal/Executor;)V

    iput-object v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->serviceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private askNotificationPermission(Landroid/app/Activity;)V
    .locals 5

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_2

    .line 53
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x3e9

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 58
    new-array v1, v4, [Ljava/lang/String;

    aput-object v0, v1, v3

    invoke-static {p1, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    .line 64
    :cond_1
    new-array v1, v4, [Ljava/lang/String;

    aput-object v0, v1, v3

    invoke-static {p1, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private bindServiceNow(Lorg/apache/cordova/CallbackContext;)Z
    .locals 7

    .line 119
    const-string v0, "Service binding timeout"

    iget-boolean v1, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->isServiceBinding:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    .line 123
    iput-boolean v1, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->isServiceBinding:Z

    .line 124
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->serviceConnectedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 126
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->context:Landroid/content/Context;

    const-class v5, Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    iget-object v4, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->context:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 132
    iget-object v4, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v3, v5, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 134
    const-string v3, "Executor"

    if-nez v1, :cond_1

    .line 135
    const-string v0, "Failed to bind to service"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iput-boolean v2, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->isServiceBinding:Z

    .line 137
    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return v2

    .line 143
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->serviceConnectedLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0xa

    invoke-virtual {v1, v5, v6, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    const-string v0, "Service bound successfully"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-boolean p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->isServiceBound:Z

    return p1

    .line 147
    :cond_2
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 149
    iput-boolean v2, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->isServiceBinding:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Service binding interrupted: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 155
    iput-boolean v2, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->isServiceBinding:Z

    return v2
.end method

.method private cleanupCallback(Ljava/lang/String;)V
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->callbackContextMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private ensureServiceBound(Lorg/apache/cordova/CallbackContext;)Z
    .locals 5

    .line 90
    iget-boolean v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->isServiceBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->serviceMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 95
    :cond_0
    iget-boolean v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->isServiceBinding:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->serviceConnectedLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    .line 98
    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    iget-boolean p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->isServiceBound:Z

    return p1

    .line 101
    :cond_1
    const-string v1, "Service binding timeout"

    invoke-virtual {p1, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Service binding interrupted: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return v0

    .line 111
    :cond_2
    const-string v0, "Executor"

    const-string v1, "Starting service binding..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-direct {p0, p1}, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->bindServiceNow(Lorg/apache/cordova/CallbackContext;)Z

    move-result p1

    return p1
.end method

.method private exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 424
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 425
    iget-object v1, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->handlerMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 426
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 427
    const-string v2, "id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v2, "cmd"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string p2, "alpine"

    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 432
    :try_start_0
    iget-object p2, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->serviceMessenger:Landroid/os/Messenger;

    invoke-virtual {p2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 434
    invoke-direct {p0, p1}, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->getCallbackContext(Ljava/lang/String;)Lorg/apache/cordova/CallbackContext;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to execute command: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 437
    invoke-direct {p0, p1}, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->cleanupCallback(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getCallbackContext(Ljava/lang/String;)Lorg/apache/cordova/CallbackContext;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->callbackContextMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/cordova/CallbackContext;

    return-object p1
.end method

.method private isProcessRunning(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 470
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 471
    iget-object v1, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->handlerMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 472
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 473
    const-string v2, "id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 476
    :try_start_0
    iget-object v1, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->serviceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 478
    invoke-direct {p0, p1}, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->getCallbackContext(Ljava/lang/String;)Lorg/apache/cordova/CallbackContext;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Check running error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 481
    invoke-direct {p0, p1}, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->cleanupCallback(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private listProcesses(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 487
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 488
    iget-object v1, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->handlerMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 489
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 490
    const-string v2, "id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 493
    :try_start_0
    iget-object v1, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->serviceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 495
    invoke-direct {p0, p1}, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->getCallbackContext(Ljava/lang/String;)Lorg/apache/cordova/CallbackContext;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 497
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "List processes error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 498
    invoke-direct {p0, p1}, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->cleanupCallback(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private startProcess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 398
    invoke-direct {p0, p1}, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->getCallbackContext(Ljava/lang/String;)Lorg/apache/cordova/CallbackContext;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 400
    new-instance v2, Lorg/apache/cordova/PluginResult;

    sget-object v3, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v2, v3, p1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    .line 401
    invoke-virtual {v2, v1}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 402
    invoke-virtual {v0, v2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    :cond_0
    const/4 v0, 0x0

    .line 405
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 406
    iget-object v1, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->handlerMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 407
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 408
    const-string v2, "id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v2, "cmd"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string p2, "alpine"

    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 413
    :try_start_0
    iget-object p2, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->serviceMessenger:Landroid/os/Messenger;

    invoke-virtual {p2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 415
    invoke-direct {p0, p1}, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->getCallbackContext(Ljava/lang/String;)Lorg/apache/cordova/CallbackContext;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to start process: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 418
    invoke-direct {p0, p1}, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->cleanupCallback(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private stopProcess(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 457
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 458
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 459
    const-string v2, "id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 462
    :try_start_0
    iget-object p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->serviceMessenger:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 463
    const-string p1, "Process terminated"

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Stop error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

.method private stopServiceNow()V
    .locals 4

    .line 376
    iget-boolean v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->isServiceBound:Z

    const-string v1, "Executor"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 379
    const-string v0, "Service unbound"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :catch_0
    iput-boolean v2, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->isServiceBound:Z

    .line 385
    :cond_0
    iput-boolean v2, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->isServiceBinding:Z

    .line 387
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->context:Landroid/content/Context;

    const-class v3, Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 388
    iget-object v2, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    move-result v0

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Service stop result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 391
    iput-object v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->serviceMessenger:Landroid/os/Messenger;

    .line 392
    iget-object v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->serviceConnectedLatch:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_1

    .line 393
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->serviceConnectedLatch:Ljava/util/concurrent/CountDownLatch;

    :cond_1
    return-void
.end method

.method private writeToProcess(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 443
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 444
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 445
    const-string v2, "id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string p1, "input"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 449
    :try_start_0
    iget-object p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->serviceMessenger:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 450
    const-string p1, "Written to process"

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 452
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Write error: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 237
    const-string v0, "loadLibrary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 238
    const-string p1, "This feature is no longer supported. Loading native libraries directly from JavaScript is no longer allowed due to security reasons."

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return v1

    .line 250
    :cond_0
    const-string v0, "stopService"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    invoke-direct {p0}, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->stopServiceNow()V

    .line 252
    const-string p1, "Service stopped"

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    return v1

    .line 256
    :cond_1
    const-string v0, "moveToBackground"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->context:Landroid/content/Context;

    const-class v0, Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 258
    const-string p2, "com.foxdebug.acode.MOVE_TO_BACKGROUND"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    iget-object p2, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 260
    const-string p1, "Service moved to background mode"

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    return v1

    .line 264
    :cond_2
    const-string v0, "moveToForeground"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->context:Landroid/content/Context;

    const-class v0, Lcom/foxdebug/acode/rk/exec/terminal/TerminalService;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    const-string p2, "com.foxdebug.acode.MOVE_TO_FOREGROUND"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    iget-object p2, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 268
    const-string p1, "Service moved to foreground mode"

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    return v1

    .line 272
    :cond_3
    const-string v0, "spawn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 274
    :try_start_0
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p1

    .line 275
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    move v0, v2

    .line 276
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 277
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :cond_4
    new-instance p1, Ljava/net/ServerSocket;

    invoke-direct {p1, v2}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :try_start_1
    invoke-virtual {p1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    :try_start_2
    invoke-virtual {p1}, Ljava/net/ServerSocket;->close()V

    .line 285
    new-instance p1, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer;

    invoke-direct {p1, v0, p2}, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer;-><init>(I[Ljava/lang/String;)V

    .line 286
    invoke-virtual {p1}, Lcom/foxdebug/acode/rk/exec/terminal/ProcessServer;->startAndAwait()V

    .line 288
    invoke-virtual {p3, v0}, Lorg/apache/cordova/CallbackContext;->success(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p2

    .line 281
    :try_start_3
    invoke-virtual {p1}, Ljava/net/ServerSocket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 290
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 291
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to spawn process: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_2
    return v1

    .line 298
    :cond_5
    const-string v0, "listAllProcesses"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 300
    :try_start_5
    invoke-static {}, Lcom/foxdebug/acode/rk/exec/terminal/ProcessUtils;->getAllProcesses()Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONArray;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 302
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to list all processes: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_3
    return v1

    .line 307
    :cond_6
    const-string v0, "killProcess"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 309
    :try_start_6
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    .line 310
    invoke-static {p1}, Lcom/foxdebug/acode/rk/exec/terminal/ProcessUtils;->killProcess(I)V

    .line 311
    const-string p1, "Process terminated"

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 313
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to kill process: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_4
    return v1

    .line 318
    :cond_7
    const-string v0, "setProotDebug"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 319
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result p1

    .line 320
    sput-boolean p1, Lcom/foxdebug/acode/rk/exec/terminal/ProcessManager;->prootDebug:Z

    if-eqz p1, :cond_8

    .line 321
    const-string p1, "enabled"

    goto :goto_5

    :cond_8
    const-string p1, "disabled"

    :goto_5
    const-string p2, "PRoot debug "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    return v1

    .line 325
    :cond_9
    const-string v0, "listProcesses"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 326
    iget-boolean v3, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->isServiceBound:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->serviceMessenger:Landroid/os/Messenger;

    if-nez v3, :cond_b

    .line 327
    :cond_a
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONArray;)V

    return v1

    .line 333
    :cond_b
    invoke-direct {p0, p3}, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->ensureServiceBound(Lorg/apache/cordova/CallbackContext;)Z

    move-result v3

    if-nez v3, :cond_c

    return v2

    .line 338
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_6

    :sswitch_0
    const-string v0, "isRunning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_6

    :cond_d
    const/4 v4, 0x5

    goto :goto_6

    :sswitch_1
    const-string v0, "write"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_6

    :cond_e
    const/4 v4, 0x4

    goto :goto_6

    :sswitch_2
    const-string v0, "start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_6

    :cond_f
    const/4 v4, 0x3

    goto :goto_6

    :sswitch_3
    const-string v0, "stop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_6

    :cond_10
    const/4 v4, 0x2

    goto :goto_6

    :sswitch_4
    const-string v0, "exec"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_6

    :cond_11
    move v4, v1

    goto :goto_6

    :sswitch_5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_6

    :cond_12
    move v4, v2

    :goto_6
    packed-switch v4, :pswitch_data_0

    .line 370
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown action: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return v2

    .line 360
    :pswitch_0
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 361
    iget-object p2, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->callbackContextMap:Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    invoke-direct {p0, p1}, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->isProcessRunning(Ljava/lang/String;)V

    return v1

    .line 346
    :pswitch_1
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 347
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 348
    invoke-direct {p0, p1, p2, p3}, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->writeToProcess(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return v1

    .line 340
    :pswitch_2
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 341
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    iget-object v2, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->callbackContextMap:Ljava/util/Map;

    invoke-interface {v2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->startProcess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 351
    :pswitch_3
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 352
    invoke-direct {p0, p1, p3}, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->stopProcess(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return v1

    .line 355
    :pswitch_4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    .line 356
    iget-object v0, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->callbackContextMap:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 365
    :pswitch_5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    .line 366
    iget-object p2, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->callbackContextMap:Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    invoke-direct {p0, p1}, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->listProcesses(Ljava/lang/String;)V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6ea773a1 -> :sswitch_5
        0x2fb891 -> :sswitch_4
        0x360802 -> :sswitch_3
        0x68ac462 -> :sswitch_2
        0x6c257df -> :sswitch_1
        0x39e05d35 -> :sswitch_0
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

.method public initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
    .locals 0

    .line 75
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/CordovaPlugin;->initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .line 76
    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->context:Landroid/content/Context;

    .line 77
    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->activity:Landroid/app/Activity;

    .line 78
    invoke-direct {p0, p1}, Lcom/foxdebug/acode/rk/exec/terminal/Executor;->askNotificationPermission(Landroid/app/Activity;)V

    .line 81
    const-string p1, "Executor"

    const-string p2, "Plugin initialized - service will be started when needed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 513
    invoke-super {p0}, Lorg/apache/cordova/CordovaPlugin;->onDestroy()V

    return-void
.end method
