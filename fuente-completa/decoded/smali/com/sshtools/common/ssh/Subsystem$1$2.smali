.class Lcom/sshtools/common/ssh/Subsystem$1$2;
.super Lcom/sshtools/common/ssh/ConnectionAwareTask;
.source "Subsystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/ssh/Subsystem$1;->onChannelEOF(Lcom/sshtools/common/ssh/Channel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sshtools/common/ssh/Subsystem$1;


# direct methods
.method constructor <init>(Lcom/sshtools/common/ssh/Subsystem$1;Lcom/sshtools/common/ssh/SshConnection;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/sshtools/common/ssh/Subsystem$1$2;->this$1:Lcom/sshtools/common/ssh/Subsystem$1;

    invoke-direct {p0, p2}, Lcom/sshtools/common/ssh/ConnectionAwareTask;-><init>(Lcom/sshtools/common/ssh/SshConnection;)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/sshtools/common/ssh/Subsystem$1$2;->this$1:Lcom/sshtools/common/ssh/Subsystem$1;

    iget-object v0, v0, Lcom/sshtools/common/ssh/Subsystem$1;->this$0:Lcom/sshtools/common/ssh/Subsystem;

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/Subsystem;->cleanup()V

    return-void
.end method
