.class Lcom/foxdebug/sftp/Sftp$18;
.super Ljava/lang/Object;
.source "Sftp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/sftp/Sftp;->isConnected(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
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

    .line 1620
    iput-object p1, p0, Lcom/foxdebug/sftp/Sftp$18;->this$0:Lcom/foxdebug/sftp/Sftp;

    iput-object p2, p0, Lcom/foxdebug/sftp/Sftp$18;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1622
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$18;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v0}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetconnectionLock(Lcom/foxdebug/sftp/Sftp;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1623
    :try_start_0
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$18;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v1}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetssh(Lcom/foxdebug/sftp/Sftp;)Lcom/sshtools/client/SshClient;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$18;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v1}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetssh(Lcom/foxdebug/sftp/Sftp;)Lcom/sshtools/client/SshClient;

    move-result-object v1

    .line 1625
    invoke-virtual {v1}, Lcom/sshtools/client/SshClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$18;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v1}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetsftp(Lcom/foxdebug/sftp/Sftp;)Lcom/sshtools/client/sftp/SftpClient;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$18;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v1}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetsftp(Lcom/foxdebug/sftp/Sftp;)Lcom/sshtools/client/sftp/SftpClient;

    move-result-object v1

    .line 1627
    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpClient;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1629
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$18;->val$callback:Lorg/apache/cordova/CallbackContext;

    iget-object v2, p0, Lcom/foxdebug/sftp/Sftp$18;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v2}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetconnectionID(Lcom/foxdebug/sftp/Sftp;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    .line 1630
    monitor-exit v0

    return-void

    .line 1633
    :cond_0
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$18;->val$callback:Lorg/apache/cordova/CallbackContext;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/cordova/CallbackContext;->success(I)V

    .line 1634
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
