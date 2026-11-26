.class Lcom/sshtools/synergy/ssh/ChannelNG$ChannelRequest;
.super Ljava/lang/Object;
.source "ChannelNG.java"

# interfaces
.implements Lcom/sshtools/common/sshd/SshMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/synergy/ssh/ChannelNG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChannelRequest"
.end annotation


# instance fields
.field requestdata:[B

.field final synthetic this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

.field type:Ljava/lang/String;

.field wantreply:Z


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/ssh/ChannelNG;Ljava/lang/String;Z[B)V
    .locals 0

    .line 1107
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelRequest;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1108
    iput-object p2, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelRequest;->type:Ljava/lang/String;

    .line 1109
    iput-boolean p3, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelRequest;->wantreply:Z

    .line 1110
    iput-object p4, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelRequest;->requestdata:[B

    return-void
.end method


# virtual methods
.method public messageSent(Ljava/lang/Long;)V
    .locals 2

    .line 1136
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1137
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelRequest;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelRequest;->type:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelRequest;->wantreply:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "SSH_MSG_CHANNEL_REQUEST request=%s wantReply=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sshtools/synergy/ssh/ChannelNG;->logMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public writeMessageIntoBuffer(Ljava/nio/ByteBuffer;)Z
    .locals 4

    const/16 v0, 0x62

    const/4 v1, 0x1

    .line 1116
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1117
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelRequest;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    iget v0, v0, Lcom/sshtools/synergy/ssh/ChannelNG;->remoteid:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1118
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelRequest;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1119
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelRequest;->type:Ljava/lang/String;

    sget-object v2, Lcom/sshtools/synergy/ssh/TransportProtocol;->CHARSET_ENCODING:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1120
    iget-boolean v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelRequest;->wantreply:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1121
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelRequest;->requestdata:[B

    if-eqz v0, :cond_0

    .line 1122
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1125
    :catch_0
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelRequest;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    iget-object p1, p1, Lcom/sshtools/synergy/ssh/ChannelNG;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    sget-object v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->CHARSET_ENCODING:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not encode string using "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " charset"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->close(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return v1
.end method
