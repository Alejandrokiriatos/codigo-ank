.class Lcom/sshtools/client/tasks/AsyncSessionTask$1;
.super Ljava/lang/Object;
.source "AsyncSessionTask.java"

# interfaces
.implements Lcom/sshtools/common/ssh/ChannelEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/client/tasks/AsyncSessionTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/client/tasks/AsyncSessionTask;


# direct methods
.method constructor <init>(Lcom/sshtools/client/tasks/AsyncSessionTask;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/sshtools/client/tasks/AsyncSessionTask$1;->this$0:Lcom/sshtools/client/tasks/AsyncSessionTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChannelClose(Lcom/sshtools/common/ssh/Channel;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/sshtools/client/tasks/AsyncSessionTask$1;->this$0:Lcom/sshtools/client/tasks/AsyncSessionTask;

    check-cast p1, Lcom/sshtools/common/ssh/SessionChannel;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/tasks/AsyncSessionTask;->onCloseSession(Lcom/sshtools/common/ssh/SessionChannel;)V

    return-void
.end method
