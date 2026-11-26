.class Lcom/sshtools/synergy/ssh/ConnectionProtocol$GlobalRequestMessage;
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
    name = "GlobalRequestMessage"
.end annotation


# instance fields
.field name:[B

.field request:Lcom/sshtools/common/ssh/GlobalRequest;

.field final synthetic this$0:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

.field wantReply:Z


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/ssh/ConnectionProtocol;Lcom/sshtools/common/ssh/GlobalRequest;Z)V
    .locals 1

    .line 826
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$GlobalRequestMessage;->this$0:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 828
    :try_start_0
    iput-object p2, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$GlobalRequestMessage;->request:Lcom/sshtools/common/ssh/GlobalRequest;

    .line 829
    invoke-virtual {p2}, Lcom/sshtools/common/ssh/GlobalRequest;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sshtools/synergy/ssh/TransportProtocol;->CHARSET_ENCODING:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$GlobalRequestMessage;->name:[B

    .line 830
    iput-boolean p3, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$GlobalRequestMessage;->wantReply:Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 832
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object p2, Lcom/sshtools/synergy/ssh/TransportProtocol;->CHARSET_ENCODING:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "System does not support "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public messageSent(Ljava/lang/Long;)V
    .locals 3

    .line 853
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 854
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$GlobalRequestMessage;->request:Lcom/sshtools/common/ssh/GlobalRequest;

    .line 855
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/GlobalRequest;->getName()Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$GlobalRequestMessage;->wantReply:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sent SSH_MSG_GLOBAL_REQUEST request="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " wantReply="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 854
    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public writeMessageIntoBuffer(Ljava/nio/ByteBuffer;)Z
    .locals 1

    const/16 v0, 0x50

    .line 838
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 839
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$GlobalRequestMessage;->name:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 840
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$GlobalRequestMessage;->name:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 841
    iget-boolean v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$GlobalRequestMessage;->wantReply:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 842
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$GlobalRequestMessage;->request:Lcom/sshtools/common/ssh/GlobalRequest;

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/GlobalRequest;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$GlobalRequestMessage;->request:Lcom/sshtools/common/ssh/GlobalRequest;

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/GlobalRequest;->getData()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
