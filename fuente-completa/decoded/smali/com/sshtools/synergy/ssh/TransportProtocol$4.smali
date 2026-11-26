.class Lcom/sshtools/synergy/ssh/TransportProtocol$4;
.super Ljava/lang/Object;
.source "TransportProtocol.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/ssh/TransportProtocol;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1987
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$4;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    iput-object p2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$4;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1991
    invoke-static {}, Lcom/sshtools/common/events/EventServiceImplementation;->getInstance()Lcom/sshtools/common/events/EventService;

    move-result-object v0

    new-instance v1, Lcom/sshtools/common/events/Event;

    const v2, -0xffff02

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;IZ)V

    const-string v2, "REASON"

    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$4;->val$reason:Ljava/lang/String;

    .line 1997
    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v1

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$4;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    iget-object v2, v2, Lcom/sshtools/synergy/ssh/TransportProtocol;->con:Lcom/sshtools/synergy/ssh/Connection;

    .line 1998
    const-string v3, "CONNECTION"

    invoke-virtual {v1, v3, v2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v1

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$4;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    iget-object v2, v2, Lcom/sshtools/synergy/ssh/TransportProtocol;->disconnectStarted:Ljava/util/Date;

    .line 2001
    const-string v3, "OP_STARTED"

    invoke-virtual {v1, v3, v2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 2004
    const-string v3, "OP_FINISHED"

    invoke-virtual {v1, v3, v2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v1

    .line 1992
    invoke-interface {v0, v1}, Lcom/sshtools/common/events/EventService;->fireEvent(Lcom/sshtools/common/events/Event;)V

    return-void
.end method
