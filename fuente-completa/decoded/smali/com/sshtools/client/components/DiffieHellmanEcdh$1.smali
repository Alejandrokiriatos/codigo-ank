.class Lcom/sshtools/client/components/DiffieHellmanEcdh$1;
.super Ljava/lang/Object;
.source "DiffieHellmanEcdh.java"

# interfaces
.implements Lcom/sshtools/common/sshd/SshMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/client/components/DiffieHellmanEcdh;->init(Lcom/sshtools/synergy/ssh/SshTransport;Ljava/lang/String;Ljava/lang/String;[B[BLcom/sshtools/common/ssh/components/SshPrivateKey;Lcom/sshtools/common/ssh/components/SshPublicKey;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/client/components/DiffieHellmanEcdh;


# direct methods
.method constructor <init>(Lcom/sshtools/client/components/DiffieHellmanEcdh;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh$1;->this$0:Lcom/sshtools/client/components/DiffieHellmanEcdh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageSent(Ljava/lang/Long;)V
    .locals 1

    .line 157
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 158
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Sent SSH_MSG_KEX_ECDH_INIT"

    invoke-static {v0, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public writeMessageIntoBuffer(Ljava/nio/ByteBuffer;)Z
    .locals 1

    const/16 v0, 0x1e

    .line 149
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 150
    iget-object v0, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh$1;->this$0:Lcom/sshtools/client/components/DiffieHellmanEcdh;

    iget-object v0, v0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->Q_C:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 151
    iget-object v0, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh$1;->this$0:Lcom/sshtools/client/components/DiffieHellmanEcdh;

    iget-object v0, v0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->Q_C:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    return p1
.end method
