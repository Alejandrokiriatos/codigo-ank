.class Lcom/sshtools/client/components/DiffieHellmanGroupExchange$2;
.super Ljava/lang/Object;
.source "DiffieHellmanGroupExchange.java"

# interfaces
.implements Lcom/sshtools/common/sshd/SshMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/client/components/DiffieHellmanGroupExchange;->exchangeGroup(Lcom/sshtools/common/util/ByteArrayReader;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/client/components/DiffieHellmanGroupExchange;

.field final synthetic val$eBytes:[B


# direct methods
.method constructor <init>(Lcom/sshtools/client/components/DiffieHellmanGroupExchange;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 290
    iput-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange$2;->this$0:Lcom/sshtools/client/components/DiffieHellmanGroupExchange;

    iput-object p2, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange$2;->val$eBytes:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageSent(Ljava/lang/Long;)V
    .locals 1

    .line 301
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 302
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Sent SSH_MSG_KEXDH_INIT"

    invoke-static {v0, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public writeMessageIntoBuffer(Ljava/nio/ByteBuffer;)Z
    .locals 1

    const/16 v0, 0x20

    .line 293
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 294
    iget-object v0, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange$2;->val$eBytes:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 295
    iget-object v0, p0, Lcom/sshtools/client/components/DiffieHellmanGroupExchange$2;->val$eBytes:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    return p1
.end method
