.class Lcom/sshtools/client/TransportProtocolClient$1;
.super Ljava/lang/Object;
.source "TransportProtocolClient.java"

# interfaces
.implements Lcom/sshtools/common/sshd/SshMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/client/TransportProtocolClient;->startService(Lcom/sshtools/synergy/ssh/Service;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field serviceNameBytes:[B

.field final synthetic this$0:Lcom/sshtools/client/TransportProtocolClient;

.field final synthetic val$service:Lcom/sshtools/synergy/ssh/Service;


# direct methods
.method constructor <init>(Lcom/sshtools/client/TransportProtocolClient;Lcom/sshtools/synergy/ssh/Service;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 221
    iput-object p1, p0, Lcom/sshtools/client/TransportProtocolClient$1;->this$0:Lcom/sshtools/client/TransportProtocolClient;

    iput-object p2, p0, Lcom/sshtools/client/TransportProtocolClient$1;->val$service:Lcom/sshtools/synergy/ssh/Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    invoke-interface {p2}, Lcom/sshtools/synergy/ssh/Service;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sshtools/synergy/ssh/TransportProtocol;->CHARSET_ENCODING:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/TransportProtocolClient$1;->serviceNameBytes:[B

    return-void
.end method


# virtual methods
.method public messageSent(Ljava/lang/Long;)V
    .locals 1

    .line 237
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 238
    iget-object p1, p0, Lcom/sshtools/client/TransportProtocolClient$1;->val$service:Lcom/sshtools/synergy/ssh/Service;

    invoke-interface {p1}, Lcom/sshtools/synergy/ssh/Service;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Sent SSH_MSG_SERVICE_REQUEST {}"

    invoke-static {v0, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public writeMessageIntoBuffer(Ljava/nio/ByteBuffer;)Z
    .locals 1

    const/4 v0, 0x5

    .line 228
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 229
    iget-object v0, p0, Lcom/sshtools/client/TransportProtocolClient$1;->serviceNameBytes:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 230
    iget-object v0, p0, Lcom/sshtools/client/TransportProtocolClient$1;->serviceNameBytes:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    return p1
.end method
