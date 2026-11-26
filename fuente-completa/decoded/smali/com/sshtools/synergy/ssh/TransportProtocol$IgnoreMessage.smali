.class Lcom/sshtools/synergy/ssh/TransportProtocol$IgnoreMessage;
.super Ljava/lang/Object;
.source "TransportProtocol.java"

# interfaces
.implements Lcom/sshtools/common/sshd/SshMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/synergy/ssh/TransportProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IgnoreMessage"
.end annotation


# instance fields
.field rnd:Ljava/security/SecureRandom;

.field final synthetic this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/ssh/TransportProtocol;)V
    .locals 0

    .line 2719
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$IgnoreMessage;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2721
    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    iput-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$IgnoreMessage;->rnd:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public messageSent(Ljava/lang/Long;)V
    .locals 1

    .line 2740
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2741
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$IgnoreMessage;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    iget-object p1, p1, Lcom/sshtools/synergy/ssh/TransportProtocol;->activeService:Lcom/sshtools/synergy/ssh/Service;

    invoke-interface {p1}, Lcom/sshtools/synergy/ssh/Service;->getIdleLog()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Sent SSH_MSG_IGNORE {}"

    invoke-static {v0, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public writeMessageIntoBuffer(Ljava/nio/ByteBuffer;)Z
    .locals 7

    .line 2725
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$IgnoreMessage;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SshContext;->getKeepAliveDataMaxLength()I

    move-result v0

    const/16 v1, 0x400

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x2

    .line 2727
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2728
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const/4 v4, 0x1

    add-int/2addr v0, v4

    int-to-double v5, v0

    mul-double/2addr v2, v5

    double-to-int v0, v2

    .line 2729
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$IgnoreMessage;->rnd:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 2730
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    .line 2731
    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return v4
.end method
