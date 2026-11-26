.class Lcom/sshtools/synergy/ssh/SshContext$1;
.super Ljava/lang/Object;
.source "SshContext.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


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

    .line 1315
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SshContext$1;->this$0:Lcom/sshtools/synergy/ssh/SshContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 1317
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    const/4 v0, 0x1

    .line 1318
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object p1
.end method
