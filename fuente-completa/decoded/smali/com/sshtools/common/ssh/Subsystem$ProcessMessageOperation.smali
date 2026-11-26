.class Lcom/sshtools/common/ssh/Subsystem$ProcessMessageOperation;
.super Lcom/sshtools/common/ssh/ConnectionAwareTask;
.source "Subsystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/ssh/Subsystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProcessMessageOperation"
.end annotation


# instance fields
.field msg:[B

.field final synthetic this$0:Lcom/sshtools/common/ssh/Subsystem;


# direct methods
.method constructor <init>(Lcom/sshtools/common/ssh/Subsystem;[B)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/sshtools/common/ssh/Subsystem$ProcessMessageOperation;->this$0:Lcom/sshtools/common/ssh/Subsystem;

    .line 169
    iget-object p1, p1, Lcom/sshtools/common/ssh/Subsystem;->session:Lcom/sshtools/common/ssh/SessionChannel;

    invoke-interface {p1}, Lcom/sshtools/common/ssh/SessionChannel;->getConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sshtools/common/ssh/ConnectionAwareTask;-><init>(Lcom/sshtools/common/ssh/SshConnection;)V

    .line 170
    iput-object p2, p0, Lcom/sshtools/common/ssh/Subsystem$ProcessMessageOperation;->msg:[B

    return-void
.end method


# virtual methods
.method protected doTask()V
    .locals 3

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/ssh/Subsystem$ProcessMessageOperation;->this$0:Lcom/sshtools/common/ssh/Subsystem;

    iget-object v1, p0, Lcom/sshtools/common/ssh/Subsystem$ProcessMessageOperation;->msg:[B

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/Subsystem;->onMessageReceived([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 178
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to process SFTP message"

    invoke-static {v2, v0, v1}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lcom/sshtools/common/ssh/Subsystem$ProcessMessageOperation;->this$0:Lcom/sshtools/common/ssh/Subsystem;

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/Subsystem;->cleanup()V

    return-void
.end method
