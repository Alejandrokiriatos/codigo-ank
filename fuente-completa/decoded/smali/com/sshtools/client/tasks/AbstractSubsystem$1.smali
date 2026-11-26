.class Lcom/sshtools/client/tasks/AbstractSubsystem$1;
.super Ljava/lang/Object;
.source "AbstractSubsystem.java"

# interfaces
.implements Lcom/sshtools/common/ssh/ChannelEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/client/tasks/AbstractSubsystem;-><init>(Lcom/sshtools/common/ssh/SshConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/client/tasks/AbstractSubsystem;


# direct methods
.method constructor <init>(Lcom/sshtools/client/tasks/AbstractSubsystem;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/sshtools/client/tasks/AbstractSubsystem$1;->this$0:Lcom/sshtools/client/tasks/AbstractSubsystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChannelClose(Lcom/sshtools/common/ssh/Channel;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/sshtools/client/tasks/AbstractSubsystem$1;->this$0:Lcom/sshtools/client/tasks/AbstractSubsystem;

    iget-object v0, v0, Lcom/sshtools/client/tasks/AbstractSubsystem;->in:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcom/sshtools/common/util/IOUtils;->closeStream(Ljava/io/InputStream;)Z

    .line 69
    iget-object v0, p0, Lcom/sshtools/client/tasks/AbstractSubsystem$1;->this$0:Lcom/sshtools/client/tasks/AbstractSubsystem;

    check-cast p1, Lcom/sshtools/client/SessionChannelNG;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/tasks/AbstractSubsystem;->onCloseSession(Lcom/sshtools/client/SessionChannelNG;)V

    return-void
.end method
