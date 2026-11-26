.class Lcom/sshtools/synergy/ssh/SocketForwardingChannel$4;
.super Lcom/sshtools/common/ssh/ConnectionAwareTask;
.source "SocketForwardingChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->processReadEvent()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/synergy/ssh/SocketForwardingChannel;


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/ssh/SocketForwardingChannel;Lcom/sshtools/common/ssh/SshConnection;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$4;->this$0:Lcom/sshtools/synergy/ssh/SocketForwardingChannel;

    invoke-direct {p0, p2}, Lcom/sshtools/common/ssh/ConnectionAwareTask;-><init>(Lcom/sshtools/common/ssh/SshConnection;)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$4;->this$0:Lcom/sshtools/synergy/ssh/SocketForwardingChannel;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->sendEOF()V

    .line 385
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$4;->this$0:Lcom/sshtools/synergy/ssh/SocketForwardingChannel;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->evaluateClosure()V

    return-void
.end method
