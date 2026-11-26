.class Lcom/sshtools/synergy/ssh/ChannelNG$1;
.super Ljava/lang/Object;
.source "ChannelNG.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/synergy/ssh/ChannelNG;->completeClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/synergy/ssh/ChannelNG;


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/ssh/ChannelNG;)V
    .locals 0

    .line 878
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ChannelNG$1;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 881
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG$1;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    monitor-enter v0

    .line 882
    :try_start_0
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG$1;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    iget-object v1, v1, Lcom/sshtools/synergy/ssh/ChannelNG;->completedClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    .line 884
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/ChannelNG$1;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    iget-object v3, v3, Lcom/sshtools/synergy/ssh/ChannelNG;->completedClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_3

    .line 885
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 886
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/ChannelNG$1;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    const-string v4, "Completing"

    const-string v5, "the close operation"

    invoke-virtual {v3, v4, v5}, Lcom/sshtools/synergy/ssh/ChannelNG;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sshtools/synergy/ssh/ChannelNG$1;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    iget-object v4, v4, Lcom/sshtools/synergy/ssh/ChannelNG;->eventListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sshtools/common/ssh/ChannelEventListener;

    .line 889
    iget-object v5, p0, Lcom/sshtools/synergy/ssh/ChannelNG$1;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-interface {v4, v5}, Lcom/sshtools/common/ssh/ChannelEventListener;->onChannelClose(Lcom/sshtools/common/ssh/Channel;)V

    goto :goto_0

    .line 891
    :cond_1
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/ChannelNG$1;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    iget-object v3, v3, Lcom/sshtools/synergy/ssh/ChannelNG;->eventListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 893
    :try_start_1
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/ChannelNG$1;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-static {v3}, Lcom/sshtools/synergy/ssh/ChannelNG;->-$$Nest$fgetchannelIn(Lcom/sshtools/synergy/ssh/ChannelNG;)Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    if-eqz v3, :cond_2

    .line 894
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/ChannelNG$1;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-static {v3}, Lcom/sshtools/synergy/ssh/ChannelNG;->-$$Nest$fgetchannelIn(Lcom/sshtools/synergy/ssh/ChannelNG;)Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 898
    :catch_0
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/ChannelNG$1;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-virtual {v3}, Lcom/sshtools/synergy/ssh/ChannelNG;->onChannelClosed()V

    .line 899
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/ChannelNG$1;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    iget-object v3, v3, Lcom/sshtools/synergy/ssh/ChannelNG;->completedClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 900
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/ChannelNG$1;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 902
    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_4

    .line 905
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG$1;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    iget-object v0, v0, Lcom/sshtools/synergy/ssh/ChannelNG;->closeFuture:Lcom/sshtools/common/ssh/ChannelRequestFuture;

    invoke-virtual {v0, v2}, Lcom/sshtools/common/ssh/ChannelRequestFuture;->done(Z)V

    .line 906
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG$1;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    iget-object v0, v0, Lcom/sshtools/synergy/ssh/ChannelNG;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG$1;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-virtual {v0, v1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->freeChannel(Lcom/sshtools/synergy/ssh/ChannelNG;)V

    .line 907
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG$1;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-static {v0}, Lcom/sshtools/synergy/ssh/ChannelNG;->-$$Nest$mfree(Lcom/sshtools/synergy/ssh/ChannelNG;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v1

    .line 902
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
