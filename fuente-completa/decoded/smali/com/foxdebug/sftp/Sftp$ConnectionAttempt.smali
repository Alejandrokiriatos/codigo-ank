.class final Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;
.super Ljava/lang/Object;
.source "Sftp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/foxdebug/sftp/Sftp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConnectionAttempt"
.end annotation


# instance fields
.field private final callback:Lorg/apache/cordova/CallbackContext;

.field private final cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final completed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/foxdebug/sftp/Sftp;


# direct methods
.method static bridge synthetic -$$Nest$mcancel(Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;)V
    .locals 0

    invoke-direct {p0}, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->cancel()V

    return-void
.end method

.method static bridge synthetic -$$Nest$merror(Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->error(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$merror(Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->error(Lorg/json/JSONObject;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misCancelled(Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;)Z
    .locals 0

    invoke-direct {p0}, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->isCancelled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetFuture(Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;Ljava/util/concurrent/Future;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->setFuture(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msuccess(Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;)V
    .locals 0

    invoke-direct {p0}, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->success()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msuccess(Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->success(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/foxdebug/sftp/Sftp;Lorg/apache/cordova/CallbackContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 96
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 100
    iput-object p2, p0, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->callback:Lorg/apache/cordova/CallbackContext;

    return-void
.end method

.method synthetic constructor <init>(Lcom/foxdebug/sftp/Sftp;Lorg/apache/cordova/CallbackContext;Lcom/foxdebug/sftp/Sftp-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;-><init>(Lcom/foxdebug/sftp/Sftp;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method private cancel()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 114
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 116
    :cond_0
    invoke-static {}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$smconnectionCancelledError()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->error(Lorg/json/JSONObject;)V

    return-void
.end method

.method private error(Ljava/lang/String;)V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private error(Lorg/json/JSONObject;)V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method private isCancelled()Z
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private setFuture(Ljava/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->future:Ljava/util/concurrent/Future;

    .line 105
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method private success()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V

    :cond_0
    return-void
.end method

.method private success(Ljava/lang/String;)V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;->callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
