.class Lcom/sshtools/common/ssh/Subsystem$2;
.super Lcom/sshtools/common/ssh/ConnectionAwareTask;
.source "Subsystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/ssh/Subsystem;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/ssh/Subsystem;

.field final synthetic val$packet:Lcom/sshtools/common/ssh/Packet;


# direct methods
.method constructor <init>(Lcom/sshtools/common/ssh/Subsystem;Lcom/sshtools/common/ssh/SshConnection;Lcom/sshtools/common/ssh/Packet;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/sshtools/common/ssh/Subsystem$2;->this$0:Lcom/sshtools/common/ssh/Subsystem;

    iput-object p3, p0, Lcom/sshtools/common/ssh/Subsystem$2;->val$packet:Lcom/sshtools/common/ssh/Packet;

    invoke-direct {p0, p2}, Lcom/sshtools/common/ssh/ConnectionAwareTask;-><init>(Lcom/sshtools/common/ssh/SshConnection;)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/sshtools/common/ssh/Subsystem$2;->this$0:Lcom/sshtools/common/ssh/Subsystem;

    iget-object v1, p0, Lcom/sshtools/common/ssh/Subsystem$2;->val$packet:Lcom/sshtools/common/ssh/Packet;

    invoke-static {v0, v1}, Lcom/sshtools/common/ssh/Subsystem;->-$$Nest$mdoSendMessage(Lcom/sshtools/common/ssh/Subsystem;Lcom/sshtools/common/ssh/Packet;)V

    return-void
.end method
