.class Lcom/sshtools/common/scp/ScpCommand$1;
.super Lcom/sshtools/common/ssh/ConnectionAwareTask;
.source "ScpCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/scp/ScpCommand;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/scp/ScpCommand;


# direct methods
.method constructor <init>(Lcom/sshtools/common/scp/ScpCommand;Lcom/sshtools/common/ssh/SshConnection;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/sshtools/common/scp/ScpCommand$1;->this$0:Lcom/sshtools/common/scp/ScpCommand;

    invoke-direct {p0, p2}, Lcom/sshtools/common/ssh/ConnectionAwareTask;-><init>(Lcom/sshtools/common/ssh/SshConnection;)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/sshtools/common/scp/ScpCommand$1;->this$0:Lcom/sshtools/common/scp/ScpCommand;

    invoke-virtual {v0}, Lcom/sshtools/common/scp/ScpCommand;->run()V

    return-void
.end method
