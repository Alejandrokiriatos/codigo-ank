.class Lcom/sshtools/common/ssh/Subsystem$1;
.super Ljava/lang/Object;
.source "Subsystem.java"

# interfaces
.implements Lcom/sshtools/common/ssh/ChannelEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/ssh/Subsystem;->init(Lcom/sshtools/common/ssh/SessionChannel;Lcom/sshtools/common/ssh/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/ssh/Subsystem;

.field final synthetic val$session:Lcom/sshtools/common/ssh/SessionChannel;


# direct methods
.method constructor <init>(Lcom/sshtools/common/ssh/Subsystem;Lcom/sshtools/common/ssh/SessionChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/sshtools/common/ssh/Subsystem$1;->this$0:Lcom/sshtools/common/ssh/Subsystem;

    iput-object p2, p0, Lcom/sshtools/common/ssh/Subsystem$1;->val$session:Lcom/sshtools/common/ssh/SessionChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChannelClose(Lcom/sshtools/common/ssh/Channel;)V
    .locals 4

    .line 94
    invoke-interface {p1}, Lcom/sshtools/common/ssh/Channel;->isRemoteEOF()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/sshtools/common/ssh/Subsystem$1;->val$session:Lcom/sshtools/common/ssh/SessionChannel;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SessionChannel;->getConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object v0

    sget-object v1, Lcom/sshtools/common/ssh/Subsystem;->SUBSYSTEM_INCOMING:Ljava/lang/Integer;

    new-instance v2, Lcom/sshtools/common/ssh/Subsystem$1$1;

    iget-object v3, p0, Lcom/sshtools/common/ssh/Subsystem$1;->this$0:Lcom/sshtools/common/ssh/Subsystem;

    invoke-virtual {v3}, Lcom/sshtools/common/ssh/Subsystem;->getConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/sshtools/common/ssh/Subsystem$1$1;-><init>(Lcom/sshtools/common/ssh/Subsystem$1;Lcom/sshtools/common/ssh/SshConnection;)V

    invoke-interface {v0, v1, v2}, Lcom/sshtools/common/ssh/SshConnection;->addTask(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    .line 105
    :cond_0
    invoke-super {p0, p1}, Lcom/sshtools/common/ssh/ChannelEventListener;->onChannelClose(Lcom/sshtools/common/ssh/Channel;)V

    return-void
.end method

.method public onChannelEOF(Lcom/sshtools/common/ssh/Channel;)V
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/sshtools/common/ssh/Subsystem$1;->val$session:Lcom/sshtools/common/ssh/SessionChannel;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SessionChannel;->getConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object v0

    sget-object v1, Lcom/sshtools/common/ssh/Subsystem;->SUBSYSTEM_INCOMING:Ljava/lang/Integer;

    new-instance v2, Lcom/sshtools/common/ssh/Subsystem$1$2;

    iget-object v3, p0, Lcom/sshtools/common/ssh/Subsystem$1;->this$0:Lcom/sshtools/common/ssh/Subsystem;

    invoke-virtual {v3}, Lcom/sshtools/common/ssh/Subsystem;->getConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/sshtools/common/ssh/Subsystem$1$2;-><init>(Lcom/sshtools/common/ssh/Subsystem$1;Lcom/sshtools/common/ssh/SshConnection;)V

    invoke-interface {v0, v1, v2}, Lcom/sshtools/common/ssh/SshConnection;->addTask(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    .line 120
    invoke-super {p0, p1}, Lcom/sshtools/common/ssh/ChannelEventListener;->onChannelEOF(Lcom/sshtools/common/ssh/Channel;)V

    return-void
.end method
