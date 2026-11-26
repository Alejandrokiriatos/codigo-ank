.class Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$1;
.super Ljava/lang/Object;
.source "SocketListeningForwardingChannelFactoryImpl.java"

# interfaces
.implements Lcom/sshtools/common/ssh/RequestFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->finishAccept(Ljava/nio/channels/SelectionKey;Lcom/sshtools/synergy/nio/ListeningInterface;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;

.field final synthetic val$sc:Ljava/nio/channels/SocketChannel;


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;Ljava/nio/channels/SocketChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$1;->this$0:Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;

    iput-object p2, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$1;->val$sc:Ljava/nio/channels/SocketChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/sshtools/common/ssh/RequestFuture;)V
    .locals 1

    .line 144
    invoke-interface {p1}, Lcom/sshtools/common/ssh/RequestFuture;->isSuccess()Z

    move-result p1

    if-nez p1, :cond_1

    .line 145
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 146
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Channel could not be opened"

    invoke-static {v0, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$1;->val$sc:Ljava/nio/channels/SocketChannel;

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
