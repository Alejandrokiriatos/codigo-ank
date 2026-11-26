.class public abstract Lcom/sshtools/common/ssh/ExecutorOperationSupport;
.super Ljava/lang/Object;
.source "ExecutorOperationSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sshtools/common/ssh/ExecutorServiceProvider;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CALLBACKS:Ljava/lang/Integer;

.field public static final EVENTS:Ljava/lang/Integer;

.field public static final MESSAGES_INCOMING:Ljava/lang/Integer;

.field public static final MESSAGES_OUTGOING:Ljava/lang/Integer;


# instance fields
.field operationQueues:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sshtools/common/ssh/ExecutorOperationSupport<",
            "TT;>.OperationTask;>;"
        }
    .end annotation
.end field

.field queueName:Ljava/lang/String;

.field shutdown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-string v0, "ExecutorOperationSupport.in"

    invoke-static {v0}, Lcom/sshtools/common/ssh/ExecutorOperationQueues;->generateUniqueQueue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->MESSAGES_INCOMING:Ljava/lang/Integer;

    .line 36
    const-string v0, "ExecutorOperationSupport.out"

    invoke-static {v0}, Lcom/sshtools/common/ssh/ExecutorOperationQueues;->generateUniqueQueue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->MESSAGES_OUTGOING:Ljava/lang/Integer;

    .line 37
    const-string v0, "ExecutorOperationSupport.events"

    invoke-static {v0}, Lcom/sshtools/common/ssh/ExecutorOperationQueues;->generateUniqueQueue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->EVENTS:Ljava/lang/Integer;

    .line 38
    const-string v0, "ExecutorOperationSupport.callbacks"

    invoke-static {v0}, Lcom/sshtools/common/ssh/ExecutorOperationQueues;->generateUniqueQueue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->CALLBACKS:Ljava/lang/Integer;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->shutdown:Z

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->operationQueues:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    iput-object p1, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->queueName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addIncomingTask(Lcom/sshtools/common/ssh/ConnectionAwareTask;)V
    .locals 1

    .line 56
    sget-object v0, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->MESSAGES_INCOMING:Ljava/lang/Integer;

    invoke-virtual {p0, v0, p1}, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->addTask(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    return-void
.end method

.method public addOutgoingTask(Lcom/sshtools/common/ssh/ConnectionAwareTask;)V
    .locals 1

    .line 52
    sget-object v0, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->MESSAGES_OUTGOING:Ljava/lang/Integer;

    invoke-virtual {p0, v0, p1}, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->addTask(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    return-void
.end method

.method public addTask(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->operationQueues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->operationQueues:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;

    invoke-direct {v1, p0}, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;-><init>(Lcom/sshtools/common/ssh/ExecutorOperationSupport;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->operationQueues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;

    invoke-virtual {p1, p2}, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;->addTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public cleanupOperations(Lcom/sshtools/common/ssh/ConnectionAwareTask;)V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->operationQueues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;

    .line 68
    iget-boolean v2, v1, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;->running:Z

    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {v1}, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;->cleanupOperations()V

    goto :goto_0

    .line 72
    :cond_1
    sget-object v0, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->EVENTS:Ljava/lang/Integer;

    invoke-virtual {p0, v0, p1}, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->addTask(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    return-void
.end method

.method public abstract getContext()Lcom/sshtools/common/ssh/ExecutorServiceProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
