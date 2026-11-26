.class public Lcom/sshtools/client/tasks/AbstractOptimisedTask$FileTransferProgressWrapper;
.super Ljava/lang/Object;
.source "AbstractOptimisedTask.java"

# interfaces
.implements Lcom/sshtools/client/tasks/FileTransferProgress;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/tasks/AbstractOptimisedTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FileTransferProgressWrapper"
.end annotation


# instance fields
.field private volatile bytesSoFar:J

.field private final delegate:Lcom/sshtools/client/tasks/FileTransferProgress;

.field private final overallProgress:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/client/tasks/FileTransferProgress;",
            ">;"
        }
    .end annotation
.end field

.field private final total:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method protected constructor <init>(Lcom/sshtools/client/tasks/FileTransferProgress;Ljava/util/Optional;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/client/tasks/FileTransferProgress;",
            "Ljava/util/Optional<",
            "Lcom/sshtools/client/tasks/FileTransferProgress;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ")V"
        }
    .end annotation

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput-object p1, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$FileTransferProgressWrapper;->delegate:Lcom/sshtools/client/tasks/FileTransferProgress;

    .line 451
    iput-object p3, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$FileTransferProgressWrapper;->total:Ljava/util/concurrent/atomic/AtomicLong;

    .line 452
    iput-object p2, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$FileTransferProgressWrapper;->overallProgress:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public completed()V
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$FileTransferProgressWrapper;->delegate:Lcom/sshtools/client/tasks/FileTransferProgress;

    if-eqz v0, :cond_0

    .line 485
    invoke-interface {v0}, Lcom/sshtools/client/tasks/FileTransferProgress;->completed()V

    :cond_0
    return-void
.end method

.method public isCancelled()Z
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$FileTransferProgressWrapper;->delegate:Lcom/sshtools/client/tasks/FileTransferProgress;

    if-eqz v0, :cond_0

    .line 465
    invoke-interface {v0}, Lcom/sshtools/client/tasks/FileTransferProgress;->isCancelled()Z

    move-result v0

    return v0

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$FileTransferProgressWrapper;->overallProgress:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$FileTransferProgressWrapper;->overallProgress:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/tasks/FileTransferProgress;

    invoke-interface {v0}, Lcom/sshtools/client/tasks/FileTransferProgress;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public progressed(J)V
    .locals 3

    .line 471
    iget-wide v0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$FileTransferProgressWrapper;->bytesSoFar:J

    sub-long v0, p1, v0

    .line 472
    iget-object v2, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$FileTransferProgressWrapper;->total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v0

    .line 473
    iput-wide p1, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$FileTransferProgressWrapper;->bytesSoFar:J

    .line 474
    iget-object v2, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$FileTransferProgressWrapper;->delegate:Lcom/sshtools/client/tasks/FileTransferProgress;

    if-eqz v2, :cond_0

    .line 475
    invoke-interface {v2, p1, p2}, Lcom/sshtools/client/tasks/FileTransferProgress;->progressed(J)V

    .line 477
    :cond_0
    iget-object p1, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$FileTransferProgressWrapper;->overallProgress:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 478
    iget-object p1, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$FileTransferProgressWrapper;->overallProgress:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/client/tasks/FileTransferProgress;

    invoke-interface {p1, v0, v1}, Lcom/sshtools/client/tasks/FileTransferProgress;->progressed(J)V

    :cond_1
    return-void
.end method

.method public started(JLjava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 457
    iput-wide v0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$FileTransferProgressWrapper;->bytesSoFar:J

    .line 458
    iget-object v0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$FileTransferProgressWrapper;->delegate:Lcom/sshtools/client/tasks/FileTransferProgress;

    if-eqz v0, :cond_0

    .line 459
    invoke-interface {v0, p1, p2, p3}, Lcom/sshtools/client/tasks/FileTransferProgress;->started(JLjava/lang/String;)V

    :cond_0
    return-void
.end method
