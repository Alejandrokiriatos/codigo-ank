.class Lcom/sshtools/synergy/ssh/TransportProtocol$2;
.super Ljava/lang/Object;
.source "TransportProtocol.java"

# interfaces
.implements Lcom/sshtools/synergy/nio/SocketWriteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/synergy/ssh/TransportProtocol;->onSocketWrite(Ljava/nio/ByteBuffer;)Lcom/sshtools/synergy/nio/SocketWriteCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

.field final synthetic val$msg:Lcom/sshtools/common/sshd/SshMessage;

.field final synthetic val$sequenceNo:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/ssh/TransportProtocol;Lcom/sshtools/common/sshd/SshMessage;Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1221
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$2;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    iput-object p2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$2;->val$msg:Lcom/sshtools/common/sshd/SshMessage;

    iput-object p3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$2;->val$sequenceNo:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completedWrite()V
    .locals 3

    .line 1226
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$2;->val$msg:Lcom/sshtools/common/sshd/SshMessage;

    if-eqz v0, :cond_0

    .line 1227
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$2;->val$sequenceNo:Ljava/lang/Long;

    invoke-interface {v0, v1}, Lcom/sshtools/common/sshd/SshMessage;->messageSent(Ljava/lang/Long;)V
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 1230
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed during messageSent"

    invoke-static {v2, v0, v1}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1231
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$2;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    const/4 v1, 0x2

    const-string v2, "Internal error"

    invoke-virtual {v0, v1, v2}, Lcom/sshtools/synergy/ssh/TransportProtocol;->disconnect(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
