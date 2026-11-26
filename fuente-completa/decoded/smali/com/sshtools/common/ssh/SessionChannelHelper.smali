.class public Lcom/sshtools/common/ssh/SessionChannelHelper;
.super Ljava/lang/Object;
.source "SessionChannelHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendExitStatus(Lcom/sshtools/common/ssh/Channel;I)V
    .locals 2

    .line 31
    invoke-interface {p0}, Lcom/sshtools/common/ssh/Channel;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 33
    invoke-static {p1}, Lcom/sshtools/common/util/ByteArrayWriter;->encodeInt(I)[B

    move-result-object p1

    .line 32
    const-string v1, "exit-status"

    invoke-interface {p0, v1, v0, p1}, Lcom/sshtools/common/ssh/Channel;->sendChannelRequest(Ljava/lang/String;Z[B)V

    :cond_0
    return-void
.end method
