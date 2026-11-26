.class Lcom/sshtools/synergy/ssh/TransportProtocol$3;
.super Ljava/lang/Object;
.source "TransportProtocol.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/synergy/ssh/TransportProtocol;->onSocketClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/ssh/TransportProtocol;)V
    .locals 0

    .line 1588
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$3;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1590
    sget-object v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1591
    :try_start_0
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$3;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    new-instance v2, Lcom/sshtools/synergy/ssh/TransportProtocol$3$1;

    iget-object v3, p0, Lcom/sshtools/synergy/ssh/TransportProtocol$3;->this$0:Lcom/sshtools/synergy/ssh/TransportProtocol;

    iget-object v3, v3, Lcom/sshtools/synergy/ssh/TransportProtocol;->con:Lcom/sshtools/synergy/ssh/Connection;

    invoke-direct {v2, p0, v3}, Lcom/sshtools/synergy/ssh/TransportProtocol$3$1;-><init>(Lcom/sshtools/synergy/ssh/TransportProtocol$3;Lcom/sshtools/common/ssh/SshConnection;)V

    invoke-virtual {v1, v2}, Lcom/sshtools/synergy/ssh/TransportProtocol;->cleanupOperations(Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    .line 1617
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
