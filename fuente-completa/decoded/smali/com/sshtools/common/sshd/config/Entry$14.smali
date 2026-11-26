.class Lcom/sshtools/common/sshd/config/Entry$14;
.super Ljava/lang/Object;
.source "Entry.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/sshd/config/Entry;->findLastValidEntry(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/sshd/config/Entry;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/sshtools/common/sshd/config/Entry;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 408
    iput-object p1, p0, Lcom/sshtools/common/sshd/config/Entry$14;->this$0:Lcom/sshtools/common/sshd/config/Entry;

    iput p2, p0, Lcom/sshtools/common/sshd/config/Entry$14;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 412
    iget v0, p0, Lcom/sshtools/common/sshd/config/Entry$14;->val$index:I

    .line 413
    iget-object v1, p0, Lcom/sshtools/common/sshd/config/Entry$14;->this$0:Lcom/sshtools/common/sshd/config/Entry;

    invoke-virtual {v1}, Lcom/sshtools/common/sshd/config/Entry;->getKeyEntriesOrderedMap()Lcom/sshtools/common/sshd/config/ListOrderedMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sshtools/common/sshd/config/ListOrderedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;

    :goto_0
    if-lez v0, :cond_1

    .line 415
    instance-of v2, v1, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;

    if-nez v2, :cond_1

    instance-of v2, v1, Lcom/sshtools/common/sshd/config/CommentEntry;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/sshtools/common/sshd/config/CommentEntry;

    invoke-virtual {v1}, Lcom/sshtools/common/sshd/config/CommentEntry;->isNotLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 419
    iget-object v1, p0, Lcom/sshtools/common/sshd/config/Entry$14;->this$0:Lcom/sshtools/common/sshd/config/Entry;

    invoke-virtual {v1}, Lcom/sshtools/common/sshd/config/Entry;->getKeyEntriesOrderedMap()Lcom/sshtools/common/sshd/config/ListOrderedMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sshtools/common/sshd/config/ListOrderedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;

    goto :goto_0

    .line 422
    :cond_1
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 408
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/Entry$14;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
