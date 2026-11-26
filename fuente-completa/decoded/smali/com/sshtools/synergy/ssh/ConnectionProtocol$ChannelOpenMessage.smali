.class Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelOpenMessage;
.super Ljava/lang/Object;
.source "ConnectionProtocol.java"

# interfaces
.implements Lcom/sshtools/common/sshd/SshMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/synergy/ssh/ConnectionProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChannelOpenMessage"
.end annotation


# instance fields
.field channel:Lcom/sshtools/synergy/ssh/ChannelNG;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/synergy/ssh/ChannelNG<",
            "TT;>;"
        }
    .end annotation
.end field

.field requestdata:[B

.field final synthetic this$0:Lcom/sshtools/synergy/ssh/ConnectionProtocol;


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/ssh/ConnectionProtocol;Lcom/sshtools/synergy/ssh/ChannelNG;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/ChannelNG<",
            "TT;>;[B)V"
        }
    .end annotation

    .line 998
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelOpenMessage;->this$0:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 999
    iput-object p2, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelOpenMessage;->channel:Lcom/sshtools/synergy/ssh/ChannelNG;

    .line 1000
    iput-object p3, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelOpenMessage;->requestdata:[B

    return-void
.end method


# virtual methods
.method public messageSent(Ljava/lang/Long;)V
    .locals 3

    .line 1019
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1020
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelOpenMessage;->channel:Lcom/sshtools/synergy/ssh/ChannelNG;

    .line 1021
    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/ChannelNG;->getLocalId()I

    move-result p1

    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelOpenMessage;->channel:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ChannelNG;->getChannelType()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sent SSH_MSG_CHANNEL_OPEN channel="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " channelType="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1020
    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public writeMessageIntoBuffer(Ljava/nio/ByteBuffer;)Z
    .locals 1

    const/16 v0, 0x5a

    .line 1004
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1005
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelOpenMessage;->channel:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ChannelNG;->getChannelType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1006
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelOpenMessage;->channel:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ChannelNG;->getChannelType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1007
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelOpenMessage;->channel:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ChannelNG;->getLocalId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1008
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelOpenMessage;->channel:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ChannelNG;->getLocalWindow()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    invoke-static {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->encodeInt(Lcom/sshtools/common/util/UnsignedInteger32;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1009
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelOpenMessage;->channel:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ChannelNG;->getLocalPacket()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1011
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelOpenMessage;->requestdata:[B

    if-eqz v0, :cond_0

    .line 1012
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
