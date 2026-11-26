.class Lcom/sshtools/synergy/nio/SocketConnection$1;
.super Ljava/lang/Object;
.source "SocketConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/synergy/nio/SocketConnection;->flagWrite()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/synergy/nio/SocketConnection;


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/nio/SocketConnection;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/sshtools/synergy/nio/SocketConnection$1;->this$0:Lcom/sshtools/synergy/nio/SocketConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 448
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection$1;->this$0:Lcom/sshtools/synergy/nio/SocketConnection;

    iget-object v0, v0, Lcom/sshtools/synergy/nio/SocketConnection;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 450
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Flag selector as READ/WRITE"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection$1;->this$0:Lcom/sshtools/synergy/nio/SocketConnection;

    iget-object v0, v0, Lcom/sshtools/synergy/nio/SocketConnection;->key:Ljava/nio/channels/SelectionKey;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_1
    return-void
.end method
