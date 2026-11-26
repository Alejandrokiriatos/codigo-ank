.class Lcom/sshtools/common/sshd/config/Entry$8;
.super Ljava/lang/Object;
.source "Entry.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/sshd/config/Entry;->updateEntry(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/sshd/config/Entry;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sshd/config/Entry;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lcom/sshtools/common/sshd/config/Entry$8;->this$0:Lcom/sshtools/common/sshd/config/Entry;

    iput-object p2, p0, Lcom/sshtools/common/sshd/config/Entry$8;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/sshtools/common/sshd/config/Entry$8;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 175
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/Entry$8;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/Entry$8;->this$0:Lcom/sshtools/common/sshd/config/Entry;

    invoke-virtual {v0}, Lcom/sshtools/common/sshd/config/Entry;->getKeyEntriesOrderedMap()Lcom/sshtools/common/sshd/config/ListOrderedMap;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/common/sshd/config/Entry$8;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sshtools/common/sshd/config/ListOrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;

    if-eqz v0, :cond_1

    .line 184
    instance-of v1, v0, Lcom/sshtools/common/sshd/config/CommentEntry;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/sshtools/common/sshd/config/BlankEntry;

    if-nez v1, :cond_0

    .line 188
    check-cast v0, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;

    .line 189
    iget-object v1, p0, Lcom/sshtools/common/sshd/config/Entry$8;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;->setValue(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 185
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Entry is not a valid entry is Comment or Blank"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/sshtools/common/sshd/config/Entry$8;->val$key:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Entry with key `%s` not found."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
