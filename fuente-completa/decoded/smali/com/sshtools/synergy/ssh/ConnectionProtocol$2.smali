.class Lcom/sshtools/synergy/ssh/ConnectionProtocol$2;
.super Lcom/sshtools/common/ssh/ConnectionAwareTask;
.source "ConnectionProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/synergy/ssh/ConnectionProtocol;->processChannelData([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

.field final synthetic val$bar:Lcom/sshtools/common/util/ByteArrayReader;

.field final synthetic val$channel:Lcom/sshtools/synergy/ssh/ChannelNG;

.field final synthetic val$count:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/ssh/ConnectionProtocol;Lcom/sshtools/common/ssh/SshConnection;Lcom/sshtools/synergy/ssh/ChannelNG;ILcom/sshtools/common/util/ByteArrayReader;I)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$2;->this$0:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    iput-object p3, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$2;->val$channel:Lcom/sshtools/synergy/ssh/ChannelNG;

    iput p4, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$2;->val$type:I

    iput-object p5, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$2;->val$bar:Lcom/sshtools/common/util/ByteArrayReader;

    iput p6, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$2;->val$count:I

    invoke-direct {p0, p2}, Lcom/sshtools/common/ssh/ConnectionAwareTask;-><init>(Lcom/sshtools/common/ssh/SshConnection;)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 504
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$2;->val$channel:Lcom/sshtools/synergy/ssh/ChannelNG;

    iget v1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$2;->val$type:I

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$2;->val$bar:Lcom/sshtools/common/util/ByteArrayReader;

    .line 505
    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayReader;->array()[B

    move-result-object v2

    iget-object v3, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$2;->val$bar:Lcom/sshtools/common/util/ByteArrayReader;

    invoke-virtual {v3}, Lcom/sshtools/common/util/ByteArrayReader;->getPosition()I

    move-result v3

    iget v4, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$2;->val$count:I

    invoke-static {v2, v3, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 504
    invoke-virtual {v0, v1, v2}, Lcom/sshtools/synergy/ssh/ChannelNG;->processExtendedData(ILjava/nio/ByteBuffer;)V

    return-void
.end method
