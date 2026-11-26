.class Lcom/sshtools/synergy/ssh/ConnectionProtocol$1;
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


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/ssh/ConnectionProtocol;Lcom/sshtools/common/ssh/SshConnection;Lcom/sshtools/synergy/ssh/ChannelNG;Lcom/sshtools/common/util/ByteArrayReader;I)V
    .locals 0

    .line 493
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$1;->this$0:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    iput-object p3, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$1;->val$channel:Lcom/sshtools/synergy/ssh/ChannelNG;

    iput-object p4, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$1;->val$bar:Lcom/sshtools/common/util/ByteArrayReader;

    iput p5, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$1;->val$count:I

    invoke-direct {p0, p2}, Lcom/sshtools/common/ssh/ConnectionAwareTask;-><init>(Lcom/sshtools/common/ssh/SshConnection;)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 495
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$1;->val$channel:Lcom/sshtools/synergy/ssh/ChannelNG;

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$1;->val$bar:Lcom/sshtools/common/util/ByteArrayReader;

    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->array()[B

    move-result-object v1

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$1;->val$bar:Lcom/sshtools/common/util/ByteArrayReader;

    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayReader;->getPosition()I

    move-result v2

    iget v3, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$1;->val$count:I

    invoke-static {v1, v2, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/synergy/ssh/ChannelNG;->processChannelData(Ljava/nio/ByteBuffer;)V

    return-void
.end method
