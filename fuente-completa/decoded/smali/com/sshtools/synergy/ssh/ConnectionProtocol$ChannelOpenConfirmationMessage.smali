.class Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelOpenConfirmationMessage;
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
    name = "ChannelOpenConfirmationMessage"
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

.field responsedata:[B

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

    .line 1031
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelOpenConfirmationMessage;->this$0:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1032
    iput-object p2, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelOpenConfirmationMessage;->channel:Lcom/sshtools/synergy/ssh/ChannelNG;

    .line 1033
    iput-object p3, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelOpenConfirmationMessage;->responsedata:[B

    return-void
.end method


# virtual methods
.method public messageSent(Ljava/lang/Long;)V
    .locals 3

    .line 1051
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1052
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelOpenConfirmationMessage;->channel:Lcom/sshtools/synergy/ssh/ChannelNG;

    iget p1, p1, Lcom/sshtools/synergy/ssh/ChannelNG;->channelid:I

    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelOpenConfirmationMessage;->channel:Lcom/sshtools/synergy/ssh/ChannelNG;

    iget v0, v0, Lcom/sshtools/synergy/ssh/ChannelNG;->remoteid:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sent SSH_MSG_CHANNEL_OPEN_CONFIRMATION channel="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " remote="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public writeMessageIntoBuffer(Ljava/nio/ByteBuffer;)Z
    .locals 1

    const/16 v0, 0x5b

    .line 1037
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1038
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelOpenConfirmationMessage;->channel:Lcom/sshtools/synergy/ssh/ChannelNG;

    iget v0, v0, Lcom/sshtools/synergy/ssh/ChannelNG;->remoteid:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1039
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelOpenConfirmationMessage;->channel:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ChannelNG;->getLocalId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1040
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelOpenConfirmationMessage;->channel:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ChannelNG;->getLocalWindow()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    invoke-static {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->encodeInt(Lcom/sshtools/common/util/UnsignedInteger32;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1041
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelOpenConfirmationMessage;->channel:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ChannelNG;->getLocalPacket()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1043
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelOpenConfirmationMessage;->responsedata:[B

    if-eqz v0, :cond_0

    .line 1044
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
