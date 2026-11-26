.class Lcom/foxdebug/sftp/Sftp$6;
.super Ljava/util/concurrent/FutureTask;
.source "Sftp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/sftp/Sftp;->startProfileConnection(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/sftp/Sftp;

.field final synthetic val$attempt:Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;

.field final synthetic val$requestID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/foxdebug/sftp/Sftp;Ljava/util/concurrent/Callable;Ljava/lang/String;Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
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

    .line 1110
    iput-object p1, p0, Lcom/foxdebug/sftp/Sftp$6;->this$0:Lcom/foxdebug/sftp/Sftp;

    iput-object p3, p0, Lcom/foxdebug/sftp/Sftp$6;->val$requestID:Ljava/lang/String;

    iput-object p4, p0, Lcom/foxdebug/sftp/Sftp$6;->val$attempt:Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 3

    .line 1113
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$6;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v0}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetconnectionAttempts(Lcom/foxdebug/sftp/Sftp;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$6;->val$requestID:Ljava/lang/String;

    iget-object v2, p0, Lcom/foxdebug/sftp/Sftp$6;->val$attempt:Lcom/foxdebug/sftp/Sftp$ConnectionAttempt;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
