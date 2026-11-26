.class Lcom/foxdebug/sftp/Sftp$17;
.super Ljava/lang/Object;
.source "Sftp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/sftp/Sftp;->close(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/sftp/Sftp;

.field final synthetic val$callback:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lcom/foxdebug/sftp/Sftp;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1601
    iput-object p1, p0, Lcom/foxdebug/sftp/Sftp$17;->this$0:Lcom/foxdebug/sftp/Sftp;

    iput-object p2, p0, Lcom/foxdebug/sftp/Sftp$17;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1603
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$17;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v0}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetconnectionLock(Lcom/foxdebug/sftp/Sftp;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1604
    :try_start_0
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$17;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v1}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetssh(Lcom/foxdebug/sftp/Sftp;)Lcom/sshtools/client/SshClient;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$17;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v1}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetsftp(Lcom/foxdebug/sftp/Sftp;)Lcom/sshtools/client/sftp/SftpClient;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1609
    :cond_0
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$17;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 1610
    monitor-exit v0

    return-void

    .line 1605
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$17;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v1}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$mcloseConnectionQuietly(Lcom/foxdebug/sftp/Sftp;)V

    .line 1606
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$17;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 1607
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 1610
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
