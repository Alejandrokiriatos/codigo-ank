.class Lcom/sshtools/client/tasks/AbstractSubsystemTask$1;
.super Ljava/lang/Object;
.source "AbstractSubsystemTask.java"

# interfaces
.implements Lcom/sshtools/common/ssh/ChannelEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/client/tasks/AbstractSubsystemTask;->createSession()Lcom/sshtools/client/SessionChannelNG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/client/tasks/AbstractSubsystemTask;


# direct methods
.method constructor <init>(Lcom/sshtools/client/tasks/AbstractSubsystemTask;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/sshtools/client/tasks/AbstractSubsystemTask$1;->this$0:Lcom/sshtools/client/tasks/AbstractSubsystemTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChannelClose(Lcom/sshtools/common/ssh/Channel;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/sshtools/client/tasks/AbstractSubsystemTask$1;->this$0:Lcom/sshtools/client/tasks/AbstractSubsystemTask;

    iget-object v0, v0, Lcom/sshtools/client/tasks/AbstractSubsystemTask;->in:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcom/sshtools/common/util/IOUtils;->closeStream(Ljava/io/InputStream;)Z

    .line 86
    iget-object v0, p0, Lcom/sshtools/client/tasks/AbstractSubsystemTask$1;->this$0:Lcom/sshtools/client/tasks/AbstractSubsystemTask;

    check-cast p1, Lcom/sshtools/client/SessionChannelNG;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/tasks/AbstractSubsystemTask;->onCloseSession(Lcom/sshtools/client/SessionChannelNG;)V

    return-void
.end method
