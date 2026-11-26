.class Lcom/sshtools/client/components/DiffieHellmanGroupExchange$1;
.super Ljava/lang/Object;
.source "DiffieHellmanGroupExchange.java"

# interfaces
.implements Lcom/sshtools/common/sshd/SshMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->init(Lcom/sshtools/synergy/ssh/SshTransport;Ljava/lang/String;Ljava/lang/String;[B[BZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/client/components/DiffieHellmanGroupExchange;

.field final synthetic val$transport:Lcom/sshtools/synergy/ssh/SshTransport;


# direct methods
.method constructor <init>(Lcom/sshtools/client/components/DiffieHellmanGroupExchange;Lcom/sshtools/synergy/ssh/SshTransport;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange$1;->this$0:Lcom/sshtools/client/components/DiffieHellmanGroupExchange;

    iput-object p2, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange$1;->val$transport:Lcom/sshtools/synergy/ssh/SshTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageSent(Ljava/lang/Long;)V
    .locals 1

    .line 162
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 163
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Sent SSH_MSG_KEY_DH_GEX_REQUEST"

    invoke-static {v0, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public writeMessageIntoBuffer(Ljava/nio/ByteBuffer;)Z
    .locals 7

    .line 147
    iget-object v0, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange$1;->this$0:Lcom/sshtools/client/components/DiffieHellmanGroupExchange;

    sget v1, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->maxSupportedSize:I

    iget-object v2, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange$1;->val$transport:Lcom/sshtools/synergy/ssh/SshTransport;

    invoke-interface {v2}, Lcom/sshtools/synergy/ssh/SshTransport;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v2

    check-cast v2, Lcom/sshtools/client/SshClientContext;

    invoke-virtual {v2}, Lcom/sshtools/client/SshClientContext;->getMinDHGroupExchangeKeySize()I

    move-result v2

    const/16 v3, 0x400

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const-string v2, "Minimum DH prime"

    invoke-static {v0, v2, v1}, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->-$$Nest$mmaybeLog(Lcom/sshtools/client/components/DiffieHellmanGroupExchange;Ljava/lang/String;I)I

    move-result v0

    .line 148
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange$1;->this$0:Lcom/sshtools/client/components/DiffieHellmanGroupExchange;

    sget v2, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->maxSupportedSize:I

    iget-object v3, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange$1;->val$transport:Lcom/sshtools/synergy/ssh/SshTransport;

    invoke-interface {v3}, Lcom/sshtools/synergy/ssh/SshTransport;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v3

    check-cast v3, Lcom/sshtools/client/SshClientContext;

    invoke-virtual {v3}, Lcom/sshtools/client/SshClientContext;->getPreferredDHGroupExchangeKeySize()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const-string v3, "Preferred DH prime"

    invoke-static {v1, v3, v2}, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->-$$Nest$mmaybeLog(Lcom/sshtools/client/components/DiffieHellmanGroupExchange;Ljava/lang/String;I)I

    move-result v1

    .line 149
    iget-object v2, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange$1;->this$0:Lcom/sshtools/client/components/DiffieHellmanGroupExchange;

    sget v3, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->maxSupportedSize:I

    iget-object v4, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange$1;->val$transport:Lcom/sshtools/synergy/ssh/SshTransport;

    invoke-interface {v4}, Lcom/sshtools/synergy/ssh/SshTransport;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v4

    check-cast v4, Lcom/sshtools/client/SshClientContext;

    invoke-virtual {v4}, Lcom/sshtools/client/SshClientContext;->getMaxDHGroupExchangeKeySize()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const-string v4, "Maximum DH prime"

    invoke-static {v2, v4, v3}, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->-$$Nest$mmaybeLog(Lcom/sshtools/client/components/DiffieHellmanGroupExchange;Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x22

    .line 151
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 152
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 153
    iget-object v3, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange$1;->this$0:Lcom/sshtools/client/components/DiffieHellmanGroupExchange;

    new-instance v4, Lcom/sshtools/common/util/UnsignedInteger32;

    int-to-long v5, v0

    invoke-direct {v4, v5, v6}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    iput-object v4, v3, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->min:Lcom/sshtools/common/util/UnsignedInteger32;

    .line 154
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 155
    iget-object v0, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange$1;->this$0:Lcom/sshtools/client/components/DiffieHellmanGroupExchange;

    new-instance v3, Lcom/sshtools/common/util/UnsignedInteger32;

    int-to-long v4, v1

    invoke-direct {v3, v4, v5}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    iput-object v3, v0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->n:Lcom/sshtools/common/util/UnsignedInteger32;

    .line 156
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 157
    iget-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange$1;->this$0:Lcom/sshtools/client/components/DiffieHellmanGroupExchange;

    new-instance v0, Lcom/sshtools/common/util/UnsignedInteger32;

    int-to-long v1, v2

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    iput-object v0, p1, Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->max:Lcom/sshtools/common/util/UnsignedInteger32;

    const/4 p1, 0x1

    return p1
.end method
