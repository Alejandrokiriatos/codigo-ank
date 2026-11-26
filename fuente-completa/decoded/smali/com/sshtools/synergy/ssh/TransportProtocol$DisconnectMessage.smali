.class Lcom/sshtools/synergy/ssh/TransportProtocol$DisconnectMessage;
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
    name = "DisconnectMessage"
.end annotation


# instance fields
.field closeProtocol:Z

.field description:Ljava/lang/String;

.field reason:I

.field final synthetic this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/ssh/TransportProtocol;ILjava/lang/String;Z)V
    .locals 0

    .line 2772
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$DisconnectMessage;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2773
    iput p2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$DisconnectMessage;->reason:I

    .line 2774
    iput-object p3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$DisconnectMessage;->description:Ljava/lang/String;

    .line 2775
    iput-boolean p4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$DisconnectMessage;->closeProtocol:Z

    return-void
.end method


# virtual methods
.method public messageSent(Ljava/lang/Long;)V
    .locals 3

    .line 2788
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2789
    iget p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$DisconnectMessage;->reason:I

    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$DisconnectMessage;->description:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sent SSH_MSG_DISCONNECT reason="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2791
    :cond_0
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$DisconnectMessage;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    iget-object p1, p1, Lcom/sshtools/synergy/ssh/TransportProtocol;->socketConnection:Lcom/sshtools/synergy/nio/SocketConnection;

    iget-boolean v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$DisconnectMessage;->closeProtocol:Z

    invoke-virtual {p1, v0}, Lcom/sshtools/synergy/nio/SocketConnection;->closeConnection(Z)V

    return-void
.end method

.method public writeMessageIntoBuffer(Ljava/nio/ByteBuffer;)Z
    .locals 2

    const/4 v0, 0x1

    .line 2779
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2780
    iget v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$DisconnectMessage;->reason:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2781
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$DisconnectMessage;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2782
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$DisconnectMessage;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    .line 2783
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return v0
.end method
