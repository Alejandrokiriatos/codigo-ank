.class Lcom/sshtools/synergy/ssh/TransportProtocol$UnimplementedMessage;
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
    name = "UnimplementedMessage"
.end annotation


# instance fields
.field sequenceNo:J

.field final synthetic this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/ssh/TransportProtocol;J)V
    .locals 0

    .line 2750
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$UnimplementedMessage;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2751
    iput-wide p2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$UnimplementedMessage;->sequenceNo:J

    return-void
.end method


# virtual methods
.method public messageSent(Ljava/lang/Long;)V
    .locals 1

    .line 2761
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2762
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Sent SSH_MSG_UNIMPLEMENTED"

    invoke-static {v0, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public writeMessageIntoBuffer(Ljava/nio/ByteBuffer;)Z
    .locals 2

    const/4 v0, 0x3

    .line 2755
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2756
    iget-wide v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$UnimplementedMessage;->sequenceNo:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    return p1
.end method
