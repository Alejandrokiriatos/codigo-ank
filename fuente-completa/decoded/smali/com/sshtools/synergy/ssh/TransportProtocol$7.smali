.class Lcom/sshtools/synergy/ssh/TransportProtocol$7;
.super Ljava/lang/Object;
.source "TransportProtocol.java"

# interfaces
.implements Lcom/sshtools/common/sshd/SshMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/synergy/ssh/TransportProtocol;->sendKeyExchangeInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/ssh/TransportProtocol;)V
    .locals 0

    .line 2514
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$7;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageSent(Ljava/lang/Long;)V
    .locals 1

    .line 2521
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2522
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Sent SSH_MSG_KEX_INIT"

    invoke-static {v0, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public writeMessageIntoBuffer(Ljava/nio/ByteBuffer;)Z
    .locals 1

    .line 2516
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$7;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    iget-object v0, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->localkex:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    return p1
.end method
