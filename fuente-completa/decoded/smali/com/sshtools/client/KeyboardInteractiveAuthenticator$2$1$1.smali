.class Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2$1$1;
.super Lcom/sshtools/synergy/ssh/ByteArrayMessage;
.source "KeyboardInteractiveAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2$1;->complete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2$1;


# direct methods
.method constructor <init>(Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2$1;[B)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2$1$1;->this$2:Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2$1;

    invoke-direct {p0, p2}, Lcom/sshtools/synergy/ssh/ByteArrayMessage;-><init>([B)V

    return-void
.end method


# virtual methods
.method public messageSent(Ljava/lang/Long;)V
    .locals 1

    .line 120
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 121
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "SSH_MSG_USERAUTH_INFO_RESPONSE sent"

    invoke-static {v0, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
