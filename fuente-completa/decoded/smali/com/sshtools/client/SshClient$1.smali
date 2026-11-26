.class Lcom/sshtools/client/SshClient$1;
.super Ljava/lang/Object;
.source "SshClient.java"

# interfaces
.implements Lcom/sshtools/common/events/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/client/SshClient;->doConnect(Ljava/lang/String;ILcom/sshtools/client/SshClientContext;JLjava/util/List;)Lcom/sshtools/synergy/ssh/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/client/SshClient;

.field final synthetic val$keys:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sshtools/client/SshClient;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 634
    iput-object p1, p0, Lcom/sshtools/client/SshClient$1;->this$0:Lcom/sshtools/client/SshClient;

    iput-object p2, p0, Lcom/sshtools/client/SshClient$1;->val$keys:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/sshtools/common/events/Event;)V
    .locals 2

    .line 637
    invoke-virtual {p1}, Lcom/sshtools/common/events/Event;->getId()I

    move-result v0

    const v1, -0xfffffb

    if-eq v0, v1, :cond_1

    const p1, -0xffff01

    if-eq v0, p1, :cond_0

    return-void

    .line 642
    :cond_0
    iget-object p1, p0, Lcom/sshtools/client/SshClient$1;->this$0:Lcom/sshtools/client/SshClient;

    invoke-virtual {p1}, Lcom/sshtools/client/SshClient;->disconnect()V

    return-void

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/sshtools/client/SshClient$1;->val$keys:Ljava/util/List;

    const-string v1, "REMOTE_PUBLICKEYS"

    invoke-virtual {p1, v1}, Lcom/sshtools/common/events/Event;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
