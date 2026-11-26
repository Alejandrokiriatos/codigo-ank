.class public Lcom/sshtools/client/AuthenticationMessage;
.super Ljava/lang/Object;
.source "AuthenticationMessage.java"

# interfaces
.implements Lcom/sshtools/common/sshd/SshMessage;


# instance fields
.field methodname:[B

.field servicename:[B

.field username:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/sshtools/synergy/util/EncodingUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/AuthenticationMessage;->username:[B

    .line 39
    invoke-static {p2}, Lcom/sshtools/synergy/util/EncodingUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/AuthenticationMessage;->servicename:[B

    .line 40
    invoke-static {p3}, Lcom/sshtools/synergy/util/EncodingUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/AuthenticationMessage;->methodname:[B

    return-void
.end method


# virtual methods
.method public messageSent(Ljava/lang/Long;)V
    .locals 3

    .line 60
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/sshtools/client/AuthenticationMessage;->methodname:[B

    .line 62
    invoke-static {p1}, Lcom/sshtools/synergy/util/EncodingUtils;->getUTF8String([B)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sshtools/client/AuthenticationMessage;->username:[B

    .line 63
    invoke-static {v0}, Lcom/sshtools/synergy/util/EncodingUtils;->getUTF8String([B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SSH_MSG_USERAUTH_REQUEST sent method="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " username="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 61
    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public writeMessageIntoBuffer(Ljava/nio/ByteBuffer;)Z
    .locals 1

    const/16 v0, 0x32

    .line 46
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 47
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationMessage;->username:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 48
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationMessage;->username:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 49
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationMessage;->servicename:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 50
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationMessage;->servicename:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 51
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationMessage;->methodname:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 52
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationMessage;->methodname:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    return p1
.end method
