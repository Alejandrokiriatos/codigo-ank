.class Lcom/sshtools/synergy/ssh/TransportProtocol$3$1;
.super Lcom/sshtools/common/ssh/ConnectionAwareTask;
.source "TransportProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/synergy/ssh/TransportProtocol$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sshtools/synergy/ssh/TransportProtocol$3;


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/ssh/TransportProtocol$3;Lcom/sshtools/common/ssh/SshConnection;)V
    .locals 0

    .line 1591
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$3$1;->this$1:Lcom/sshtools/synergy/ssh/TransportProtocol$3;

    invoke-direct {p0, p2}, Lcom/sshtools/common/ssh/ConnectionAwareTask;-><init>(Lcom/sshtools/common/ssh/SshConnection;)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .locals 4

    .line 1595
    invoke-static {}, Lcom/sshtools/common/events/EventServiceImplementation;->getInstance()Lcom/sshtools/common/events/EventService;

    move-result-object v0

    new-instance v1, Lcom/sshtools/common/events/Event;

    const v2, -0xffff01

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;IZ)V

    const-string v2, "CONNECTION"

    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$3$1;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 1601
    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v1

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$3$1;->this$1:Lcom/sshtools/synergy/ssh/TransportProtocol$3;

    iget-object v2, v2, Lcom/sshtools/synergy/ssh/TransportProtocol$3;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    iget-object v2, v2, Lcom/sshtools/synergy/ssh/TransportProtocol;->disconnectStarted:Ljava/util/Date;

    .line 1604
    const-string v3, "OP_STARTED"

    invoke-virtual {v1, v3, v2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 1607
    const-string v3, "OP_FINISHED"

    invoke-virtual {v1, v3, v2}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v1

    .line 1596
    invoke-interface {v0, v1}, Lcom/sshtools/common/events/EventService;->fireEvent(Lcom/sshtools/common/events/Event;)V

    .line 1612
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$3$1;->this$1:Lcom/sshtools/synergy/ssh/TransportProtocol$3;

    iget-object v0, v0, Lcom/sshtools/synergy/ssh/TransportProtocol$3;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->disconnected()V

    .line 1613
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$3$1;->this$1:Lcom/sshtools/synergy/ssh/TransportProtocol$3;

    iget-object v0, v0, Lcom/sshtools/synergy/ssh/TransportProtocol$3;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->onDisconnected()V

    return-void
.end method
