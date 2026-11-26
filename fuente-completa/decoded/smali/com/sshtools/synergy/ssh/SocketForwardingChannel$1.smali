.class Lcom/sshtools/synergy/ssh/SocketForwardingChannel$1;
.super Ljava/lang/Object;
.source "SocketForwardingChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->changeInterestedOps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/synergy/ssh/SocketForwardingChannel;


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/ssh/SocketForwardingChannel;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$1;->this$0:Lcom/sshtools/synergy/ssh/SocketForwardingChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 156
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$1;->this$0:Lcom/sshtools/synergy/ssh/SocketForwardingChannel;

    iget-object v0, v0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 158
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$1;->this$0:Lcom/sshtools/synergy/ssh/SocketForwardingChannel;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->wantsWrite()Z

    move-result v0

    .line 159
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$1;->this$0:Lcom/sshtools/synergy/ssh/SocketForwardingChannel;

    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->wantsRead()Z

    move-result v1

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_1

    or-int/lit8 v2, v2, 0x1

    .line 166
    :cond_1
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 167
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$1;->this$0:Lcom/sshtools/synergy/ssh/SocketForwardingChannel;

    .line 168
    invoke-virtual {v3}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$1;->this$0:Lcom/sshtools/synergy/ssh/SocketForwardingChannel;

    .line 169
    invoke-virtual {v4}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->getLocalId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 170
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 171
    const-string v0, "READ/WRITE"

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    const-string v0, "WRITE"

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    const-string v0, "READ"

    goto :goto_1

    :cond_4
    const-string v0, "NONE"

    :goto_1
    filled-new-array {v3, v4, v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 167
    const-string v1, "{} channel={} ops={} has state {}"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    :cond_5
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$1;->this$0:Lcom/sshtools/synergy/ssh/SocketForwardingChannel;

    iget-object v0, v0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_6
    return-void
.end method
