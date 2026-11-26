.class Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelFailureMessage;
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
    name = "ChannelFailureMessage"
.end annotation


# instance fields
.field description:Ljava/lang/String;

.field reasoncode:I

.field remoteid:I

.field final synthetic this$0:Lcom/sshtools/synergy/ssh/ConnectionProtocol;


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/ssh/ConnectionProtocol;IILjava/lang/String;)V
    .locals 0

    .line 1064
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelFailureMessage;->this$0:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1065
    iput p2, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelFailureMessage;->remoteid:I

    .line 1066
    iput p3, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelFailureMessage;->reasoncode:I

    .line 1067
    iput-object p4, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelFailureMessage;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public messageSent(Ljava/lang/Long;)V
    .locals 2

    .line 1082
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1083
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelFailureMessage;->description:Ljava/lang/String;

    iget v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelFailureMessage;->reasoncode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelFailureMessage;->remoteid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Sent SSH_MSG_CHANNEL_OPEN_FAILURE {} {} remote={}"

    invoke-static {v0, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public writeMessageIntoBuffer(Ljava/nio/ByteBuffer;)Z
    .locals 1

    const/16 v0, 0x5c

    .line 1071
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1072
    iget v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelFailureMessage;->remoteid:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1073
    iget v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelFailureMessage;->reasoncode:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1074
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelFailureMessage;->description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1075
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelFailureMessage;->description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 1076
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    return p1
.end method
