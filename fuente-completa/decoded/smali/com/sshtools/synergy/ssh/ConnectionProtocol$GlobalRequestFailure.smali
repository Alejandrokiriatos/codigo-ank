.class Lcom/sshtools/synergy/ssh/ConnectionProtocol$GlobalRequestFailure;
.super Ljava/lang/Object;
.source "ConnectionProtocol.java"

# interfaces
.implements Lcom/sshtools/common/sshd/SshMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/synergy/ssh/ConnectionProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GlobalRequestFailure"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field final synthetic this$0:Lcom/sshtools/synergy/ssh/ConnectionProtocol;


# direct methods
.method public constructor <init>(Lcom/sshtools/synergy/ssh/ConnectionProtocol;Ljava/lang/String;)V
    .locals 0

    .line 954
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$GlobalRequestFailure;->this$0:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 955
    iput-object p2, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$GlobalRequestFailure;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public messageSent(Ljava/lang/Long;)V
    .locals 2

    .line 964
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 965
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$GlobalRequestFailure;->name:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sent SSH_MSG_GLOBAL_REQUEST_FAILURE request="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public writeMessageIntoBuffer(Ljava/nio/ByteBuffer;)Z
    .locals 1

    const/16 v0, 0x52

    .line 959
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    return p1
.end method
