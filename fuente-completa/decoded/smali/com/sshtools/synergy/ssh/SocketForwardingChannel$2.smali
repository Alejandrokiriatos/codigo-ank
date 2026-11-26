.class Lcom/sshtools/synergy/ssh/SocketForwardingChannel$2;
.super Ljava/lang/Object;
.source "SocketForwardingChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->shutdownSocket()V
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

    .line 254
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$2;->this$0:Lcom/sshtools/synergy/ssh/SocketForwardingChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$2;->this$0:Lcom/sshtools/synergy/ssh/SocketForwardingChannel;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->cleanupSocket()V

    .line 259
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$2;->this$0:Lcom/sshtools/synergy/ssh/SocketForwardingChannel;

    iget-object v0, v0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->key:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$2;->this$0:Lcom/sshtools/synergy/ssh/SocketForwardingChannel;

    iget-object v0, v0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$2;->this$0:Lcom/sshtools/synergy/ssh/SocketForwardingChannel;

    const-string v1, "Cancelling selection key because its still valid"

    invoke-virtual {v0, v1}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->log(Ljava/lang/String;)V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$2;->this$0:Lcom/sshtools/synergy/ssh/SocketForwardingChannel;

    iget-object v0, v0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 264
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$2;->this$0:Lcom/sshtools/synergy/ssh/SocketForwardingChannel;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->key:Ljava/nio/channels/SelectionKey;

    :cond_1
    return-void
.end method
