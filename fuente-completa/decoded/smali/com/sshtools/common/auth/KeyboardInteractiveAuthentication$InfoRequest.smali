.class Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$InfoRequest;
.super Ljava/lang/Object;
.source "KeyboardInteractiveAuthentication.java"

# interfaces
.implements Lcom/sshtools/common/sshd/SshMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InfoRequest"
.end annotation


# instance fields
.field msg:[B

.field final synthetic this$0:Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;


# direct methods
.method constructor <init>(Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;[B)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$InfoRequest;->this$0:Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p2, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$InfoRequest;->msg:[B

    return-void
.end method


# virtual methods
.method public messageSent(Ljava/lang/Long;)V
    .locals 1

    .line 130
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 131
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Sent SSH_MSG_USERAUTH_INFO_REQUEST"

    invoke-static {v0, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public writeMessageIntoBuffer(Ljava/nio/ByteBuffer;)Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$InfoRequest;->msg:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    return p1
.end method
