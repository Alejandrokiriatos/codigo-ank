.class Lcom/sshtools/synergy/ssh/TransportProtocol$5;
.super Lcom/sshtools/common/ssh/ConnectionAwareTask;
.source "TransportProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/synergy/ssh/TransportProtocol;->processMessage([BJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

.field final synthetic val$msg:[B

.field final synthetic val$msgId:I

.field final synthetic val$sequenceNo:J


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/ssh/TransportProtocol;Lcom/sshtools/common/ssh/SshConnection;I[BJ)V
    .locals 0

    .line 2095
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$5;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    iput p3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$5;->val$msgId:I

    iput-object p4, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$5;->val$msg:[B

    iput-wide p5, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$5;->val$sequenceNo:J

    invoke-direct {p0, p2}, Lcom/sshtools/common/ssh/ConnectionAwareTask;-><init>(Lcom/sshtools/common/ssh/SshConnection;)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .locals 5

    .line 2099
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2100
    const-string v0, "Processing active service message id {}"

    iget v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$5;->val$msgId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2104
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$5;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    iget-object v0, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->activeService:Lcom/sshtools/synergy/ssh/Service;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$5;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    iget-object v0, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->activeService:Lcom/sshtools/synergy/ssh/Service;

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$5;->val$msg:[B

    invoke-interface {v0, v1}, Lcom/sshtools/synergy/ssh/Service;->processMessage([B)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 2111
    :cond_1
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2112
    const-string v0, "Unimplemented Message id={}"

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$5;->val$msg:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2114
    :cond_2
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$5;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    new-instance v1, Lcom/sshtools/synergy/ssh/TransportProtocol$UnimplementedMessage;

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$5;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    iget-wide v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$5;->val$sequenceNo:J

    invoke-direct {v1, v2, v3, v4}, Lcom/sshtools/synergy/ssh/TransportProtocol$UnimplementedMessage;-><init>(Lcom/sshtools/synergy/ssh/TransportProtocol;J)V

    invoke-virtual {v0, v1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->postMessage(Lcom/sshtools/common/sshd/SshMessage;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2116
    :goto_0
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$5;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    const/4 v2, 0x2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->disconnect(ILjava/lang/String;)V

    :goto_1
    return-void
.end method
