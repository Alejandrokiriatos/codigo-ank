.class Lcom/sshtools/synergy/ssh/TransportProtocol$6;
.super Ljava/lang/Object;
.source "TransportProtocol.java"

# interfaces
.implements Lcom/sshtools/common/sshd/SshMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/synergy/ssh/TransportProtocol;->sendNewKeys()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/ssh/TransportProtocol;)V
    .locals 0

    .line 2128
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$6;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageSent(Ljava/lang/Long;)V
    .locals 2

    .line 2136
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$6;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    iget-object p1, p1, Lcom/sshtools/synergy/ssh/TransportProtocol;->keyExchange:Lcom/sshtools/synergy/ssh/components/SshKeyExchange;

    monitor-enter p1

    .line 2137
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2138
    const-string v0, "Sent SSH_MSG_NEWKEYS"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2139
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$6;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    iget-object v0, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->keyExchange:Lcom/sshtools/synergy/ssh/components/SshKeyExchange;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sshtools/synergy/ssh/components/SshKeyExchange;->setSentNewKeys(Z)V

    .line 2140
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$6;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->onNewKeysSent()V

    .line 2141
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public writeMessageIntoBuffer(Ljava/nio/ByteBuffer;)Z
    .locals 1

    const/16 v0, 0x15

    .line 2130
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    return p1
.end method
