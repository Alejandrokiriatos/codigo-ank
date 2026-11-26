.class Lcom/sshtools/synergy/ssh/Connection$1;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Lcom/sshtools/common/events/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/synergy/ssh/Connection;-><init>(Lcom/sshtools/synergy/ssh/SshContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/synergy/ssh/Connection;


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/ssh/Connection;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/Connection$1;->this$0:Lcom/sshtools/synergy/ssh/Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/sshtools/common/events/Event;)V
    .locals 1

    .line 76
    invoke-virtual {p1}, Lcom/sshtools/common/events/Event;->getId()I

    move-result p1

    const v0, -0xffff01

    if-ne p1, v0, :cond_0

    .line 77
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/Connection$1;->this$0:Lcom/sshtools/synergy/ssh/Connection;

    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/Connection;->getAuthenticatedFuture()Lcom/sshtools/synergy/ssh/AuthenticatedFuture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/AuthenticatedFuture;->isDone()Z

    move-result p1

    if-nez p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/Connection$1;->this$0:Lcom/sshtools/synergy/ssh/Connection;

    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/Connection;->getAuthenticatedFuture()Lcom/sshtools/synergy/ssh/AuthenticatedFuture;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sshtools/synergy/ssh/AuthenticatedFuture;->authenticated(Z)V

    :cond_0
    return-void
.end method
