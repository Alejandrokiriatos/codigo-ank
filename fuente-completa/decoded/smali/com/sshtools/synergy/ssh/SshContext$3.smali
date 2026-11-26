.class Lcom/sshtools/synergy/ssh/SshContext$3;
.super Ljava/lang/Thread;
.source "SshContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/synergy/ssh/SshContext;->getExecutorService()Ljava/util/concurrent/ExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/synergy/ssh/SshContext;


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/ssh/SshContext;)V
    .locals 0

    .line 1329
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SshContext$3;->this$0:Lcom/sshtools/synergy/ssh/SshContext;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1331
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SshContext$3;->this$0:Lcom/sshtools/synergy/ssh/SshContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SshContext;->shutdown()V

    return-void
.end method
