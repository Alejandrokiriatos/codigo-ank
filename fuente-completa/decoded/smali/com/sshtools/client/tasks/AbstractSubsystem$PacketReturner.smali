.class Lcom/sshtools/client/tasks/AbstractSubsystem$PacketReturner;
.super Ljava/lang/Object;
.source "AbstractSubsystem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/tasks/AbstractSubsystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PacketReturner"
.end annotation


# instance fields
.field msg:Lcom/sshtools/common/ssh/Packet;

.field final synthetic this$0:Lcom/sshtools/client/tasks/AbstractSubsystem;


# direct methods
.method constructor <init>(Lcom/sshtools/client/tasks/AbstractSubsystem;Lcom/sshtools/common/ssh/Packet;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/sshtools/client/tasks/AbstractSubsystem$PacketReturner;->this$0:Lcom/sshtools/client/tasks/AbstractSubsystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p2, p0, Lcom/sshtools/client/tasks/AbstractSubsystem$PacketReturner;->msg:Lcom/sshtools/common/ssh/Packet;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 160
    invoke-static {}, Lcom/sshtools/synergy/ssh/PacketPool;->getInstance()Lcom/sshtools/synergy/ssh/PacketPool;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/client/tasks/AbstractSubsystem$PacketReturner;->msg:Lcom/sshtools/common/ssh/Packet;

    invoke-virtual {v0, v1}, Lcom/sshtools/synergy/ssh/PacketPool;->putPacket(Lcom/sshtools/common/ssh/Packet;)V

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/sshtools/client/tasks/AbstractSubsystem$PacketReturner;->msg:Lcom/sshtools/common/ssh/Packet;

    return-void
.end method
