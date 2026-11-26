.class Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$2;
.super Ljava/lang/Object;
.source "Entry.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;->findEntryToEdit(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 617
    iput-object p1, p0, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$2;->this$0:Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;

    iput-object p2, p0, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$2;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 621
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$2;->this$0:Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;

    invoke-virtual {v0}, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;->getManagedInstance()Lcom/sshtools/common/sshd/config/Entry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/sshd/config/Entry;->getKeyEntriesOrderedMap()Lcom/sshtools/common/sshd/config/ListOrderedMap;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$2;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sshtools/common/sshd/config/ListOrderedMap;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 626
    iget-object v1, p0, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$2;->this$0:Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;

    iput v0, v1, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;->pointer:I

    .line 627
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$2;->this$0:Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder;

    return-object v0

    .line 623
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/sshtools/common/sshd/config/Entry$AbstractEntryBuilder$2;->val$key:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Entry with key `%s` not found."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
