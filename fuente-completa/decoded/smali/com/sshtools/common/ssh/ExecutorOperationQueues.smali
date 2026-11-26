.class public Lcom/sshtools/common/ssh/ExecutorOperationQueues;
.super Ljava/lang/Object;
.source "ExecutorOperationQueues.java"


# static fields
.field static nextQueueId:I

.field static queueNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sshtools/common/ssh/ExecutorOperationQueues;->queueNames:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateUniqueQueue(Ljava/lang/String;)I
    .locals 3

    .line 34
    sget-object v0, Lcom/sshtools/common/ssh/ExecutorOperationQueues;->queueNames:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    sget-object v0, Lcom/sshtools/common/ssh/ExecutorOperationQueues;->queueNames:Ljava/util/Map;

    sget v1, Lcom/sshtools/common/ssh/ExecutorOperationQueues;->nextQueueId:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/sshtools/common/ssh/ExecutorOperationQueues;->nextQueueId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/sshtools/common/ssh/ExecutorOperationQueues;->queueNames:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is already a queue named %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
